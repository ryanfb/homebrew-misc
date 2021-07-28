class ColorizedLogs < Formula
  homepage "https://github.com/kilobyte/colorized-logs"
  desc "tools for logs with ANSI color"
  url "https://github.com/kilobyte/colorized-logs/archive/refs/tags/v2.5.tar.gz"
  sha256 "c484d489bdcbe57343f97c80b48d42b6de037af66103843cb63fb6d8679da340"

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
