import 'package:api_test/controllers/home_controller.dart';
import 'package:api_test/models/todo_model.dart';
import 'package:api_test/services/json_placeholder_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class JsonPlaceHolderServiceMock extends Mock
    implements JsonPlaceHolderService {}

void main() {
  test('home controller deve preencher a lista corretamente', () async {
    final service = JsonPlaceHolderServiceMock();
    when(
      () => service.getTodos(),
    ).thenAnswer((_) async => [TodoModel.stub()]);
    final controller = HomeController(service);
    await controller.fetchAllTodos();
    expect(controller.todos.length, 1);
  });
}
