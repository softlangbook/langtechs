module Paths_haskell_fsml (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/simon/Development/bscthesis/haskell-fsml/.cabal-sandbox/bin"
libdir     = "/home/simon/Development/bscthesis/haskell-fsml/.cabal-sandbox/lib/x86_64-linux-ghc-7.10.1/haske_Gq1KO2ERxM16MFa2MD9Yqh"
datadir    = "/home/simon/Development/bscthesis/haskell-fsml/.cabal-sandbox/share/x86_64-linux-ghc-7.10.1/haskell-fsml-0.1.0.0"
libexecdir = "/home/simon/Development/bscthesis/haskell-fsml/.cabal-sandbox/libexec"
sysconfdir = "/home/simon/Development/bscthesis/haskell-fsml/.cabal-sandbox/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "haskell_fsml_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "haskell_fsml_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "haskell_fsml_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "haskell_fsml_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "haskell_fsml_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
