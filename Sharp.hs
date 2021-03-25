module Sharp
    (def)
    where

import Prelude hiding (mod)
import Control.Monad (zipWithM)
import qualified Packets ((?))

data Object = None
            | Bool Bool
            | Some [String]
            | Int Int
            | Maybe Int

def :: String -> (a, b) -> Object

data Something = X
               | String String
               | Void

def x y =
    Some [x]
