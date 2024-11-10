const assetPath = 'assets/images';

enum InputType {
  rock,
  scissors,
  paper;

  String get path => '$assetPath/$name.png';
}

enum Result {
  playerWin('플레이어 승리'),
  draw('무승부'),
  cpuWin('CPU 승리');

  const Result(this.displayString);

  final String displayString;
}
