![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | Statistics Foundations
In this lab we are going to put into practice what we learned about the foundations of statistics. You won't need to use Python, just your brain and a little bit of *Markdown*. 


## Challenge 1
One player rolls two dices. Describe the measurable space and the random variable for:
* A. The values that the player obtains.
    Measurable space = The set of the scores on the two dice so {1,2,3,4,5,6) x {1,2,3,4,5,6} meaning (1,1),(1,2),(1,3) etc.
    Random variable = The values that show on the dice, for example (1,1)

* B. The sum of the values obtained.
    Measurable space = the sum of outcome sets {1,2,3,4,5,6) x {1,2,3,4,5,6} meaning (1,1),(1,2),(1,3) etc.
    Random variable = the sum of the scores on the two dice so example 1+1 = 2,1+2=3 

* C. The maximum value obtained after rolling both dices.
    Measurable space = If both dice have a number of 6, the measurable space is (6,6)
    Random variable = The highest set of the scores on the two dice (6,6) = 12

Describe the following events:
* Case A: Both values are greater than 5.
    Subset = If both dice have a number of 6, the measurable space is (6,6)
    Outcome = The highest set of the scores on the two dice (6,6) = 12

* Case B: The sum of values is even.
    Subset = If all are even the sample space is {2,4,6} x {2,4,6}
    Outcome = The values that show on the dice, for example 2+2 = 4

* Case C: The maximum is the value of both rolls.
    Subset = If both dice have a number of 6, the measurable space is (6,6)
    Outcome = The highest set of the scores on the two dice (6,6) = 12

## Challenge 2
One player picks two cards from a poker deck. Describe the measurable space and the random variable for: 

clubs (♣), diamonds (♦), hearts (♥) and spades (♠)
Jack (J), Queen (Q), King (K)

* A. The number of figures he picks. 
    Measurable space = (number,number),(figure,number),(number,figure),(figure,figure)
    Random variable = When picking 2 cards, one of them will be in the measurable space

* B. The sum of card values. Consider that the value of figures is 10 and the value of aces is 15.
    Measurable space = the sum of the outcomes of {2,3,4,5,6,7,8,9,10,J,Q,K,A} x {2,3,4,5,6,7,8,9,10,J,Q,K,A}
    Random variable = the sum of the two cards can range from 2+2 = 4 to A+A = 30

* C. The number of hearts or spades he picks.
    Measurable space = (number,♥),(♥,♥),(number,♦),(♦,♦),(♥,♦)
    Random variable = When picking 2 cards, one of them will be in the measurable space

Describe the following events:
* Case A: The number of figures in the cards the player picked is two.
    Subset = All of the ways you get two facecards: (J,J),(Q,Q),(K,K),(Q,J),(K,J),(Q,K)
    Outcome = When picking 2 cards, one of them will be in the measurable space

* Case B: The sum of card values is 17.
    Subset = (K,7),(Q,7),(J,7),(A,2)
    Outcome = When picking 2 cards, one of them will be in the measurable space

* Case C: The value of both cards is less than 8.
    Subset = (2,2)(2,3),(2,4),(2,5),(3,3),(3,4)
    Outcome = When picking 2 cards, one of them will be in the measurable space

## Challenge 3
Two players roll a dice. Describe the measurable space and the random variable for:

* A. The score of player A.
    Measurable space = 1,2,3,4,5,6
    Random variable = One of the measurable space

* B. The greatest score.
    Measurable space = 6
    Random variable = One of the measurable space

* C. The earnings of player A if the game rules state that:  
"The player with the greatest score gets a coin from the other player.".
    Measurable space = Coin or no coin
    Random variable = One of the measurable space

* D. The earnings of player A if the game rules state that:  
"The player with the greatest score gets as many coins as the difference between the score of player A and player B.". 
    Measurable space = Maximum of the diff between score A and B in coins or no coins
    Random variable = One of the measurable space

Describe the following events:
* Case A: The score of player A is 2.
    Subset = 2
    Outcome = One of the measurable space

* Case B: The greatest score is lower or equal than 2.
    Subset = 1,2
    Outcome = One of the measurable space

* Case C: Considering the case where the winner gets as many coins as the difference between scores (D), describe: 
  * Player A wins at least 4 coins.
    Subset = Difference = 4
    Outcome = One of the measurable space
    
  * Player A loses more than 2 coins.
    Subset = 
    Outcome = One of the measurable space

  * Player A neither wins nor loses coins.
    Subset = 
    Outcome = One of the measurable space

## Bonus challenges
### Bonus Challenge 1
Three players take balls from a box. Inside that box there are red, blue, green and black balls. The players can take three balls at mosts with the following rules:

* If the ball is blue, they can take another ball.
* If the ball is green, they get one point and they can take another ball.
* If the ball is red, they can’t take another ball.
* If the ball is black, they lose one point and they can’t take another ball.

Describe the measurable space and the random variable for:
* A. Player A wins. Do not consider ties as a win.
* B. Player A and B get the same points.
* C. All players get 0 points.

### Bonus Challenge 2
Consider the situation of bonus challenge 1 but now with four players. Does anything change in your solutions? What are the changes in each case?

### Bonus Challenge 3
One player takes three balls from a box. Inside the box there are 5 balls: two of them are black and the other three are white. 

Describe the measurable space and the random variable for:
* A. The number of white balls if every time we take a ball we keep it.
* B. The number of white balls if every time we take a ball we put it back again into the box.
* C. The number of black balls if every time we take a ball we keep it.
* D. The number of black balls if every time we take a ball we put it back into the box.