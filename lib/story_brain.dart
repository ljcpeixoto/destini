import 'package:destini/story.dart';

class StoryBrain {
  Story? _currentStory;

  final _story0 = Story(
    storyTitle:
        'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
    choice1: 'I\'ll hop in. Thanks for the help!',
    choice2: 'Better ask him if he\'s a murderer first.',
  );
  final _story1 = Story(
      storyTitle: 'He nods slowly, unphased by the question.',
      choice1: 'At least he\'s honest. I\'ll climb in.',
      choice2: 'Wait, I know how to change a tire.');
  final _story2 = Story(
      storyTitle:
          'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
      choice1: 'I love Elton John! Hand him the cassette tape.',
      choice2: 'It\'s him or me! You take the knife and stab him.');
  final _story3 = Story(
      storyTitle:
          'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
      choice1: 'Restart',
      choice2: '');
  final _story4 = Story(
      storyTitle:
          'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
      choice1: 'Restart',
      choice2: '');
  final _story5 = Story(
      storyTitle:
          'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
      choice1: 'Restart',
      choice2: '');

  StoryBrain() {
    _story0.nextStory1 = _story2;
    _story0.nextStory2 = _story1;

    _story1.nextStory1 = _story2;
    _story1.nextStory2 = _story3;

    _story2.nextStory1 = _story5;
    _story2.nextStory2 = _story4;

    _currentStory = _story0;
  }

  String? getStory() {
    return _currentStory?.storyTitle;
  }

  String? getChoice1() {
    return _currentStory?.choice1;
  }

  String? getChoice2() {
    return _currentStory?.choice2;
  }

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1) {
      _currentStory = _currentStory?.nextStory1;
    } else {
      _currentStory = _currentStory?.nextStory2;
    }
  }
}

//TODO: Step 23 - Use the storyNumber property inside getStory(), getChoice1() and getChoice2() so that it gets the updated story and choices rather than always just the first (0th) one.

//TODO: Step 11 - Create a method called getChoice1() that returns the text for the first choice1 from _storyData.

//TODO: Step 12 - Create a method called getChoice2() that returns the text for the first choice2 from _storyData.

//TODO: Step 25 - Change the storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.

//TODO: Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.

//TODO: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
