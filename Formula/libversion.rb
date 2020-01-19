class Libversion < Formula
  desc "Advanced version string comparison library"
  homepage "https://github.com/repology/libversion"
  url "https://github.com/repology/libversion/archive/3.0.1.tar.gz"
  sha256 "2b4ac5a6aa84a6b1795d9194c260517b709c9723d020ca61d9030ad2cfd7ea57"

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    assert_match "=", shell_output("#{bin}/version_compare 1.0 1.0.0")
  end
end
