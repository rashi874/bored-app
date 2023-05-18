import 'dart:developer';
import 'package:bored/activity_model.dart';
import 'package:bored/base_rul.dart';
import 'package:dio/dio.dart';

class ActivityService {
  Future<Activitymodel?> getActivityservices(context) async {
    final dios = Dio();
    // await ApiInterceptor().getApiUser(context);
    try {
      final Response response = await dios.get(
        ApiBaseUrl().baseUrl + ApiBaseUrl.activity,
      );
      // log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        log(response.statusCode.toString());
        final model = (response.data);

        return model;
      }
    } on DioError catch (e) {
      log(e.response!.data.toString());
    }
    return null;
  }
}
