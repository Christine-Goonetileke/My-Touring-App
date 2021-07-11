import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:my_touring/models/destination_model.dart';

class DestinationDataProvider with ChangeNotifier {
  List<DestinationModel> desList =[];

  loadDes(){
    FirebaseFirestore.instance.collection('destinations').get().then((querySnapshot){
      querySnapshot.docs.forEach((queryDocSnapshot) {
        if(queryDocSnapshot.exists){
          desList.add(DestinationModel.fromJson(queryDocSnapshot.data()));
        }
      });
      notifyListeners();
    });
  }

}