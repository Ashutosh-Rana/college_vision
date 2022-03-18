import 'dart:convert';

class ProjectModel {
  static List<ProjectItem>? items;
}

class ProjectItem {
  final int id;
  final String projectName;
  final String subjectName;
  final String image;
  final String deadline;
  final String status;
  final String color;
  ProjectItem(
      {required this.id,
      required this.projectName,
      required this.subjectName,
      required this.image,
      required this.deadline,
      required this.status,
      required this.color});

  ProjectItem copyWith({
    int? id,
    String? projectName,
    String? subjectName,
    String? image,
    String? deadline,
    String? status,
    String? color,
  }) {
    return ProjectItem(
      id: id ?? this.id,
      projectName: projectName ?? this.projectName,
      subjectName: subjectName ?? this.subjectName,
      image: image ?? this.image,
      deadline: deadline ?? this.deadline,
      status: status ?? this.status,
      color: color ?? this.color,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'projectName': projectName,
      'subjectName': subjectName,
      'image': image,
      'deadline': deadline,
      'status': status,
      'color': color,
    };
  }

  factory ProjectItem.fromMap(Map<String, dynamic> map) {
    return ProjectItem(
      id: map['id']?.toInt(),
      projectName: map['projectName'],
      subjectName: map['subjectName'],
      image: map['image'],
      deadline: map['deadline'],
      status: map['status'],
      color: map['color'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProjectItem.fromJson(String source) =>
      ProjectItem.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProjectItem(id: $id, projectName: $projectName, subjectName: $subjectName, image: $image, deadline: $deadline, status: $status, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProjectItem &&
        other.id == id &&
        other.projectName == projectName &&
        other.subjectName == subjectName &&
        other.image == image &&
        other.deadline == deadline &&
        other.status == status &&
        other.color == color;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        projectName.hashCode ^
        subjectName.hashCode ^
        image.hashCode ^
        deadline.hashCode ^
        status.hashCode ^
        color.hashCode;
  }
}
