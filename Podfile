post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      if config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'].to_f < 12.0
       config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
      end
    end
  end
 end

target 'Dtsapplication4' do
  use_frameworks!
	pod 'Alamofire'

	pod 'FSPagerView', '0.8.3'
end
