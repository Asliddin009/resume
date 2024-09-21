Set<ProjectEntity> projects = {
  const ProjectEntity(
      name: 'Личный Кабинет Инфо Югра',
      icon: 'assets/project/icon/info_cabinet.png',
      screens: [
        'assets/project/screens/cab1.png',
        'assets/project/screens/cab2.png',
        'assets/project/screens/cab3.png',
        'assets/project/screens/cab4.png',
        'assets/project/screens/cab5.png',
        'assets/project/screens/cab6.png',
        'assets/project/screens/cab7.png',
        'assets/project/screens/cab8.png',
      ],
      description: """
          \nЛичный кабинет для оплаты Жкх, внесения данных с счетчика,
          \nотправления запросов на установку и найстройку оборудования в ХМАО.
          \nНа данном проекте я работал с технологиями Bloc, WebView, http, shared_preferences, sentry.
          \nРеализовывал такие функции как оплата по мир пэй, автооплата платежей, оптимизация логики и уменьшении времени загрузки экранов,
          \nа также переделывал UI.
          """),
  const ProjectEntity(
      name: 'ИСA отмечания посещения студентов',
      icon: 'assets/project/icon/isa.png',
      screens: [
        'assets/project/screens/is1.png',
        'assets/project/screens/is2.png',
        'assets/project/screens/is3.png',
        'assets/project/screens/is4.png',
        'assets/project/screens/is5.png',
        'assets/project/screens/is6.png',
      ],
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
      screens: [
        'assets/project/screens/time1.png',
        'assets/project/screens/time2.png',
        'assets/project/screens/time3.png',
      ],
      description: """
      \nМобильное приложения для просмотра расписания вуза, а также сохранять их локально
      \nНа данном проекте я работал с Bloc, getIt, freezed, hydrated bloc и awesome snack bar
      \nРеализовывал такие функции как кэширования данных на телефоне, фильтрация пар для отображение 
      \nтолько нужных студенту пар. 
      """),
  const ProjectEntity(
      name: 'NashStore',
      icon: 'assets/project/icon/nashstore.png',
      screens: [
        'assets/project/screens/nash0.png',
        'assets/project/screens/nash1.png',
        'assets/project/screens/nash2.png',
        'assets/project/screens/nash3.png',
        'assets/project/screens/nash4.png',
        'assets/project/screens/nash5.png',
        'assets/project/screens/nash6.png',
      ],
      description: """
      \nМобильное приложения для просмотра и установки приложений на подобие Play market или App Store.
      \nНа данном проекте я работал с GetX, lottie, flutter_file_downloader, skeletonizer, dio
      \nРеализовывал такие функции как получение данных с сервера и их обработка, авторизация по вк и гугл, скачивание приложений по Url и заменой моковых данных в UI на настоящии.  
      """),
  const ProjectEntity(
      name: 'Календарь, Todo, калькулятор,',
      icon: '',
      screens: [],
      description: """
        \nЛабораторные работы по мобильной разработке(калькулятор, конвертер, календарь, todo, работа с интернет ресурсами)
        \nНа данном проекте я работал с Bloc, easy_localization, google_fonts, hive, cached_network_image   
          """),
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
