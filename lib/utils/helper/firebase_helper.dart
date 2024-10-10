import 'package:travel_app/screen/profile/model/user_screen.dart';
import 'package:travel_app/utils/helper/fireauth_helper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class FireDbHelper {
  static FireDbHelper helper = FireDbHelper._();

  FireDbHelper._();

  FirebaseFirestore fireStore = FirebaseFirestore.instance;
  String? uId;
  String? id;

  String getUserID() {
    return uId = FireAuthHelper.helper.user!.uid;
  }

  Future<void> getUser(ProfileModel m1) async {
    getUserID();
    await fireStore.collection('user').doc(uId).set(m1.modelToMap());
  }

  Future<ProfileModel> currentUser() async {
    getUserID();
    DocumentSnapshot snapshot =
    await fireStore.collection('user').doc(uId).get();
    Map? m1 = snapshot.data() as Map?;
    ProfileModel model =
    ProfileModel.mapToModel(m1 ?? {'name': '', 'email': '', 'mobile': ''});
    return model;
  }

  void deleteMyChat(String uid) {
    fireStore.collection('chat').doc(id).collection('msg').doc(uid).delete();
  }

}
