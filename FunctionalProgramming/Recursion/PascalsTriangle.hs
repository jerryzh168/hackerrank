-- |

module Main where

triangle :: Int -> [Int]
triangle 1 = [1]
triangle 2 = [1, 1]
triangle n = let prev = triangle (n-1) in
  (1:(map (\i -> prev !! i + prev !! (i+1)) [0,1..length prev-2])) ++ [1]


main :: IO ()
main = do
  n <- readLn
  mapM_ (\x -> let row = triangle x in
                    do mapM_ (putStr . (\c -> show c ++ " ")) row
                       putStrLn "") [1..n]
