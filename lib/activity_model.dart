// To parse this JSON data, do
//
//     final activitymodel = activitymodelFromJson(jsonString);

import 'dart:convert';

Activitymodel activitymodelFromJson(String str) => Activitymodel.fromJson(json.decode(str));

String activitymodelToJson(Activitymodel data) => json.encode(data.toJson());

class Activitymodel {
    String activity;
    String type;
    int participants;
    int price;
    String link;
    String key;
    double accessibility;

    Activitymodel({
        required this.activity,
        required this.type,
        required this.participants,
        required this.price,
        required this.link,
        required this.key,
        required this.accessibility,
    });

    factory Activitymodel.fromJson(Map<String, dynamic> json) => Activitymodel(
        activity: json["activity"],
        type: json["type"],
        participants: json["participants"],
        price: json["price"],
        link: json["link"],
        key: json["key"],
        accessibility: json["accessibility"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "activity": activity,
        "type": type,
        "participants": participants,
        "price": price,
        "link": link,
        "key": key,
        "accessibility": accessibility,
    };
}
