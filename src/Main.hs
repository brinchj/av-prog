module Main (main)
where

import qualified UmixVM as UVM
import System ( getArgs )

main :: IO ()
main = do
  args <- getArgs
  prog <- return $ head args
  contents <- readFile prog
  opcodes <- return $ UVM.chop_opcodes contents
  putStrLn $ show $ length opcodes
  putStrLn $ show $ (length opcodes) * 4
