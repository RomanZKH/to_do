class PostModel {
  String? taskId;
  int? status;
  String? name;
  int? type;
  String? description;
  String? finishDate;
  int? urgent;
  String? file;

  PostModel(
      {this.taskId,
      this.status,
      this.name,
      this.type,
      this.description,
      this.finishDate,
      this.urgent,
      this.file});

  factory PostModel.fromMap(Map<dynamic, dynamic> getData) {
    return PostModel(
      taskId: getData["taskId"],
      status: getData["status"],
      name: getData["name"],
      type: getData["type"],
      description: getData["description"],
      finishDate: getData["finishDate"],
      urgent: getData["urgent"],
      file: getData["file"],
    );
  }
}
