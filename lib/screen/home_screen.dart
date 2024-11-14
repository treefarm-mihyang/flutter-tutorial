import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(children: [
        StoryArea(),
        FeedList(),
      ]),
    );
  }
}

class StoryArea extends StatelessWidget {
  const StoryArea({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children:
              List.generate(10, (index) => UserStory(username: 'User $index'))),
    );
  }
}

class UserStory extends StatelessWidget {
  final String username;

  const UserStory({
    required this.username,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          Text(
            username,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class FeedData {
  final String userName;
  final int likeCount;
  final String content;

  FeedData(
      {required this.userName, required this.likeCount, required this.content});
}

final feedDataList = [
  FeedData(
      userName: "User 1",
      likeCount: 50,
      content:
          "오늘 점심 돈까스, 오늘 점심 돈까스, 오늘 점심 돈까스, 오늘 점심 돈까스, 오늘 점심 돈까스, 오늘 점심 돈까스, 오늘 점심 돈까스, 오늘 점심 돈까스, 오늘 점심 돈까스."),
  FeedData(userName: "User 2", likeCount: 32, content: "오늘 점심 떡볶이"),
  FeedData(userName: "User 3", likeCount: 56, content: "오늘 점심 초밥"),
  FeedData(userName: "User 4", likeCount: 73, content: "오늘 점심 피자"),
  FeedData(userName: "User 5", likeCount: 14, content: "오늘 점심 사탕"),
  FeedData(userName: "User 6", likeCount: 62, content: "오늘 점심 빵"),
];

class FeedList extends StatelessWidget {
  const FeedList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: feedDataList.length,
      itemBuilder: (context, index) => FeedItem(feedData: feedDataList[index]),
    );
  }
}

class FeedItem extends StatelessWidget {
  final FeedData feedData;

  const FeedItem({required this.feedData, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade300,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    feedData.userName,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.more_vert)
          ],
        ),
        Container(
          height: 300,
          decoration: BoxDecoration(
            color: Colors.blueGrey.shade100,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.chat_bubble)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.paperplane)),
              ],
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(CupertinoIcons.bookmark)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            "좋아요 ${feedData.likeCount}개",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: feedData.userName,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: feedData.content,
                  style: const TextStyle(),
                ),
              ],
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
