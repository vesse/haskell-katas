--http://codingdojo.org/cgi-bin/wiki.pl?KataDictionaryReplacer
module KataDictReplacer.DictReplacer where

import qualified Data.Map as Map
import qualified Data.List as List (List.elemIndex)

notFound = -1

dictreplace :: String -> Map.Map String String -> String
dictreplace [] _ = []
dictreplace s m  =
  let
    s_idx = getidx s
    e_idx = getidx $ drop (s_idx + 1) s
    -- Take and drop with -1 work as they do with zero. These are here
    -- just to make the call in in block prettier
    s_head = take s_idx s
    s_repl = replkw (take e_idx $ drop (s_idx + 1) s) m
    s_tail = drop (s_idx + e_idx + 2) s

  in if s_idx /= notFound && e_idx /= notFound
     then
       -- Recurse with the replaced kw without it's first parameter so
       -- possible extra $ do not break handling
       s_head ++ (take 1 s_repl) ++ (dictreplace (drop 1 (s_repl ++ s_tail)) m)
     else s

-- Using Maybe could be more "Haskell" but we need ints. Also, to get the
-- actual int from a Maybe value would require including additional module
-- to get access to function fromMaybe
getidx :: String -> Int
getidx [] = notFound
getidx s  =
  case '$' `List.elemIndex` s of
    Just idx -> idx
    Nothing  -> notFound

replkw :: String -> Map.Map String String -> String
replkw [] _ = "$$"
replkw s m  =
  case Map.lookup s m of
    Just val -> val
    Nothing  -> '$' : s ++ "$"
