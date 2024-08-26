Set<ProjectEntity> projects = {
  const ProjectEntity(
      name: 'Личный Кабинет Инфо Югра',
      icon: 'assets/project/icon/info_cabinet.png',
      screens: [
        'assets/project/screens/cab1.jpg',
        'assets/project/screens/cab2.jpg',
        'assets/project/screens/cab3.jpg',
      ],
      description: """
          \nЛичный кабинет для оплаты Жкх, внесения данных с счетчика,
          \nотправления запросов на установку и найстройку оборудования в ХМАО.
          \nНа данном проекте я работал с технологиями Bloc, WebView, http, shared_preferences, sentry.
          \nРеализовывал такие функции как оплата по мир пэй, автооплата платежей, оптимизация логики и уменьшении времени загрузки экранов,
          \nа также переделывал UI.
          """),
  const ProjectEntity(
      name: 'ИС автоматизации посещений студентов на занятий',
      icon: '',
      screens: [],
      description: """
      \nPWA и мобильное приложения для автоматизации посещений студентов на занятиях
      \nс помощью сканирования Qr-кода,частично интегрирован в сервисы университета.
      \nНа данном проекте я работал с Web flutter, go_router и url, getIt, freezed,Bloc и т.д. 
      \nРеализовывал такие функции как авторизация по паролю выданным в вузе(клиентская часть), отметиться на занятий по Qr-коду(бэк и клиент)
      \nотметиться студента на паре(бэк и клиент), получения расписаний преподавателя(частично бэк и клиент)      
      """),
  const ProjectEntity(
      name: 'Расписание занятий ЮГУ',
      icon: 'assets/project/icon/timetable.png',
      screens: [],
      description: """
      \nМобильное приложения для просмотра расписания вуза, а также сохранять их локально
      \nНа данном проекте я работал с Bloc, getIt, freezed, hydrated bloc и awesome snack bar
      \nРеализовывал такие функции как кэширования данных на телефоне, фильтрация пар для отображение 
      \nтолько нужных студенту пар. 
      """),
  const ProjectEntity(
      name: 'NashStore',
      icon: 'assets/project/icon/nashstore.png',
      screens: [],
      description: """
      \nМобильное приложения для просмотра и установки приложений на подобие Play market или App Store.
      \nНа данном проекте я работал с GetX, lottie, flutter_file_downloader, skeletonizer, dio
      \nРеализовывал такие функции как получение данных с сервера и их обработка, авторизация по вк и гугл, скачивание приложений по Url и заменой моковых данных в UI на настоящии.  
      """),
  const ProjectEntity(
      name: 'Календарь, Todo, калькулятор,',
      icon: '',
      screens: [],
      description:
          'Лабораторные работы по мобильной разработке(калькулятор, конвертер, календарь, todo, работа с интернет ресурсами)'),
  const ProjectEntity(
      name: 'AlarmLear',
      icon: 'assets/project/icon/a_learn.png',
      screens: [],
      description: """
       \nВ разработке. Мобильное приложения с функцией будильника для изучения английского языка,
       \nНа данном проете я использую Alarm, flutter_alarm_background_trigger, flutter_ringtone_player, flutter_timezone, bloc 
"""),
  const ProjectEntity(
      name: 'Lounge bar', icon: '', screens: [], description: """
       \nВ разработке. Мобильное и Web приложение для бронирования столиков в Lounge bar,
       \nНа данном проете я использую bloc, equatable, go_router, grpc, protobuf 
""")
};

final class ProjectEntity {
  final String name;
  final String icon;
  final List<String> screens;
  final String description;
  const ProjectEntity(
      {required this.name,
      required this.icon,
      required this.screens,
      required this.description});
}
