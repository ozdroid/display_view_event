///接口
abstract class DisplayEvent {
  void onHiden();
  void onDisplay();
  void didPop();
  void didPopNext();
  void didPush();
  void didPushNext();
}
