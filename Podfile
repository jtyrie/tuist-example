platform :ios, '9.0'
use_frameworks!

workspace 'tuist-projects.xcworkspace'

target 'TuistExample' do
    pod 'SDWebImage'
    pod 'SnapKit'
end

target 'middle' do
    project 'Modules/middle/middle.xcodeproj'
    pod 'SnapKit'
    
    target 'middleSampleApp' do
        pod 'SnapKit'        
    end
end
