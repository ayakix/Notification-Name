## 概要
NSNotificationをpostしたりaddObserver/removeObserverする際、NSNotification.Nameに文字列を指定するとタイプミスをすると、正しく動作しなくなってしまいます。しかし、ビルドは通るため、気づくのに時間がかかってしまいます。そこで、NSNotification.Nameを拡張し、独自のnameを定義します。

### 1. NSNotification.Name拡張

独自のnameを定義します。

```swift
extension NSNotification.Name {
    static let sample = Notification.Name(rawValue: "sample")
//    static let hoge = Notification.Name(rawValue: "hoge")
//    static let fuga = Notification.Name(rawValue: "fuga")
}
```

### 2. 通知発行コード
```swift
NotificationCenter.default.post(name: .sample, object: nil)
```

### 3. 通知受信側コード
```swift
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
         object: nil)

        NotificationCenter.default.addObserver(self, selector: #selector(onSampleNotified(_:)), name: .sample, object: nil)
    }

    deinit {
        NotificationCenter.default.removeObserver(self, name: .sample, object: nil)
    }

    func onSampleNotified(_ notification: NSNotification) {
        print("Notification button pushed")
    }
}
```

## サンプル
[Notification-Name@github](https://github.com/ayakix/Notification-Name)に動作するプロジェクトがあります。
