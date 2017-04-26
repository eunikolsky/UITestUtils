Pod::Spec.new do |s|
  s.name         = "UITestUtils"
  s.version      = "0.0.1"
  s.summary      = "Take screenshots in Xcode UI Tests (Swift)"
  s.description  = "UITestUtils is to be used in UI tests. It contains extensions to XCTestCase. Some functions use sockets to communicate with the app being tested if something needs to be done on the app side."
  s.homepage     = "https://github.com/zmeyc/UITestUtils"
  s.license      = "MIT"
  s.author       = "Andrey Fidrya"

  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/zmeyc/UITestUtils.git",
                     # FIXME create and use `:tag`
                     :commit => '2aa15bcb1238ba3531b8696027b61820136841ad' }

  s.source_files = 'UITestUtils/UITestUtils/*'
  s.exclude_files = 'UITestUtils/UITestUtils/UITestUtils.h'
  s.dependency   'SimulatorStatusMagic', '1.9.2'
  s.framework    = 'XCTest'
end
