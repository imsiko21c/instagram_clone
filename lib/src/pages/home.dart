import 'package:flutter/material.dart';
import 'package:instagram_clone/src/component/avatar_widget.dart';
import 'package:instagram_clone/src/component/image_data.dart';
import 'package:instagram_clone/src/component/post_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget _myStory() {
    return Stack(
      children: [
        AvatarWidget(
          type: AvatarType.TYPE2,
          thumbPath:
              'https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg',
          size: 70,
        ),
        Positioned(
          right: 5,
          bottom: 0,
          child: Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              border: Border.all(width: 2, color: Colors.white),
            ),
            child: const Center(
              child: Text(
                '+',
                style:
                    TextStyle(fontSize: 20, color: Colors.white, height: 1.1),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _storyBoardList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        const SizedBox(width: 20),
        _myStory(),
        const SizedBox(width: 5),
        ...List.generate(
          50,
          (index) => AvatarWidget(
              type: AvatarType.TYPE1,
              thumbPath:
                  'https://images.ctfassets.net/hrltx12pl8hq/3j5RylRv1ZdswxcBaMi0y7/b84fa97296bd2350db6ea194c0dce7db/Music_Icon.jpg'),
        ),
      ]),
    );
  }

  Widget _postList() {
    return Column(
      children: List.generate(
        50,
        (index) => const PostWidget(),
      ).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ImageData(
          IconsPath.logo,
          width: 270,
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
              child: ImageData(IconsPath.directMessage),
              onTap: () {},
            ),
          ),
        ],
      ),
      body: ListView(children: [
        _storyBoardList(),
        _postList(),
      ]),
    );
  }
}
