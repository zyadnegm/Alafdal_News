class ArticalModel {
  ArticalModel({
      this.results,});

  ArticalModel.fromJson(dynamic json) {
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(Results.fromJson(v));
      });
    }
  }
  List<Results>? results;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Results {
  Results({
      this.headline, 
      this.underHeadline, 
      this.content, 
      this.date, 
      this.image, 
      this.url,});

  Results.fromJson(dynamic json) {
    headline = json['headline'];
    underHeadline = json['underHeadline'];
    content = json['content'];
    date = json['date'];
    image = json['image'];
    url = json['url'];
  }
  String? headline;
  String? underHeadline;
  String? content;
  String? date;
  String? image;
  String? url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['headline'] = headline;
    map['underHeadline'] = underHeadline;
    map['content'] = content;
    map['date'] = date;
    map['image'] = image;
    map['url'] = url;
    return map;
  }

}