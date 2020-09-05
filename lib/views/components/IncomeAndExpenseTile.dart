import 'package:flutter/material.dart';

class IncomeAndExpenseTile extends StatelessWidget {
  final Color color;
  final IconData iconData;
  final String title;
  final String amount;
  const IncomeAndExpenseTile({
    Key key,
    @required this.color,
    @required this.iconData,
    @required this.title,
    @required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        constraints: BoxConstraints(
          maxWidth: 40.0,
          maxHeight: 40.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.grey.shade200,
        ),
        // ignore: missing_required_param
        child: IconButton(
          // onPressed: () {},
          padding: EdgeInsets.zero,

          icon: Icon(
            iconData,
            color: color,
            // size: 30,
          ),
        ),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyText2.copyWith(
              height: 2.0,
            ),
      ),
      subtitle: Text(
        amount,
        style: Theme.of(context)
            .textTheme
            .headline5
            .copyWith(fontWeight: FontWeight.w500),
      ),
    );
  }
}
