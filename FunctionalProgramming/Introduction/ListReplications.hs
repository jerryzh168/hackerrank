import Control.Monad
f n arr = -- Complete this Function
    join $ map (take n . repeat) arr

-- This part handles the Input and Output and can be used as it is. Do not modify this part.
main = do
   n <- readLn :: IO Int
   inputdata <- getContents
   mapM_ putStrLn $ map show $ f n $ map (read :: String -> Int) $ lines inputdata