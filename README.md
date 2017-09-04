
  13/01/2012 || 2000.00 || || 3000.00
  10/01/2012 || 1000.00 || || 1000.00
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
