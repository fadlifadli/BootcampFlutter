import '../model/postmodel.dart';
import '../service/service.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  // ignore: deprecated_member_use
  var getposts = <Postmodel>[].obs;
  Services services = Services();
  var postloading = true.obs;
  @override
  void onInit(){
    callpostmethod();
    super.onInit();
  }
  callpostmethod() async {
    try {
      postloading.value = true;
      var result = await services.getallposts();
      if (result != null) {
        getpost.assignAll(result);
      }else{
        print("null");
      }
    } finally {
      postloading.value = false;
    }
    update();
  }
}