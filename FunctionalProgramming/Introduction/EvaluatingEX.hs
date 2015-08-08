fact :: Double -> Double
fact 0 = 1
fact n = n * fact(n-1)

solve :: Double -> Double
solve x = sum $ map (\y -> x ** y / fact y) [0,1..9]

main :: IO ()
main = getContents >>= mapM_ print. map solve. map (read::String->Double). tail. words