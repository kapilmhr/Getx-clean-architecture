import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_clean_architecture/network/ApiServices.dart';
import 'package:getx_clean_architecture/screens/model/Flower.dart';

import '../../network/ApiUrl.dart';

class FlowerController extends GetxController with StateMixin<List<Flower>> {
  final flowers = RxList<Flower>();

  @override
  void onInit() {
    getFlowers();
  }

  getFlowers() async{
    change(flowers, status: RxStatus.loading());
    try {
      var response = await ApiServices().get(ApiUrl.flowers);
      flowers.value = FlowerList.fromJson(response).flowerLists;
      change(flowers.value, status: RxStatus.success());
    }catch (e) {
      change(flowers.value, status: RxStatus.error("Server Error"));
    }
  }
}
