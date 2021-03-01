module Main where

import Control.Exception
import qualified Data.Monoid
import Kamakazi

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

oneMore lst =
    map more' lst
        where more' x = x + 1

yemoja :: Floating god
        => god
        -> god
        -> god
yemoja r q =
    r + q

main :: IO ()

main = do
    let file = "test.rs"
    content <- 
        readFile file
    print content

    ok <- 
        try (evaluate (5 `div` 0)) :: IO (Either SomeException Int) 

    case ok of 
      Left ex -> 
          putStrLn $ "Err -> " ++ show ex 
      Right val -> 
          putStrLn $ "The answer was: " ++ show val
      _ -> pure ()

    
    print
        . ctx $ "Fate"
    print
        . alter $ True
    print
        . oneMore $ [1,2,3]
    print
        . qsk $ "Haskelletion"
    print 
        . xor $ 5
    print
        . nor $ (1, -7, 5)
