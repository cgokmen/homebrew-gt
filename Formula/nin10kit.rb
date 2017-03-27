class Nin10kit < Formula
  desc "A set of tools for doing homebrew game development, includes look up table generators and and image to C exporter for Nintendo's Gameboy Advance, DS, and 3DS systems, used in Georgia Tech CS2261."
  homepage "https://github.com/TricksterGuy/nin10kit"
  version "0.3"
  url "https://github.com/TricksterGuy/nin10kit.git", :using => :git, :revision => "f5d67bf968963e7cd4699cae8007d5bdc873fc7c"

  # This pulls from the master branch instead of the specified version tag
  head do
    url "https://github.com/TricksterGuy/nin10kit.git", :using => :git, :branch => "master"
  end

  depends_on "cmake" => :build
  depends_on "wxmac" => :required
  depends_on "imagemagick" => :required

  def install
    mkdir "build" do
      system "cmake", "-DENABLE_MAGICK7_SUPPORT=ON", "..", *std_cmake_args
      system "make"
      system "make", "install"
    end
  end

  test do
    system "true"
  end
end
