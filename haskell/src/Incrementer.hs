-- Variant of the counter that increments by parameter
-- Kudos to https://stackoverflow.com/a/6349651

module Main (main) where

import Data.IORef

type Incrementer = Int -> IO Int

makeIncrementer :: IO Incrementer
makeIncrementer = do
    r <- newIORef 0
    return (\i -> do { modifyIORef r (+i); readIORef r })

main = do
    incrBy <- makeIncrementer
    incrBy 1 >>= (\x -> print x) -- 1
    incrBy 2 >>= (\x -> print x) -- 3
    incrBy 3 >>= (\x -> print x) -- 6
