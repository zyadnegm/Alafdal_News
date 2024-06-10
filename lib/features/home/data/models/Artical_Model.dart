class ArticalModel {
  ArticalModel({
      this.id, 
      this.title, 
      this.description, 
      this.date, 
      this.time, 
      this.images,});

  ArticalModel.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    date = json['date'];
    time = json['time'];
    images = json['images'];
  }
  String? id;
  String? title;
  String? description;
  String? date;
  String? time;
  String? images;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['description'] = description;
    map['date'] = date;
    map['time'] = time;
    map['images'] = images;
    return map;
  }

}