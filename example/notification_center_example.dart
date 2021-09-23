import 'package:notification_center/notification_center.dart';

main() {
  DartNotificationCenter.registerChannel(channel: 'an_event');

  //this is our notification observer object
  int i = 1;

  //This is our channel name
  String channelName = 'an_event';

  DartNotificationCenter.subscribe(
    channel: channelName,
    observer: i,
    onNotification: (result) => print('received: $result'),
  );

  // Expected: received: null
  DartNotificationCenter.post(channel: channelName);

  // Expected: received: with options!!
  DartNotificationCenter.post(
    channel: channelName,
    options: 'with options!!',
  );

  DartNotificationCenter.unsubscribe(observer: i, channel: channelName);

  DartNotificationCenter.unregisterChannel(channel: channelName);
}
