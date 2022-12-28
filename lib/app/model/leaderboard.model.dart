import '../core/core.dart';

class LeaderBoardModel {
  int? ranking;
  String avatar;
  String name;
  String amount;

  LeaderBoardModel({
    this.ranking,
    required this.avatar,
    required this.name,
    required this.amount,
  });
}

List<LeaderBoardModel> leaderboard = [
  LeaderBoardModel(ranking: 1, avatar: Assets.jason, name: 'Jason W.', amount: '12,524 K'),
  LeaderBoardModel(ranking: 2, avatar: Assets.anna, name: 'Anna Marie R.', amount: '12,492 K'),
  LeaderBoardModel(ranking: 3, avatar: Assets.ryan, name: 'Ryan J.', amount: '10,482 K'),
  LeaderBoardModel(avatar: Assets.derralle, name: 'Derralle P.', amount: '9,760 K'),
  LeaderBoardModel(avatar: Assets.jordan, name: 'Jordan G.', amount: '9,539 K'),
  LeaderBoardModel(avatar: Assets.wayne, name: 'Wayne Little', amount: '9,538 K'),
];
