import 'package:live_me/app/core/core.dart';

class LeaderBoardModel {
  int? ranking;
  String avatar;
  String name;
  String amount;

  LeaderBoardModel({
      this.ranking,
      required this.avatar,
      required this.name,
      required this.amount
  });
}

List<LeaderBoardModel> samples = [
  LeaderBoardModel(ranking: 1, avatar: AppAssets.jason, name: 'Jason W.', amount: '12,524 K'),
  LeaderBoardModel(ranking: 2, avatar: AppAssets.anna, name: 'Anna Marie R.', amount: '12,492 K'),
  LeaderBoardModel(ranking: 3, avatar: AppAssets.ryan, name: 'Ryan J.', amount: '10,482 K'),
  LeaderBoardModel(avatar: AppAssets.derralle, name: 'Derralle P.', amount: '9,760 K'),
  LeaderBoardModel(avatar: AppAssets.jordan, name: 'Jordan G.', amount: '9,539 K'),
  LeaderBoardModel(avatar: AppAssets.wayne, name: 'Wayne Little', amount: '9,538 K'),
];