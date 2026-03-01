class Turf < Formula
  desc "Turf compiler"
  homepage "https://github.com/turf-lang/turf-lang"
  version "v0.5.0"

  if OS.mac?
    url "https://github.com/turf-lang/turf-lang/releases/download/#{version}/turf-#{version}-macos-arm64.tar.gz"

    sha256 "1476d149b2e7545fd7e002cbaf5b7e21c21646a8fb66585f55baeb65891f97d1"
  elsif OS.linux?
    url "https://github.com/turf-lang/turf-lang/releases/download/#{version}/turf-#{version}-linux-x86_64.tar.gz"
    sha256 "2d30f574f3ab23e3c2f9caf45f9f4e48a0f446046ffb8d7391a10777104703bd"
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

