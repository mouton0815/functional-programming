-- Creating a stateful counter is hard in Haskell, because all expressions are constant.
-- An escape is using Monads, in particular IO and IORef, to hold the state.
-- Note that this is not nice Haskell style; state-varying operations should be avoided.
-- Kudos to https://stackoverflow.com/a/6349651

module Main (main) where

import Data.IORef

type Counter = IO Int

makeCounter :: IO Counter
makeCounter = do
    r <- newIORef 0
    return (do { modifyIORef r (+1); readIORef r })

main = do
    counter <- makeCounter
    counter >>= (\x -> print x) -- 1
    counter >>= (\x -> print x) -- 2
    counter >>= (\x -> print x) -- 3
