import 'package:flutter/material.dart';
import 'package:toonflix/models/Episode_model.dart';
import 'package:toonflix/models/webtoon_detail_model.dart';
import 'package:toonflix/models/webtoon_model.dart';
import 'package:toonflix/services/api_service.dart';
import 'package:toonflix/widgets/image_card.dart';

class DetailScreen extends StatefulWidget {
  final WebtoonModel webtoon;

  const DetailScreen({
    super.key,
    required this.webtoon,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late Future<WebtoonDetailModel> webtoon;
  late Future<List<EpisodeModel>> episodes;

  @override
  void initState() {
    super.initState();
    webtoon = ApiService.getToonById(widget.webtoon.id);
    episodes = ApiService.getEpisodesById(widget.webtoon.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          widget.webtoon.title,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: widget.webtoon.id,
                child: ImageCard(
                  webtoon: widget.webtoon,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
