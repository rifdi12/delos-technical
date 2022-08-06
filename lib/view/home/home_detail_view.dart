import 'package:delos_test/helper/convert_icon.dart';
import 'package:delos_test/helper/theme.dart';
import 'package:delos_test/model/weather_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomeDetailView extends StatelessWidget {
  const HomeDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ListElement data = Get.arguments;
    DateFormat dateFormatDay = DateFormat("EEEE, MMMM dd, yyyy");
    DateFormat dateFormatHours = DateFormat("HH:mm a");
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Weather Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              Text(
                dateFormatDay.format(data.dtTxt),
                style: DelosTheme().titleText(fontSize: 19.0),
              ),
              Text(
                dateFormatHours.format(data.dtTxt),
                style: DelosTheme().bodyText(fontSize: 19.0),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${data.main.temp}',
                    style: DelosTheme().bodyText(fontSize: 24.0),
                  ),
                  Image.network(
                    convertIcon(data.weather[0].icon),
                    height: 75,
                    width: 75,
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data.weather[0].main,
                    style: DelosTheme().titleText(fontSize: 14.0),
                  ),
                  Text(
                    ' (${data.weather[0].description})',
                    style: DelosTheme().titleText(fontSize: 14.0),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "Temp (min)",
                        style: DelosTheme().bodyText(fontSize: 14.0),
                      ),
                      Text(
                        '${data.main.tempMin} ℃',
                        style: DelosTheme().titleText(fontSize: 14.0),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Temp (max)",
                        style: DelosTheme().bodyText(fontSize: 14.0),
                      ),
                      Text(
                        '${data.main.tempMax} ℃',
                        style: DelosTheme().titleText(fontSize: 14.0),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
