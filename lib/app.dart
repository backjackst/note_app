import 'package:flutter/material.dart';
import 'package:note_app/post/posts.dart';

class App extends MaterialApp {
  const App({super.key}) : super(home: const PostsPage());
}
