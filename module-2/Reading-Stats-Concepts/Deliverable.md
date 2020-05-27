![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | Reading About Statistic Concepts

## Challenge 1: What is the difference between expected value and mean?
You know both concepts but, is there a difference? Are they synonims? Start investigating. 

As a good reference (once you have looked for some information) you have   [this](http://expected.news/value2) article.

*Yes there is a difference between expected value and mean. The thing they have in common is that both can give you an estimate of expected value. So if you know the mean of a previously done experiment and you have to guess the outcome of a new experiment, you will probably guess a number that is equal to or close to the mean value. 

*However, the difference between the value that you expect does not need to be the same as the outcome value. It can be that the outcome of the experiment is not equal to the guessed number. This is because the mean has nothing to do with the probability of getting to that mean. The mean is dependent on frequency, so the more you guess, the more likely that you guess correctly if you guess the mean.

*The expected value takes into account the probability and gives you an estimate as to how likely you are to guess correctly.

Good reference: https://www.quora.com/Under-what-situations-is-the-expected-value-equal-to-mean


## Challenge 2: What is the "problem" in science with p-values?
We have told you that a lot of scientifical investigations are based on p-values. The last week, Nature magazine published [an article](http://nature.social/statistical4) regarding the problem. Start digging on it!

Don't hesitate to use more articles if you want to :)

*The problem in science with p-values is that the threshold of the p-values are used to make yes-or-no decisions. Nowadays decisions rely on the threshold of statistical significance. When a p-value is 'accepted' (P<0.05) so is the hypothesis. And when the p-value is too high, it is dismissed and so is the hypothesis. However, this does not mean there is or isn't a proven effect. The lower the P-value and therefore the higher the confidence interval, the more more confidence we have in the fact that the hypothesis is true. The lower the confidence interval, the 'easier' it is to accept hypothesis. However, this does not mean that if P > 0.05 it isn't tue. We just have less confidence too accept it. In other words, the P value is not set in stone and can differ even when experiments are perfectly replicated. Thus, it is not reliable for yes-or-no decision-making.

*Instead of making decisions based on the p-value, it is important to emphasize the observed effect or point estimate and its intervals. The closer to the point estimate, the higher the confidence. The values that fall outside of the intervals limit are not incompatible, they are just less compatible. This will avoid blunt conclusions and encourage details in statistical articles to explain the results and it's evidence next to the statistical numbers.

* To conclude: Do not use p value to decide whether a result refutes or supports a scientific hypothesis. Discuss the reasons of your results, both statistical but also background evidence, data quality and understanding of underlying mechanisms

## Challenge 3: Applying testing to a specific case: A/B testing.
A/B testing is a widely used tool to understand differences between two samples. It is a way to measure the impact of something we did: 
* A marketing campaign.
* A new feature in our application. 
* A new design in our application.
* A different flow in the User Experience flow.

To do this, is very important first to design our experiment. 
* We need to know how we are measuring the impact. If people has the behaviour we want with this new implementation.
* We choose a control group (people who doesn't have/see the new change) and the group which will see the new change. 
* We think about how much data do we need.
* We measure the difference between them.

One example:
Our application has a lot of mini-games. We want people to reach the games that we think are the best but the behaviour is not the expected, they don't reach them.

So we call a designer and after a lot of work he shows us a new design for our application: we will add a botton specific for that kinf of games inviting the users to click on it:

*Click here to discover cool games!*

We think it will work but can we be sure? So instead of implementing this new botton for all users, we implement it for 10% and we compare the results with the users that didn't have it. Is there a significant difference? Is our botton working?

Read more about A/B testing with a couple of examples:

[Another example about Netflix here](http://select.video/artwork4)

[What happened to Basecamp](http://millions.social/tested7)

[An example with Python](http://math.social/tested3)

[A cool general explanation](http://arts.show/tested7)

So, take one single example in the articles you just read, which specific test/s would you apply? (We want you just to do a draft and think a little bit how to apply the tests you already know in this case)