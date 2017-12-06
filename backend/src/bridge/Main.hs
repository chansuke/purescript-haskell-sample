module Main where

import Data.Proxy                 (Proxy(..))
import Language.Purescript.Bridge (buildBridge,
                                   defaultBridge,
                                   mkSumType,
                                   writePSTypes)
import Types (User)

main :: IO ()
main =
    writePSTypes
        "../frontend/src"
        (buildBridge, defaultBridge)
        myTypes
    where
      myTypes =
        [ mkSumType (Proxy :: Proxy User)]
