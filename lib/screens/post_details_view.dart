import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socialapp/cubits/nav_cubit.dart';

import 'package:socialapp/models/post.dart';

class PostDetailsView extends StatelessWidget {
  final Post? post;

  const PostDetailsView({Key? key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        BlocProvider.of<NavCubit>(context).popToPosts();
        return Future<bool>.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(post?.title ?? ""),
        ),
        body: Center(
          child: Text(post?.body ?? ""),
        ),
      ),
    );
  }
}
