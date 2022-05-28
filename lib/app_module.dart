import 'package:api_test/controllers/home_controller.dart';
import 'package:api_test/services/dio_client.dart';
import 'package:api_test/services/http_client_interface.dart';
import 'package:api_test/services/json_placeholder_service.dart';
import 'package:api_test/views/my_home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton<IHttpClient>((i) => DioClient()),
        Bind.singleton((i) => JsonPlaceHolderService(i())),
        Bind.singleton((i) => HomeController(i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => MyHomePage()),
      ];
}
