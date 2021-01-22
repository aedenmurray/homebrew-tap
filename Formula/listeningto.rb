class ListeningTo < Formula
    desc ""
    homepage "https://github.com/aedenmurray/listeningto"
    url "https://files.aedenmurray.io/tools/listeningto.tar.gz"
    version "1.0"
    sha256 "8ebaf234ec090c37e7da0b0f91ab2951557a96cfab886c7c09be9e97a71cecbf"
    license :public_domain
    bottle :unneeded
  
    depends_on "jq"
  
    def install
          bin.install "listeningto.sh"
    end
    
    plist_options startup: true
    def plist; <<~EOS
        <?xml version="1.0" encoding="UTF-8"?>
        <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
        <plist version="1.0">
        <dict>
        <key>Label</key>
            <string>listeningto</string>
        <key>ProgramArguments</key>
        <array>
            <string>#{bin}/listeningto.sh</string>
        </array>
        <key>StartInterval</key>
        <integer>10</integer>
        </dict>
        </plist>
        EOS
    end
end