module Paths_learning_haskell (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch


version :: Version
version = Version {versionBranch = [0,0,0], versionTags = []}
bindir, libdir, datadir, libexecdir :: FilePath

bindir     = "/usr/local/google/home/vpoddar/.cabal/bin"
libdir     = "/usr/local/google/home/vpoddar/.cabal/lib/learning-haskell-0.0.0/ghc-7.6.3"
datadir    = "/usr/local/google/home/vpoddar/.cabal/share/learning-haskell-0.0.0"
libexecdir = "/usr/local/google/home/vpoddar/.cabal/libexec"

getBinDir, getLibDir, getDataDir, getLibexecDir :: IO FilePath
getBinDir = catchIO (getEnv "learning_haskell_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "learning_haskell_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "learning_haskell_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "learning_haskell_libexecdir") (\_ -> return libexecdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
