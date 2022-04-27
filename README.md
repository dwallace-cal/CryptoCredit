# 🏗 Scaffold-ETH/ CryptoCredit (group 8)

> serverless front-end on IPFS 🚀

🧪 MVP, report.sol:

![CryptoCredit](https://github.com/dwallace-cal/repo/blob/master/Screenshot%20(905).png | width=100)


# 🏄‍♂️ Future Optimizations:
Pull data with etherscan api after user signing then implement credit algorithm:

The report will include:
    A brief overview of the report, including 
    The length of history of this address
    The total number of transactions
    The top five most types of transactions

> Custom report options:
A bar chart showing the number of different types of transactions
A pie chart showing the top five types of transactions and the others
A line chart for the value of ETH held in the account over time
A bar chart comparing eth going in and out of the account (In fact, it should be just two bars where one is income and the other is the spending)
A line chart for the accumulation of Gas Fee
A bar chart to represent the frequency of transactions per month
A bar chart on the stake time (holding time before it’s being sold) for NFT assets (a day, a week, a month, six months, more than six months)
Some warnings on the risky transactions/behavior, if any, and these would include:
Check if there are frequently transactions between two or a few addresses
Check if there’s a habit of making a test transaction before sending a large amount 
Check if there’s a long idle time in the account(like if the account has been idle for a long time and then there are some really frequent transactions)

> The Algorithm/Pseudo-code for the Credit Score:
Base Score: 350
Length of address transaction history: 100 (20%)
History time: 50 
Score = max(1,  (today - first date of transaction - 30))
Score = min(5, log(score))
Score = score * 10
Number of transactions: 50 
Score = max(1, number of transactions)
Score = min(2, lb(score))
Score = score * 25
Amount of ETH in the account: 25 (5%)
If the amount of eth is in the increasing trend (maybe linear regression and curve is positive)
Average time of NFT holding: 50 (10%)


Amounts going in / out of the account in the past six month: 100 (20%)
We need to calculate the average ETH account for the past six month
Diff = in - out;
Rate = diff / avg
If rate > -0.7:
Rate = min (0.3, rate)
Rate = rate + 0.7
Score = 25 + rate * 50
If rate <= -0.7:
Rate = max(-5, rate + 0.7)
Score = 25 - rate * 5


History of loaning: 150(30%)
Not sure about the actual function, but it should be something like a combination of:
The amount owed
The history of paying back (in time)
Risky behavior speculations: 75 (15%)
If there’s a risk pattern of frequent transactions among a few transactions: 30
Each found pattern - 7.5
Or it can be simplified by doing a 0/30
If there’s a habit of making a test transaction before sending a large amount: 25
Score = 0/25
Check if there’s a long idle time in the account(like if the account has been idle for a long time and then there are some really frequent transactions: 20
0/20


Sds

300 - 850: 550 points
300 - 629: bad
630 - 689: good
690 - 719: great
720 - 850: excellent






> clone/fork 🏗 scaffold-eth:

```bash
git clone https://github.com/scaffold-eth/scaffold-eth.git
```

> install and start your 👷‍ Hardhat chain:

```bash
cd scaffold-eth
yarn install
yarn chain
```

> in a second terminal window, start your 📱 frontend:

```bash
cd scaffold-eth
yarn start
```

> in a third terminal window, 🛰 deploy your contract:

```bash
cd scaffold-eth
yarn deploy
```


