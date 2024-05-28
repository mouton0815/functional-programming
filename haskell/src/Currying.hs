module Main (main) where

mylog :: String -> String -> IO ()
mylog level message = print $ "[" ++ level ++ "] " ++ message

logDebug :: String -> IO ()
logDebug message = mylog "DEBUG" message

main = do
  logDebug "Hello, World!" -- "[DEBUG] Hello, World!"
