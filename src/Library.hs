{-# Language ForeignFunctionInterface #-}
module Library where

import Language.Haskell.Interpreter
import Foreign.C

runHaskell :: String -> IO Int
runHaskell source =
  do writeFile "L.hs" source
     res <- runInterpreter $
       do setImports ["Prelude"]
          interpret source (as :: Int)
     case res of
       Right i -> return i
       Left  e -> print e >> return 0

runHaskellC :: CString -> IO CInt
runHaskellC ptr =
  do str <- peekCString ptr
     i   <- runHaskell str
     return (fromIntegral i)

foreign export ccall runHaskellC :: CString -> IO CInt
