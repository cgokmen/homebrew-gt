class Complx < Formula
  desc "The LC-3 Simulator used in Georgia Tech CS2110."
  homepage "https://github.com/TricksterGuy/complx"
  version "4.16.5"
  url "https://github.com/TricksterGuy/complx.git", :using => :git, :tag => "4.16.5"

  # This pulls from the master branch instead of the specified version tag
  head do
    url "https://github.com/TricksterGuy/complx.git", :using => :git, :branch => "master"
  end

  depends_on "cmake" => :build
  depends_on "pkg-config" => :build
  depends_on "wxmac" => :required
  depends_on "glib" => :required

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make"
      system "make", "install"
    end
  end

  test do
    system "true"
  end
end
