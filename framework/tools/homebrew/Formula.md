# Architecture

- Use `Hardware::CPU.arm` to determine if the device is using Apple Silicon
  ```ruby
  class Foo < Formula
    if Hardware::CPU.arm?
      url "https://github.com/Zehua-Chen/latextools/releases/download/0.6.0/latextools-osx-arm64.tar.gz"
      sha256 "afecf3a59d2d319271190d29185e459a94c57609dd1484b6f4e996a7b5fdf5a1"
    else
      url "https://github.com/Zehua-Chen/latextools/releases/download/0.6.0/latextools-osx-x64.tar.gz"
      sha256 "31d14cff837b5ccc33cd68a09f09487c47afbf8c9031c8def8389d1090087006"
    end
  end
  ```
