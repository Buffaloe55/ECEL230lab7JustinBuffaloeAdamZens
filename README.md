# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Adam Zens, Justin Buffaloe
## Summary
For this week’s lab we looked at how computers actually subtract, building on the adder circuits from last lab. In Verilog we built three modules. The first was a half subtractor, which works a lot like the half adder but outputs a difference and a borrow instead of a sum and a carry, and we checked it against the truth table in simulation. The second was a 4-bit One’s Complement adder that reuses our full adder from last lab. The tricky part was the end-around carry, since wiring it wrong creates a combinatorial loop that can make the simulation loop infinatly. The third was an 8-bit Two’s Complement converter, which also uses the full adder and just converts a number between positive and negative rather than adding two. All three modules were wired together in a single top.v, with the switches as inputs and the LEDs as outputs. The big takeaway is why Two’s Complement ends up being the standard way computers handle subtraction. It is more efficient and uses less hardware. 

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
Half adder looks to see if you have a carry over value, while the half subtractor looks to see if you need to borrow from the next bit from the left to carry out the subtraction. You only need to borrow if it is A = 0 B = 1, and the half subtractor checks for that.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
It requires more circuits to function, whereas in the Two's Complement you just flip all the complements which uses less resources. One's Compliment is overall more convoluted and harder to use.

### 3 - What is the edge case and problem with Two’s Complement number representation?
However many bits you have, you cannot go past that. For the Two's Complement on a 8 bit, you can go from -128 to 127 because the carry over one once you flip all the bits will add to get rid of the negative zero. Since you need to have a 0 in there, you can only go up to i-1 on the positive side of the bit value.