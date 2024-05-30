module Main (main) where

-- Creating a stateful counter is hard in Haskell, because all expressions are constant.
-- An escape is using Monads, in particular IO and IORef, to hold the state.
-- Note that this is not nice Haskell style; state-varying operations should be avoided.
-- Kudos to https://stackoverflow.com/a/6349651

import Data.IORef

type Counter = Int -> IO Int

makeCounter :: IO Counter
makeCounter = do
    r <- newIORef 0
    return (\i -> do { modifyIORef r (+i); readIORef r })

main = do
    incrBy <- makeCounter
    incrBy 1 >>= (\x -> print x) -- 1
    incrBy 1 >>= (\x -> print x) -- 2
    incrBy 1 >>= (\x -> print x) -- 3
