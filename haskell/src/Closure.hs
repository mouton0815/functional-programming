module Main (main) where

-- Creating a stateful counter is hard in Haskell, because all expressions are constant.
-- An escape is using Monads, in particular IO and IORef.
-- Note that this is not a nice style in Haskell.
-- State-varying operations should be avoided.

import Data.IORef
import System.IO.Unsafe (unsafePerformIO)

counter :: IORef Int
counter = unsafePerformIO (newIORef 0)

incrementCounter :: IO Int
incrementCounter = do
    cnt <- readIORef counter
    let newCnt = cnt + 1
    writeIORef counter newCnt
    return newCnt


main = do
    incrementCounter >>= (\x -> print x) -- 1
    incrementCounter >>= (\x -> print x) -- 2
    incrementCounter >>= (\x -> print x) -- 3