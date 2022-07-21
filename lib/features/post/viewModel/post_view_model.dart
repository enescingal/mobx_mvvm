import 'dart:io';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import '../model/post.dart';
part 'post_view_model.g.dart';

class PostViewModel = _PostViewModelBase with _$PostViewModel;

abstract class _PostViewModelBase with Store {
  @observable
  List<Post> posts = [];

  final url = 'https://jsonplaceholder.typicode.com/posts';

  @observable
  PageState pageState = PageState.NORMAL;

  @observable
  bool isSeriseReuqusetLoading = false;

  Future<void> getAllPost() async {
    changeRequest();

    final response = await Dio().get(url);

    if (response.statusCode == HttpStatus.ok) {
      final responseData = response.data as List;
      posts = responseData.map((e) => Post.fromJson(e)).toList();
    }
    changeRequest();
  }

  Future<void> getAllPost2() async {
    pageState = PageState.LOADING;

    try {
      final response = await Dio().get(url);

      if (response.statusCode == HttpStatus.ok) {
        final responseData = response.data as List;
        posts = responseData.map((e) => Post.fromJson(e)).toList();

        pageState = PageState.SUCCESS;
      } else {}
    } catch (e) {
      pageState = PageState.ERROR;
    }
  }

  @action
  void changeRequest() {
    isSeriseReuqusetLoading = !isSeriseReuqusetLoading;
  }
}

enum PageState { LOADING, ERROR, SUCCESS, NORMAL }
