
import 'story.dart';


class StoryBrain
{

  List<Story> _storyData = [
    Story(
        'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        'I\'ll hop in. Thanks for the help!',
        'Better ask him if he\'s a murderer first.'),
    Story(
        'He nods slowly, unphased by the question.',
         'At least he\'s honest. I\'ll climb in.',
         'Wait, I know how to change a tire.'),
    Story(

        'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        'I love Elton John! Hand him the cassette tape.',
        'It\'s him or me! You take the knife and stab him.'),
    Story(

        'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        'Restart',
         ''),
    Story(

        'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        'Restart',
        ''),
    Story(

        'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
         'Restart',
        '')
  ];



  String getStory(){

    return StoryBrain()._storyData[storynumber].StoryText;
  }

  String getChoice1()
  {
    return StoryBrain()._storyData[storynumber].First_choice;
  }

  String getChoice2()
  {
    return StoryBrain()._storyData[storynumber].Second_choice;
  }

  int storynumber=0;


  void nextstory(int ChoiceNumber){
    if(storynumber==0&& ChoiceNumber==1)
      {
        storynumber=2;
      }
    else if(storynumber==0&&ChoiceNumber==2)
      {
        storynumber=1;
      }
    else if(storynumber==1&&ChoiceNumber==1)
      {
        storynumber=2;
      }
    else if(storynumber==1&& ChoiceNumber==2)
      {
        storynumber=3;
      }
    else if(storynumber==2&&ChoiceNumber==1)
      {
        storynumber=5;
      }
    else if(storynumber==2&&ChoiceNumber==2)
      {
        storynumber=4;
      }

      else if(storynumber==3||storynumber==4||storynumber==5)
        {
          storynumber=0;
        }

  }

  bool buttonShouldBeVisible() {
    if(storynumber==0||storynumber==1||storynumber==2)
      {
        return true;
      }
    else {
      return false;
    }
  }

}










//TODO: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
