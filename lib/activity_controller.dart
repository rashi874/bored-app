import 'package:bored/activity_model.dart';
import 'package:bored/activity_service.dart';
import 'package:flutter/material.dart';

class ActivityController extends ChangeNotifier {
  bool isLoading = false;
Activitymodel? activityList;

  Future<void> getActivity(context) async {
    isLoading = true;
    notifyListeners();
    await ActivityService().getActivityservices(context).then(
      (value) {
        if (value != null) {
          activityList = value;
          notifyListeners();
          isLoading = false;
          notifyListeners();
        } else {
          isLoading = false;
          notifyListeners();
        }
      },
    );
    return;
  }
}
