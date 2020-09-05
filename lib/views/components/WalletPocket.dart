import 'package:flutter/material.dart';

import '../../main.dart';

class WalletPocket extends StatelessWidget {
  final Color color;
  final String label;
  final String amount;
  const WalletPocket({
    Key key,
    @required this.color,
    @required this.label,
    @required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kEdgePadding).copyWith(bottom: kEdgePadding + 5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      constraints: BoxConstraints(minWidth: 120),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            amount,
            style: Theme.of(context).textTheme.headline5.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
          ),
          Text(
            label,
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(color: Colors.white, height: 1.6),
          ),
        ],
      ),
    );
  }
}
