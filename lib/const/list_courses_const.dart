final class CourseEntity {
  final String name;
  final String icon;
  final String description;
  final String diplom;
  final String author;
  const CourseEntity(
      {required this.author,
      required this.name,
      required this.icon,
      required this.diplom,
      required this.description});
}

const Set<CourseEntity> courses = {
  CourseEntity(
      author: 'Юрий Петров',
      name: 'Dart 3 в действии',
      icon: 'assets/courses/icon/dart.png',
      diplom: 'assets/courses/screens/dart.png',
      description: ''),
  CourseEntity(
      author: 'Юрий Петров',
      name: 'Dart+Flutter - быстрый gRPC бек и клиент для чата на Protobuf',
      icon: 'assets/courses/icon/grpc.png',
      diplom: 'assets/courses/screens/grpc.png',
      description: ''),
  CourseEntity(
      author: 'Юрий Петров',
      name: 'Создаем RESTful бекенд на Dart и клиент на Flutter.',
      icon: 'assets/courses/icon/network.png',
      diplom: 'assets/courses/screens/network.png',
      description: ''),
  CourseEntity(
      author: 'Юрий Петров',
      name: 'Go (Goland) + Gin = быстрый бекенд для заметок',
      icon: 'assets/courses/icon/go.jpg',
      diplom: 'assets/courses/screens/go.png',
      description: ''),
  CourseEntity(
      author: 'Станислав Чернышев',
      name: 'Паттерны проектирования GoF на Dart',
      icon: 'assets/courses/icon/st_dart.jpg',
      diplom: '',
      description: ''),
  CourseEntity(
      author:
          'Станислав Чернышев, Юрий Петров, Станислав Ильин, Павел Гершевич',
      name: 'Основы Flutter (в разработке)',
      icon: '',
      diplom: '',
      description: ''),
};
