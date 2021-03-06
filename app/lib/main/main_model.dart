import 'package:equatable/equatable.dart';

/// generate by https://javiercbk.github.io/json_to_dart/
class AutogeneratedMain {
  final List<MainModel> results;

  AutogeneratedMain({required this.results});

  // factory AutogeneratedMain.fromJson(Map<String, dynamic> json) {
  //   var temp = <YouAwesomeModel>[];
  //   if (json['results'] != null) {
  //     temp = <MainModel>[];
  //     json['results'].forEach((v) {
  //       temp.add(MainModel.fromJson(v as Map<String, dynamic>));
  //     });
  //   }
  //   return AutogeneratedMain(results: temp);
  // }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['results'] = results.map((v) => v.toJson()).toList();
    return data;
  }
}

class MainModel extends Equatable {
  final int id;
  final String name;

  MainModel(this.id, this.name);

  @override
  List<Object> get props => [id, name];

  factory MainModel.fromJson(Map<String, dynamic> json) {
    return MainModel(json['id'] as int, json['name'] as String);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}
