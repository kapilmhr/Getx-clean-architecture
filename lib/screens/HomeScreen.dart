import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/global/Loading.dart';
import 'package:getx_clean_architecture/screens/controller/FlowerController.dart';

import 'model/Flower.dart';
import 'widget/FlowerWidget.dart';

class HomeScreen extends StatelessWidget {
  FlowerController controller = Get.put(FlowerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flowers"),
        centerTitle: true,
        elevation: 0,
      ),
      body: controller.obx(
        (flowers) => buildListViews(flowers!),
        onLoading: Loading(),
        onError: (error) => Text("ERROR ${error}"),
      ),
    );
  }

  ListView buildListViews(List<Flower> flowerlist) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: flowerlist.length,
        itemBuilder: (BuildContext context, int index) {
          return FlowerWidget(flowerlist[index]);
        });
  }
}
