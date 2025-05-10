import 'package:chrc/Banner/banner_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'banner_bloc.dart';

import 'banner_state.dart';

class BannerWidget extends StatefulWidget {
  @override
  _BannerWidgetState createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BannerBloc(
        pageCount: 2,
        onPageChanged: (index) {
          _pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        },
      ),
      child: BlocBuilder<BannerBloc, BannerState>(
        builder: (context, state) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                context.read<BannerBloc>().add(BannerChangePage(index));
              },
              children: [
                Image.asset('assets/images/ad1.png', fit: BoxFit.fitWidth),
                Image.asset('assets/images/ad2.png', fit: BoxFit.fitWidth),
              ],
            ),
          );
        },
      ),
    );
  }
}