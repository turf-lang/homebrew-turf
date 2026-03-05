class Turf < Formula
  desc "Turf compiler"
  homepage "https://github.com/turf-lang/turf-lang"
  version "v0.7.0"

  if OS.mac?
    url "https://github.com/turf-lang/turf-lang/releases/download/#{version}/turf-#{version}-macos-arm64.tar.gz"
    sha256 "e79f78939aa247257e981777af52ff48a3a88271240fa37d264851cb6fefaa1f"
  elsif OS.linux?
    url "https://github.com/turf-lang/turf-lang/releases/download/#{version}/turf-#{version}-linux-x86_64.tar.gz"
    sha256 "a79ec5b207ca1657ea0aa3cf87186cce58d40dc89a8a86263030d302ba722da8"
  end

  def install
    bin.install "turf"
    if Dir.exist?("scripts")
      bin.install Dir["scripts/*"]
    end
  end

  test do
    system "#{bin}/turf", "--version"
  end
end

