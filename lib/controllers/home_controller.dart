import 'package:api_test/models/todo_model.dart';
import 'package:api_test/services/json_placeholder_service.dart';
import 'package:flutter/cupertino.dart';

class HomeController extends ChangeNotifier {
  final JsonPlaceHolderService _service;

  HomeController(this._service);
  var todos = <TodoModel>[];

  Future<void> fetchAllTodos() async {
    todos = await _service.getTodos();
    notifyListeners();
  }
}
