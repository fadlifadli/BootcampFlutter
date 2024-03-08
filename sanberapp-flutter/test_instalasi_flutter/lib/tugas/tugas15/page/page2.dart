import 'package:flutter/material.dart';
import '../route/route_name.dart';
import 'package:get/get.dart';

class PageTwo extends StatelessWidget {
  const PageTwo ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Halaman 2"),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteName.page_3);
              },
              child: Text("menuju halaman tiga ")),
              ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteName.page_1);
              },
              child: Text("kembali ke page 1 ")),
          ],
        )
      )
    );
  }
}