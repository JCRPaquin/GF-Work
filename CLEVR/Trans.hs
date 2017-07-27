module Main where

import PGF
import System.Exit
import System.IO

main = do
  pgf <- readPGF "CLEVR.pgf"
  line <- getContents
  let res = doTrans pgf line
      code = if res then ExitSuccess else ExitFailure 1 in
    exitWith code

doTrans pgf str = case parseAllLang pgf (startCat pgf) str of
  [] -> False
  _  -> True
