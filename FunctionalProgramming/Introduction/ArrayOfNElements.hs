fn n
    | n == 0 = []
    | otherwise = 1:(fn $ n-1)

main = do
n <- readLn :: IO Int
print (length(fn(n)))