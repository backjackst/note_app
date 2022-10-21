import 'package:flutter/material.dart';
import 'package:note_app/post/posts.dart';

class PostListItem extends StatelessWidget {
  const PostListItem({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Material(
      child: ListTile(
        shape: RoundedRectangleBorder( //<-- SEE HERE
        side: BorderSide(width: 2, color: Color(0xff764abc)),
        borderRadius: BorderRadius.circular(20),
      ),
        leading: CircleAvatar(
        backgroundColor: const Color(0xff764abc),
        child: Text('${post.id}', style: textTheme.caption),
      ),
        // Text('${post.id}', style: textTheme.caption),
        title: Text(post.title),
        isThreeLine: true,
        subtitle: Text(post.body),
        dense: true,
        autofocus: true,
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       body: SafeArea(
  //           child: ListView.builder(
  //     // itemCount: dummyList.length,
  //     itemBuilder: (context, index) => Card(
  //       elevation: 6,
  //       margin: const EdgeInsets.all(10),
  //       child: ListTile(
  //         leading: CircleAvatar(
  //           backgroundColor: Colors.purple,
  //           child: Text('${post.id}'),
  //         ),
  //         title: Text(post.title),
  //         subtitle: Text(post.body),
  //         trailing: const Icon(Icons.add_a_photo),
  //       ),
  //     ),
  //   )));
  // }
}




