// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PostViewModel on _PostViewModelBase, Store {
  late final _$postsAtom =
      Atom(name: '_PostViewModelBase.posts', context: context);

  @override
  List<Post> get posts {
    _$postsAtom.reportRead();
    return super.posts;
  }

  @override
  set posts(List<Post> value) {
    _$postsAtom.reportWrite(value, super.posts, () {
      super.posts = value;
    });
  }

  late final _$pageStateAtom =
      Atom(name: '_PostViewModelBase.pageState', context: context);

  @override
  PageState get pageState {
    _$pageStateAtom.reportRead();
    return super.pageState;
  }

  @override
  set pageState(PageState value) {
    _$pageStateAtom.reportWrite(value, super.pageState, () {
      super.pageState = value;
    });
  }

  late final _$isSeriseReuqusetLoadingAtom = Atom(
      name: '_PostViewModelBase.isSeriseReuqusetLoading', context: context);

  @override
  bool get isSeriseReuqusetLoading {
    _$isSeriseReuqusetLoadingAtom.reportRead();
    return super.isSeriseReuqusetLoading;
  }

  @override
  set isSeriseReuqusetLoading(bool value) {
    _$isSeriseReuqusetLoadingAtom
        .reportWrite(value, super.isSeriseReuqusetLoading, () {
      super.isSeriseReuqusetLoading = value;
    });
  }

  late final _$_PostViewModelBaseActionController =
      ActionController(name: '_PostViewModelBase', context: context);

  @override
  void changeRequest() {
    final _$actionInfo = _$_PostViewModelBaseActionController.startAction(
        name: '_PostViewModelBase.changeRequest');
    try {
      return super.changeRequest();
    } finally {
      _$_PostViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
posts: ${posts},
pageState: ${pageState},
isSeriseReuqusetLoading: ${isSeriseReuqusetLoading}
    ''';
  }
}
