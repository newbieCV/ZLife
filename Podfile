# Uncomment the next line to define a global platform for your project
platform :ios, '13.0'

# 解决引用三方库不能在arm64机器编译
post_install do |installer_representation|
    installer_representation.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['ONLY_ACTIVE_ARCH'] = 'NO'
            config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
        end
    end
end

target 'ZLife' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for ZLife
  pod 'SnapKit', '~> 5.0.0'
  
  pod 'ZLNavigation', :path => 'Lib/ZLNavigation'

  # Debug
  pod 'LookinServer', :configurations => ['Debug']

end
