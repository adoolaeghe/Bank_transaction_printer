# Bank Tech Test

After describing the user stories, I completed each of them using TDD. I decided to divide the project in 3 seperates classes (Bank/transations/Printer) trying to keep a good seperation of concern for each object.

### User Stories

```
As a user, 
So that I can secure my money, 
I would like to deposit money to the bank. 

As a user, 
So that I can spend my money, 
I would like to withdraw money from the bank.

As a user, 
So that I can track my spending, 
I would like to print the transactions history with the bank.
```

  ```
 ### To use
 Clone the directory
 ```
 git clone https://github.com/eugeniaguerrero/bank-tech-test.git
 cd bank-tech-test


 In pry:
 ```
 $ pry
 >> require './lib/bank'
 >> require './lib/account_statement'
 ```
 To make a deposit:
 ```
 >> bank = Bank.new
 >> bank.deposit(1000)
 ```
 To make a withdrawal:
 ```
 >> bank.withdrawal(500)
 ```
 To print the bank statement:
 ```
 >>
 ```
