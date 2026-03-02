class Turf < Formula
  desc "Turf compiler"
  homepage "https://github.com/turf-lang/turf-lang"
  version "v0.6.0"

  if OS.mac?
    url "https://github.com/turf-lang/turf-lang/releases/download/#{version}/turf-#{version}-macos-arm64.tar.gz"
    sha256 "53a8fade084434f437d7d0f9ed04011cbe97c3094857a1aaed58eba01dfdf681"
  elsif OS.linux?
    url "https://github.com/turf-lang/turf-lang/releases/download/#{version}/turf-#{version}-linux-x86_64.tar.gz"
    sha256 "bf73bba242513f91c77edd98dc5a756042ca49fd377c6b4c6e9bb5c70b8f9dff"
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

