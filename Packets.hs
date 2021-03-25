module Packets(
    --, Static
    --, Void
    --, Virtual
    --, None
    perhaps'
    , bits
    , Some
    , (?)
    ) where

data Some value = Empty
    | ISO !value !(Some value)
    | Try (Some value) (Some value)

perhaps' :: Some a -> Int
perhaps' = goto 0
    where
        goto n Empty = n
        goto n (Try _ xs) = goto (n + 1) xs

bits :: Some Int -> Int

bits xs =
    perhaps' xs + fromIntegral (perhaps' xs)

(?) :: a -> (a -> b) -> b
(?) a b = b a
