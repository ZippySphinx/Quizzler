import 'question.dart';
import 'dart:math';

class QuizBrain {
  int _questionNumber = 0;
  int _count = 0;

  List<Question> _questionBank = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question(
        'Older women are more likely to experience orgasm when sex is within the context of a relationship.',
        true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'Male has a higher preference for reaching orgasm through oral sex',
        false),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'More than 60 times a year the average American couple have sex', true),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question('wearing socks during sex increases the chance of orgasm', true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question('Sex can cause temporary memory loss', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
    Question('Abraham Lincoln had no middle name', true),
    Question('Germany drinksthemost beerin theworld per person', false),
    Question('Ronald Reagan was a waiter during high school', false),
    Question(
        'The kids\’ bathroom on The Brady Bunch didn’t have a toilet', true),
    Question('Nemo is a puffer fish', false),
    Question(' There was noWorld Seriesin 1994', true),
    Question('John Lennon’s middle name was Edward', false),
    Question('Broccoli was once banned from the White House', true),
    Question('Japan has square watermelons', true),
    Question(
        'Pinocchio was the first animated, full-color Walt Disney feature film',
        false),
    Question(
        'The average age of losing your virginity in the United States is 15 years old',
        false),
    Question(
        'In the Star Wars franchise movies, the voice of Yoda is played by the same person who did the voices of Miss Piggy, Grover, and Cookie Monster',
        true),
    Question('Porcupines can float', true),
    Question('There are 100 dimples on a golf ball', false),
    Question(
        '64% of women report having an orgasm at their most recent sexual event',
        true),
    Question('Before becoming queen, Queen Elizabeth was a mechanic', true),
    Question(
        'All the kings in a standard deck of cards have a mustache', false),
    Question(
        'In some states, it’s illegal to eat specific foods while walking backwards',
        true),
    Question('Mario ofSuperMarioBros.famewasonce a carpenter', true),
    Question('The Boston Red Sox finally won a World Seriesin 2016', false),
    Question('Average Penis size is less than 5.5 Inches', true),
    Question('Length is more important than diameter (Penile)', false),
    Question('Woman can take more than 6 inches', false),
    Question('Cows sleep standing up', true),
    Question('The average speed of male ejaculation is 49 mph', false),
    Question('Polar bears\’ skin is black', true),
    Question('The first Olympic games honored Alexander the Great', false),
    Question('United States postage stamps may only honor people who are dead',
        false),
    Question('The name of Batman\’s butler is Albert', false),
    Question(
        'MayimBialik,who plays Amy Farrah Fowler on The Big Bang Theory,is a neuroscientist',
        true),
    Question('Donald Duck\’s sister is named Donna', false),
    Question('Twinkies originally had banana filling', true),
    Question('Alabama is the state printed on a Jack Daniel\’s label', false),
    Question('Elvis Presley had a twin brother', true),
    Question('Stress can make a man’s penis shrink.', true),
    Question('Lightning neverstrikesthe same place twice', false),
    Question('The name of the dog on a box of CrackerJack\’sis Spot', false),
    Question('There\’s a city in Pennsylvania called Intercourse', true),
    Question('People in Japan eat Kentucky Fried Chicken for Christmas dinner',
        true),
    Question(
        'Women between the ages of 25-44 average seven sexual partners in their lifetime',
        false),
    Question(
        'The average man ejaculates within 6 minutes during sexual intercourse',
        true),
    Question('The firstfood grown and eaten in space was potatoes', false),
    Question('Fortune cookieswere invented in China', false),
    Question('35% of single men claim to have faked an orgasm', true),
    Question('Red M&Ms disappeared for adecade', true),
    Question('You increase your penile size without surgery', false),
    Question('Barack Obama\’s favorite app is Candy Crush Saga', false),
    Question('Dalmatians are born with black spots', false),
    Question('In the famous commercial, Jake from State Farm was wearing jeans',
        false),
    Question('Johnny Depp is afraid of spiders', false),
    Question(
        'It\’s illegal in Georgia to eat fried chicken with a knife and fork',
        true),
    Question(
        'Most women under age 60 think about sex less than once a day.', true),
    Question(
        'Check how well you did by Checking Responses Below.\n\n'
        'If you have more X then you are Dumb. \n\n'
        'You are Dumb?',
        true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      if (_questionNumber == 70) {
        _questionNumber -= Random().nextInt(69);
        _count++;
      } else {
        _questionNumber = Random().nextInt(70 - _questionNumber);
        _count++;
      }
      if (_count == 15) {
        _questionNumber = 70;
      }
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_count >= 15) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = Random().nextInt(70);
    _count = 0;
  }
}
