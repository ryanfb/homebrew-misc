class Libe57format < Formula
  desc "Library to provide read & write support for the E57 file format"
  homepage "https://github.com/asmaloney/libE57Format"
  url "https://github.com/asmaloney/libE57Format/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "19df04af07925bf43e1793534b0c77cb1346a2bee7746859d2fe1714a24f1c7d"
  license "BSL-1.0"

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
