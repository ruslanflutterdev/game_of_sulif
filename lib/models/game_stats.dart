class GameStats {
  int wins;
  int losses;
  int draws;

  GameStats({this.wins = 0, this.losses = 0, this.draws = 0});

  void updateStats(String result) {
    if (result == 'Вы победили!') {
      wins++;
    } else if (result == 'Вы проиграли!') {
      losses++;
    } else {
      draws++;
    }
  }
}
