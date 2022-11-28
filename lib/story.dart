class Story {
  String storyTitle;
  String choice1;
  String choice2;
  Story? nextStory1;
  Story? nextStory2;

  Story({
    required this.storyTitle,
    required this.choice1,
    required this.choice2,
  });
}
