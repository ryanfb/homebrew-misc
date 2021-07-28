class Scantailor < Formula
  desc "Interactive post-processing tool for scanned pages"
  homepage "http://scantailor.org/"
  url "https://github.com/scantailor/scantailor/archive/RELEASE_0_9_12_1.tar.gz"
  sha256 "ef5d5bdca207ab00701121a32e9b95c7c7353c642b9538b3f9ca040d8d1a5dde"

  depends_on "cmake" => :build
  depends_on "boost"
  depends_on "cartr/qt4/qt@4"
  depends_on "jpeg"
  depends_on "libtiff"
  depends_on "libx11"

  def install
    system "cmake", ".",
           "-DPNG_INCLUDE_DIR=#{MacOS::X11.include}",
           "-DCMAKE_CXX_FLAGS=-std=c++11 -stdlib=libc++",
           *std_cmake_args
    system "make", "install"
  end
end
