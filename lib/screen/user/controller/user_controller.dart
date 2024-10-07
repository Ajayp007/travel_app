
import 'package:get/get.dart';
import 'package:travel_app/screen/user/model/user_screen.dart';
import 'package:travel_app/utils/helper/firebase_helper.dart';

class ProfileController extends GetxController
{
  Rx<ProfileModel> model = ProfileModel().obs;

  Future<void> getUserData()
  async {
    ProfileModel data = await FireDbHelper.helper.currentUser();
    model.value = data;
  }

}