import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Designer {
  Designer({
    required this.name,
    required this.title,
    required this.image,
  }) : id = uuid.v4();

  final String id;
  final String name;
  final String title;
  final String image;
}
