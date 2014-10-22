-- tail recursion 
-- seem like Haskell has some optimization for this 
-- cause not only it take less space but also less time


import System.Environment

fib 1 = 0 
fib 2 = 1
fib n = fib (n-2) +  fib (n-1)   
 
main = do
    --input <- getLine
    args <- getArgs
    print . fib . read  $ head args 
