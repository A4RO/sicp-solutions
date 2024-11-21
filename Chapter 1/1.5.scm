;With an interpreter that uses applicative-order evaluation, there will be an infinite loop since the program will try to evaluate (p) and the procedure (p) will just keep calling itself recursively.
;With an interpreter that uses normal-order evaluation, 0 will be returned since the program will never get to evaluating (p).
