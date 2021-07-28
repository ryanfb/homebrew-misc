class E57tools < Formula
  desc "Tools for working with E57 format 3D data"
  homepage "https://github.com/ryanfb/e57tools"
  url "https://github.com/ryanfb/e57tools/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "ab5f196bf010c92c752fb59aa6e3c7c60c123fd88dc6b583d09a66ec2430f11e"
  license "BSL-1.0"

  depends_on "cmake" => :build
  depends_on "boost"
  depends_on "ryanfb/misc/libe57format"
  depends_on "xerces-c"

  def install
    system "cmake", ".",
           "-DBOOST_ROOT=#{Formula["boost"].opt_prefix}",
           "-DLIBE57FORMAT_INSTALL_DIR=#{Formula["libe57format"].opt_prefix}",
           "-DXERCES_ROOT=#{Formula["xerces-c"].opt_prefix}",
           *std_cmake_args
    system "make", "install"
  end
end
