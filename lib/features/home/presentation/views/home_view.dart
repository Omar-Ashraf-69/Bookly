
import 'package:bookly/core/widgets/no_internet_widget.dart';
import 'package:flutter_offline/flutter_offline.dart';

import 'widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // return HomeViewBody(); 
    return OfflineBuilder(
          connectivityBuilder: (context, connectivity, child) {
            final bool connected = !connectivity.contains(
              ConnectivityResult.none,
            );
            if (connected) {
              return HomeViewBody();
            } else {
              return NoInternetWidget();
            }
          },
          child: Center(child: CircularProgressIndicator(color: Colors.amber)),
        );
  }
}
