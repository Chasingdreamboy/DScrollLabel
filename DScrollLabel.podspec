#
#  Be sure to run `pod spec lint DScrollLabel.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "DScrollLabel"
  s.version      = "1.0.0"
  s.summary      = "a label that it's text can automatically scroll"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description        = 'The label can display the text that can scroll infinitely.'
  s.homepage           = "https://github.com/Chasingdreamboy/DScrollLabel"

  s.license            = 'MIT'

  s.author             = { "Chasingdreamboy" => "email@address.com" }
  s.social_media_url   = "https://github.com/Chasingdreamboy"
  s.platform           = :ios

  s.source             = { :git => "https://github.com/Chasingdreamboy/DScrollLabel.git", :tag => "1.0.0" }


  s.source_files       =  'DScrollLabel/**/*.h'
  s.preserve_paths   = 'DScrollLabel/libDScrollLabel.a'
  # s.libraries        = 'DScollLabel', 'z'
  s.requires_arc       = true
  s.framework          = 'UIKit'
  s.xcconfig         = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/DScrollLabel"',
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/include/DScrollLabel"'
  }


end
