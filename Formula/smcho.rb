# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Smcho < Formula
  desc "Just simple test formula for Homebrew"
  homepage "http://prosseek.com"
  # shasum -a 256 FILE_NAME
  url "https://dl.dropboxusercontent.com/u/10773282/share/2015/smcho.gz"
  sha256 "e5840777c4c0d5d1bccf684af486612b6b6bebe71a946fda48870fc599763635"

  # depends_on "cmake" => :build
  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    bin.install "smcho"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test smcho`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    #system "false"
  end
end
