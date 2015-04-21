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
version = Version {versionBranch = [0,1,0,0], versionTags = []}
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/simon/Library/Haskell/bin"
libdir     = "/Users/simon/Library/Haskell/ghc-7.8.3-x86_64/lib/haskell-fsml-0.1.0.0"
datadir    = "/Users/simon/Library/Haskell/share/ghc-7.8.3-x86_64/haskell-fsml-0.1.0.0"
libexecdir = "/Users/simon/Library/Haskell/libexec"
sysconfdir = "/Users/simon/Library/Haskell/etc"

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
