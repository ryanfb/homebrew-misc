class Pdf2djvu < Formula
  desc "PDF to DjVu converter"
  homepage "https://jwilk.net/software/pdf2djvu"
  url "https://github.com/jwilk/pdf2djvu/releases/download/0.9.13/pdf2djvu-0.9.13.tar.xz"
  sha256 "e0ab16d83129625c86df7c121eddf286458f63cb81ae791e5a76df10a3ab4c63"

  depends_on "djvulibre"
  depends_on "e2fsprogs"
  depends_on "exiv2"
  depends_on "gettext"
  depends_on "pkg-config"
  depends_on "poppler"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/pdf2djvu", "--help"
  end
end
