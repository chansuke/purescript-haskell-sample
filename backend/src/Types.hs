{-# LANGUAGE TemplateHaskell #-}
module Types where

import Data.Aeson
import Data.Aeson.TH
import GHC.Generics (Generic)

data User = User
  { sId        :: Int
  , sNames     :: [String]
  } deriving (Eq, Show, Generic)

$(deriveJSON defaultOptions ''User)

users :: [User]
users = [ User 1 ["Isaac", "Newton"]
        , User 2 ["Albert", "Einstein"]
        ]
