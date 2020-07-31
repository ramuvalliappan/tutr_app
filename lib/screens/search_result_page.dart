import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:tutr_app/screens/profile_page.dart';

class Post {
  final String title;
  final String description;

  Post(this.title, this.description);
}

class SearchPage extends StatelessWidget {
  Future<List<Post>> search(String search) async {
    await Future.delayed(Duration(seconds: 2));
    return List.generate(1, (int index) {
      return Post(
        "$search",
        "Math Tutor, 5 Stars, Nearby",
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SearchBar<Post>(
            onSearch: search,
            onItemFound: (Post post, int index) {
              return GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ProfilePage())),
                child: ListTile(
                  title: Text(post.title),
                  subtitle: Text(post.description),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
