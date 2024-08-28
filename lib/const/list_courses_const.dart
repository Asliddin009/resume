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
      description:
          'Этот курс знакомит с языком программирования Dart, который является основой для разработки мобильных и веб-приложений, в том числе с использованием популярного фреймворка Flutter. Курс охватывает все аспекты, начиная от базовых концепций и заканчивая продвинутыми техниками программирования, что позволяет студентам постепенно наращивать свои навыки и уверенность в написании эффективного кода.'),
  CourseEntity(
      author: 'Юрий Петров',
      name: 'Dart+Flutter - быстрый gRPC бек и клиент для чата на Protobuf',
      icon: 'assets/courses/icon/grpc.png',
      diplom: 'assets/courses/screens/grpc.png',
      description: """
- создавать свои сервисы на языке Dart;
- использовать Docker и Docker-Compose;
- реализовывать защиту сервисов с помощью JWT токенов;
- работать с базой данных PostgreSQL
- правильно хранить хеши паролей в базе данных;
- быстро разворачивать базу данных PostrgeSQL c помощью Docker;
- использовать gRPC по протоколу Protobuf;
"""),
  CourseEntity(
      author: 'Юрий Петров',
      name: 'Создаем RESTful бекенд на Dart и клиент на Flutter.',
      icon: 'assets/courses/icon/network.png',
      diplom: 'assets/courses/screens/network.png',
      description:
          'Создадим клиент - серверное приложение, от начала и до конца. Создадим бекенд для обработки запросов от клиентов. Создадим мобильное приложение. Бекенд реализуем на языке Dart с использованием фреймворка Conduit. Напишем 2 сервиса AUTH и DATA, настроим веб сервер NGINX. Поместим все в отдельные Docker - контейнеры. Произведем деплой бекенда на удаленный сервер. P.S. Цена курса будет увеличиваться, пропорционально количеству уроков.'),
  CourseEntity(
      author: 'Юрий Петров',
      name: 'Go (Goland) + Gin = быстрый бекенд для заметок',
      icon: 'assets/courses/icon/go.jpg',
      diplom: 'assets/courses/screens/go.png',
      description:
          'Курс направлен на освоение современных методик и инструментов для разработки сервисов на языке Go с использованием фреймворка GIN. Вы научитесь создавать быстрые сервисы с использованием микросервисной архитектуры, работать с базами данных MongoDB и PostgreSQL, реализовывать системы аутентификации и авторизации, а также развертывать приложения с помощью Docker и NGINX.'),
  CourseEntity(
      author: 'Станислав Чернышев',
      name: 'Паттерны проектирования GoF на Dart',
      icon: 'assets/courses/icon/st_dart.png',
      diplom: '',
      description:
          'Курс даёт всеобъемлющий обзор паттернов (шаблонов) проектирования из книги "банды четырёх" на языке программировании Dart. Помимо классических реализаций паттернов проектирования, где это только возможно, рассматривается их реализация теми средствами, что предоставляет Dart.'),
  CourseEntity(
      author:
          'Станислав Чернышев, Юрий Петров, Станислав Ильин, Павел Гершевич',
      name: 'Основы Flutter (в разработке)',
      icon: '',
      diplom: '',
      description:
          'Данный курс представляет собой электронную версию книги "Основы Flutter" и будет пополняться по мере написания материала. Такой формат позволяет в процессе работы над книгой сразу получать обратную связь от читателя и вносить обоснованные изменения.'),
};
