class Complx < Formula
  desc "The LC-3 Simulator used in Georgia Tech CS2110."
  homepage "https://github.com/TricksterGuy/complx"
  version "4.15.5"
  url "https://github.com/TricksterGuy/complx.git", :using => :git, :revision => "9abb51f1b49ec17fd49b1833aa3941b18561496a"

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
