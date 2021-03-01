module Main where

import qualified Data.Monoid

dub :: Int -> Int

dub x =
    x + x



nor :: (Float, Float, Float) -> (Float, Float)

nor (x, y, z) =
    (x1, x2) where
        x1 = e + sqrt d / (2 * x)
        x2 = e - sqrt d / (2 * x)
        d = y * y - 4 * x * z
        e = - y / (2 * x)

xor :: Int -> Int

xor insane
    | insane == 0 = 1
    | insane /= 0 = insane * xor (insane - 1)

qsk :: String -> String

qsk method =
    "Yo " <> method

main :: IO ()

main = do
    print (qsk "Haskelletion")
    print (xor 5)
    print (nor (1, -5, 7))
