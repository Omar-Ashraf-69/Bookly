
import 'package:bookly/core/widgets/no_internet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';

class OfflineBuilderWidget extends StatelessWidget {
  const OfflineBuilderWidget({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return OfflineBuilder(
      connectivityBuilder: (context, connectivity, child) {
        final bool connected = !connectivity.contains(ConnectivityResult.none);
        return Stack(
          children: [child, if (!connected) const NoInternetWidget()],
        );
      },
      child: child,
      // child: Center(
      //   child: CircularProgressIndicator(color: Colors.amber),
      // ),
    );
  }
}
