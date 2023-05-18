import 'package:bored/activity_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ActvityScreen extends StatelessWidget {
  const ActvityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ActivityController>(builder: (context, value, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Bored'),
        ),
        body: value.activityList == null
            ? CircularProgressIndicator()
            : Column(
                children: [Text(value.activityList!.activity)],
              ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          value.getActivity(context);
        }),
      );
    });
  }
}
