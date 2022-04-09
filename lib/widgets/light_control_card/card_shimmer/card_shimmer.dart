import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shimmer/shimmer.dart';

import '../utils.dart';

class CardShimmer extends HookWidget {
  const CardShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Theme.of(context).cardColor,
      highlightColor: Theme.of(context).primaryColorLight,
      child: Container(
        color: Colors.yellow,
        height: LightControlUtils.height,
        width: double.infinity,
      ),
    );
  }
}
