import Text.Printf (printf)

-- This function should return a list [area, volume].
solve :: Int -> Int -> [Int] -> [Int] -> [Double]
solve l r a b = [summation f ld rd ad bd, summation area ld rd ad bd]--Complete this function--
    where ld = (fromIntegral l)::Double
          rd = (fromIntegral r)::Double
          ad = map (\x -> (fromIntegral x)::Double) a
          bd = map (\x -> (fromIntegral x)::Double) b

f x a b = sum $ map (\(m, n) -> m * x ** n) (zip a b)

area x a b = pi * (f x a b) ** 2

summation f l r a b = sum $ map (\d -> f d a b * 0.001) [l, l+0.001..r]



--Input/Output.
main :: IO ()
main = getContents >>= mapM_ (printf "%.1f\n"). (\[a, b, [l, r]] -> solve l r a b). map (map read. words). lines
