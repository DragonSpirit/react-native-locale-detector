require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "react-native-locale-detector"
  s.version      = package['version']
  s.summary      = "React Native local device language detector"

  s.authors      = { "Dylan Vann" => "dylan@dylanvann.com" }
  s.homepage     = "https://github.com/makedirectory/react-native-locale-detector#readme"
  s.license      = "MIT"
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/makedirectory/react-native-locale-detector.git", :tag=> "v#{s.version}" }
  s.source_files  = "RNI18n/**/*.{h,m}"

  s.dependency 'React'
end
