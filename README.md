![Pub](https://img.shields.io/pub/v/notification_center.svg?style=popout)

A lightweight and intuitive observer pattern manager for Dart/Flutter in the style of the iOS Notification Center

## Installation
To use this plugin, add `dart_notification_center` as a dependency in your pubspec.yaml file.

Import the package using:
```dart
import 'package:notification_center/notification_center.dart';
```


## Usage

A simple example:

```dart
...

DartNotificationCenter.subscribe(
  channel: 'examples',
  observer: this,
  onNotification: (options) {
    print('Notified: ${options}');
  },
);

DartNotificationCenter.post(channel: 'examples', options: 'Congrats you did it!');

DartNotificationCenter.unsubscribe(channel: 'examples', observer: this);

...
```
