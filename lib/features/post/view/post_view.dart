import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_mvvm/features/post/viewModel/post_view_model.dart';

class PostView extends StatelessWidget {
  final _viewModel = PostViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.change_circle_outlined),
        onPressed: () {
          _viewModel.getAllPost2();
        },
      ),
      body: buildLikeConvertCubic(),
    );
  }

  Center buildLikeConvertCubic() {
    return Center(child: Observer(builder: (_) {
      switch (_viewModel.pageState) {
        case PageState.LOADING:
          return const CircularProgressIndicator();
        case PageState.SUCCESS:
          return buildListView();

        case PageState.ERROR:
          return const Text('Error');
        default:
          return const FlutterLogo();
      }
      //buildListView();
    }));
  }

  Widget buildListView() {
    return Observer(builder: (_) {
      return ListView.separated(
          separatorBuilder: (_, __) => const Divider(),
          itemCount: _viewModel.posts.length,
          itemBuilder: ((context, index) => buildCard(index)));
    });
  }

  ListTile buildCard(int index) {
    return ListTile(
      title: Text(_viewModel.posts[index].title.toString()),
      subtitle: Text(_viewModel.posts[index].body.toString()),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      actions: [
        Observer(builder: (_) {
          return _viewModel.isSeriseReuqusetLoading
              ? const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                )
              : const SizedBox();
        })
      ],
      title: const Text("Mvvm Mobx"),
    );
  }
}
