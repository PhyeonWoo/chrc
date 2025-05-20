abstract class BannerEvent {}

class BannerNextPage extends BannerEvent {} // 자동 슬라이드

class BannerChangePage extends BannerEvent {  // 수동 슬라이드
  final int index;
  BannerChangePage(this.index);
}