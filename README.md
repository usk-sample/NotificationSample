# NotificationSample

sample app for UserNotification framework

## Provisional Authorization

https://developer.apple.com/documentation/usernotifications/asking_permission_to_use_notifications

### Normal
```swift
let center = UNUserNotificationCenter.current()
center.requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
    
    if let error = error {
        // Handle the error here.
    }
    
    // Enable or disable features based on the authorization.
}
```
### Provisional
```swift
let center = UNUserNotificationCenter.current()
center.requestAuthorization(options: [.alert, .sound, .badge, .provisional]) { granted, error in
    
    if let error = error {
        // Handle the error here.
    }
    
    // Provisional authorization granted.
}
```
## LICENSE
[LICENSE](LICENSE)
