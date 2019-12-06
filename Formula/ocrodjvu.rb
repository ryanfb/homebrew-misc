class Ocrodjvu < Formula
  desc "OCR for DjVu"
  homepage "https://jwilk.net/software/ocrodjvu"
  url "https://github.com/jwilk/ocrodjvu/releases/download/0.11/ocrodjvu-0.11.tar.xz"
  sha256 "c9eef66e0ed9f742b9e386381d92b89b412e07ebd625dc4023884637101e54f0"

  def install
    system "make", "install"
  end

  test do
    system "#{bin}/djvu2hocr", "--help"
  end
end
