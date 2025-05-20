import 'dart:async';

import 'package:chrc/Banner/banner_event.dart';
import 'package:chrc/Banner/banner_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BannerBloc extends Bloc<BannerEvent,BannerState> {
  Timer? _timer;
  final int pageCount;
  final void Function(int) onPageChanged;

  BannerBloc({required this.pageCount, required this.onPageChanged})
  : super(BannerState(0)) {
    on<BannerNextPage>(_onNextPage);
    on<BannerChangePage>(_onChangePage);
    _AutoSlide();
  }

  void _AutoSlide() {
    _timer?.cancel();
    _timer = Timer.periodic(Duration(seconds: 5),(_) {
      int nextPage = state.currentPage + 1;
      if (nextPage >= pageCount) nextPage = 0;
      onPageChanged(nextPage);
      add(BannerNextPage());

    });
  }
  void _onNextPage(BannerNextPage event, Emitter<BannerState> emit) {
    int next = state.currentPage + 1;
    if (next >= pageCount) next = 0;
    emit(BannerState(next));
  }

  void _onChangePage(BannerChangePage event, Emitter<BannerState> emit) {
    _timer?.cancel();
    _AutoSlide();
    emit(BannerState(event.index));
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }


}