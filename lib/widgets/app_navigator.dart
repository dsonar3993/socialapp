import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socialapp/cubits/nav_cubit.dart';
import 'package:socialapp/screens/post_details_view.dart';
import 'package:socialapp/screens/posts_view.dart';

import '../models/post.dart';

class AppNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavCubit, Post>(builder: ((context, post) {
      return Navigator(
        pages: [
          MaterialPage(child: PostsView()),
          MaterialPage(
            child: PostDetailsView(post: post),
          )
        ],
        onPopPage: (route, result) {
          BlocProvider.of<NavCubit>(context).popToPosts();
          return route.didPop(result);
        },
      );
    }));
  }
}
