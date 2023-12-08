#### Author: ChatGPT
##### I created a *WithdrawalValidator* class to encapsulate the logic for validating the amount. This makes the code more modular and easier to test.
##### I replaced the *AmountExceptionCeil* and *AmoutnExceptionNeg* classes with a single *WithdrawalException* class, which takes an error message as a parameter.
##### The *validateWithdrawal* function now throws a generic *WithdrawalException* with the appropriate error message.