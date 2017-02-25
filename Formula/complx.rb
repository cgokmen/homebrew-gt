class Complx < Formula
  desc "The LC-3 Simulator used in Georgia Tech CS2110."
  homepage "https://github.com/TricksterGuy/complx"
  version "4.15.4"
  url "https://github.com/TricksterGuy/complx.git", :using => :git, :revision => "882ff4687511fc59990a96cd8982d0d4f958b27d"

  # This pulls from the master branch instead of the specified version tag
  head do
    url "https://github.com/TricksterGuy/complx.git", :using => :git, :branch => "master"
  end

  depends_on "cmake" => :build
  depends_on "wxmac" => :required

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
