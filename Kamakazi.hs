module Kamakazi (
        ctx,
        alter
) where

ctx :: String -> Bool

ctx name = do
    if name == "Fate"
       then True
    else False

alter :: Bool -> String

alter table = do
    if table == True
       then "Ok"
    else "No"
