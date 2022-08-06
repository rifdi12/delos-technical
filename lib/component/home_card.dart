import 'package:delos_test/helper/theme.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String? icon;
  final String? date;
  final String? type;
  final double? temp;
  const HomeCard({Key? key, this.icon, this.date, this.type, this.temp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          icon ??
              "https://www.freeiconspng.com/thumbs/error/a-red-error-exclamation-sign-meaningful-official-round-26.png",
          height: 75,
          width: 75,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              date ?? "No Data",
              style: DelosTheme().titleText(),
            ),
            Text(
              type ?? "No Data",
              style: DelosTheme().bodyText(),
            ),
            Text(
              "${temp ?? "No Data"}",
              style: DelosTheme().bodyText(),
            )
          ],
        )
      ],
    );
  }
}
