class ResponseModel {
  String? taskId;
  int? status;
  String? name;
  int? type;
  String? description;
  DateTime? finishDate;
  int? urgent;
  DateTime? syncTime;
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
      status: getData["status"],
      name: getData["name"],
      type: getData["type"],
      description: getData["description"],
      finishDate: getData["finishDate"],
      urgent: getData["urgent"],
      syncTime: getData["syncTime"],
      file: getData["file"],
    );
  }
}
