# Overview

Type `IO a` **represents an IO action and contains a value**

- `IO ()` does not return anything
- `IO` is a [monad](Monad/README.md); works with `do`
- `IO` is an applicative [functor](../functions/Functor.md)

# IO Functions

- `putChar`
- `putStr`
- `putStrLn`
- `print`: print a value implementing `Show`
- `getChar`
- `getLine`
- `getContents`: read entire input
- `interact`: read, apply f and then print
- `readIO`: parse a string in a `do`
- `readLn`: read a line and parse
- `sequence :: [IO a] -> IO [a]`: applies a list of IO actions and captures the
  result
- `System.Environment`:
  - `getArgs`
  - `getProgName`
- `System.IO`: file handling
  - `openFile`
  - `stderr`
  - `hGetContents`
  - `hPutStrLn`
  - `hClose`
  - `hGetChar`
  - `hGetLine`
  - `hPutStr`
  - `hFlush`
  - `hSetBuffering`
  - `openTempFile`
  - `writeFile`
  - `appendFile`
  - `withFile`
  - `readFile`
- `System.Exit`
  - `exitFailure`: terminate program with a failure code
- `System.Directory`:
  - `removeFile`
  - `renameFile`
  - `renamePath`
  - `listDirectory`
