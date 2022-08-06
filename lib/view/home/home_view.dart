import 'package:delos_test/component/home_card.dart';
import 'package:delos_test/controller/home_controller.dart';
import 'package:delos_test/helper/convert_icon.dart';
import 'package:delos_test/model/weather_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Weather App'),
      ),
      body: Obx(
        () => homeController.loading.value
            ? const Center(child: CircularProgressIndicator())
            : homeController.error.value
                ? SizedBox(
                    height: Get.height,
                    width: Get.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('Ada Masalah dalam pengambilan data'),
                        ElevatedButton(
                          onPressed: () => homeController.getData(),
                          child: const Text('Ambil ulang'),
                        )
                      ],
                    ),
                  )
                : ListView.separated(
                    separatorBuilder: (_, index) => const Divider(),
                    itemCount: homeController.dataHome.value.list!.length,
                    itemBuilder: (context, index) {
                      ListElement data =
                          homeController.dataHome.value.list![index];
                      DateFormat dateFormat =
                          DateFormat("EEE, MMM dd, yyyy HH:mm a");
                      return InkWell(
                        onTap: () =>
                            Get.toNamed('/home/detail', arguments: data),
                        child: HomeCard(
                          icon: convertIcon(data.weather[0].icon),
                          type: data.weather[0].main,
                          temp: data.main.temp,
                          date: dateFormat.format(data.dtTxt),
                        ),
                      );
                    },
                  ),
      ),
    );
  }
}
