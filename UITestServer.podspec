Pod::Spec.new do |s|
  s.name         = "UITestServer"
  s.version      = "0.0.1"
  s.summary      = "Take screenshots in Xcode UI Tests (Swift)"
  s.description  = "UITestServer is to be be linked with the app being tested to serve UITestUtils requests. It uses private APIs for screenshot capture and screen rotation, but they're commented out in non-Debug builds."
  s.homepage     = "https://github.com/zmeyc/UITestUtils"
  s.license      = "MIT"
  s.author       = "Andrey Fidrya"

  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/zmeyc/UITestUtils.git",
                     # FIXME create and use `:tag`
                     :commit => '2aa15bcb1238ba3531b8696027b61820136841ad',
                     :submodules => true }

  s.source_files = 'UITestServer/UITestServer', 'UITestServer/UITestServer/ThirdParty/swifter/Sources/Swifter'
  s.exclude_files = 'UITestServer/UITestServer/ThirdParty/swifter/Sources/Swifter/DemoServer.swift'
end
