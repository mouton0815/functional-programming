module Main (main) where

-- TODO: Print result rather than returning String
mylog :: String -> String -> String
mylog level message = "[" ++ level ++ "] " ++ message

logDebug :: String -> String
logDebug message = mylog "DEBUG" message

main = do
  putStr "Hello, Haskell!\n"
  print (mylog "DEBUG" "Hello")
  print (logDebug "Hallo")
