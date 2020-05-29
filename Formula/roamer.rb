class Roamer < Formula
  desc "Tool that makes handling database migrations easy"
  homepage "https://github.com/thatoddmailbox/roamer"
  url "https://github.com/thatoddmailbox/roamer/archive/v0.1.0.tar.gz"
  sha256 "5753582c665d156b596bbff4184496e68d452e356dda0954cafc6f2d5b9cf343"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./cli/"
  end

  test do
    system "#{bin}/roamer", "-version"
  end
end
