import 'package:to_do_app/ui/index/index.dart';

class ResponseModel {
  String? taskId;
  int? status;
  String? name;
  int? type;
  String? description;
  String? finishDate;
  int? urgent;
  String? syncTime;
  String? file;

  ResponseModel(
      {this.taskId,
      this.status,
      this.name,
      this.type,
      this.description,
      this.finishDate,
      this.urgent,
      this.syncTime,
      this.file});

  factory ResponseModel.fromMap(Map<dynamic, dynamic> getData) {
    return ResponseModel(
      taskId: getData["taskId"],
      status: int.tryParse(getData["status"]),
      name: getData["name"],
      type: int.tryParse(getData["type"]),
      description: getData["description"],
      finishDate: getData["finishDate"],
      urgent: int.tryParse(getData["urgent"]),
      syncTime: getData["syncTime"],
      file: getData["file"],
    );
  }

  ResponseModel copy() {
    return ResponseModel(
        status: this.status,
        name: this.name,
        description: this.description,
        urgent: this.urgent,
        file: this.file,
        finishDate: this.finishDate,
        taskId: this.taskId,
        syncTime: this.syncTime,
        type: this.type);
  }
}
