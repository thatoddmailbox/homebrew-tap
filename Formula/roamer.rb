class Roamer < Formula
  desc "Tool that makes handling database migrations easy"
  homepage "https://github.com/thatoddmailbox/roamer"
  url "https://github.com/thatoddmailbox/roamer/archive/v0.1.1.tar.gz"
  sha256 "88ceeec110b3918ebc947b9aa6a4a33b96bcd77baeea952117be5067296d4126"

  bottle do
    root_url "https://raw.githubusercontent.com/thatoddmailbox/homebrew-tap/master/bin"
    sha256 cellar: :any_skip_relocation, arm64_big_sur:   "e99608e27d8e0d2ff16889ff24f41f6179022dd8e82c723526b1323622061e8f"
    sha256 cellar: :any_skip_relocation, arm64_monterey:  "e99608e27d8e0d2ff16889ff24f41f6179022dd8e82c723526b1323622061e8f"
    sha256 cellar: :any_skip_relocation, arm64_ventura:   "e99608e27d8e0d2ff16889ff24f41f6179022dd8e82c723526b1323622061e8f"
    sha256 cellar: :any_skip_relocation, big_sur:         "e99608e27d8e0d2ff16889ff24f41f6179022dd8e82c723526b1323622061e8f"
    sha256 cellar: :any_skip_relocation, monterey:        "e99608e27d8e0d2ff16889ff24f41f6179022dd8e82c723526b1323622061e8f"
    sha256 cellar: :any_skip_relocation, ventura:         "e99608e27d8e0d2ff16889ff24f41f6179022dd8e82c723526b1323622061e8f"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./cli/"
  end

  test do
    system "#{bin}/roamer", "-version"
  end
end
