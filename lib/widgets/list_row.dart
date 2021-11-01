import 'package:flutter/material.dart';
import 'package:socialapp/models/album.dart';
import 'package:socialapp/widgets/text.dart';

class ListRow extends StatelessWidget {
  //
  final Album album;
  const ListRow({Key? key, required this.album}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(text: album.title),
          const Divider(),
        ],
      ),
    );
  }
}
