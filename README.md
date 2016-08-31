![untitled-2](https://cloud.githubusercontent.com/assets/18044565/18118967/b993a0fe-6f75-11e6-86af-f6477979b18d.gif)

Please provide Local or Remote notification method in AppDelegate.m,


#### if the notification is Local 

```objective-c
- (void)application:(UIApplication *)application handleActionWithIdentifier:(NSString *)identifier forLocalNotification:(NSDictionary *)userInfo completionHandler:(void (^)())completionHandler {
    if ([identifier isEqualToString:NotificationActionOneIdent]) {
        NSLog(@"You choosed YES.");
        application.applicationIconBadgeNumber = 0;
    }
else if ([identifier isEqualToString:NotificationActionTwoIdent]) {
        NSLog(@"You choosed NO.");
    }
if (completionHandler) {
        completionHandler();
    }
}
```

---


if the notification is Local 

- (void)application:(UIApplication *)application handleActionWithIdentifier:(NSString *)identifier forLocalNotification:(NSDictionary *)userInfo completionHandler:(void (^)())completionHandler {
    if ([identifier isEqualToString:NotificationActionOneIdent]) {
        NSLog(@"You choosed YES.");
        application.applicationIconBadgeNumber = 0;
    }
else if ([identifier isEqualToString:NotificationActionTwoIdent]) {
        NSLog(@"You choosed NO.");
    }
if (completionHandler) {
        completionHandler();
    }
}

if the notification is Remote

- (void)application:(UIApplication *)application handleActionWithIdentifier:(NSString *)identifier forRemoteNotification:(NSDictionary *)userInfo completionHandler:(void (^)())completionHandler {
    if ([identifier isEqualToString:NotificationActionOneIdent]) {
        NSLog(@"You choosed YES.");
        application.applicationIconBadgeNumber = 0;
    }
else if ([identifier isEqualToString:NotificationActionTwoIdent]) {
        NSLog(@"You choosed NO.");
    }if (completionHandler) {
        completionHandler();
    }
}
