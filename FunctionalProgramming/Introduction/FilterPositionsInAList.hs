f lst = -- Fill up this Function
 case lst of
    [] -> []
    x:[] -> []
    x:y:xs -> y:f xs

-- This part deals with the Input and Output and can be used as it is. Do not modify it.
main = do
   inputdata <- getContents
   mapM_ putStrLn $ map show $ f $ map (read :: String -> Int) $ lines inputdata
