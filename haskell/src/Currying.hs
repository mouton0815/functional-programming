module Main (main) where

logger :: String -> String -> IO ()
logger level message = print $ "[" ++ level ++ "] " ++ message

logDebug :: String -> IO ()
logDebug message = logger "DEBUG" message

main = logDebug "Hello, World!" -- "[DEBUG] Hello, World!"
