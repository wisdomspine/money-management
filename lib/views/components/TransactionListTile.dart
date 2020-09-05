import 'package:flutter/material.dart';

import '../../main.dart';

class TransactionListTile extends StatelessWidget {
  final String name;
  final IconData iconData;
  final String description;
  final Color iconColor;
  final String amount;
  final bool isPositive;
  const TransactionListTile({
    Key key,
    @required this.name,
    @required this.iconData,
    @required this.description,
    @required this.iconColor,
    @required this.amount,
    @required this.isPositive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        icon: Icon(
          iconData,
          color: iconColor,
          size: 30.0,
        ),
        onPressed: null,
      ),
      title: Text(
        name,
        style: Theme.of(context).textTheme.headline6,
      ),
      subtitle: Text(
        description,
        style: Theme.of(context).textTheme.bodyText2,
      ),
      trailing: FractionallySizedBox(
        heightFactor: 0.5,
        child: Text(
          amount,
          style: Theme.of(context).textTheme.bodyText2.copyWith(
                color: isPositive ? Colors.green : Colors.red,
              ),
        ),
      ),
    );
  }
}
