Pod::Spec.new do |s|
s.name		= 'HFNet'
s.version	= '0.0.2'
s.summary	= 'An DataHandle view on iOS'
s.homepage	= 'https://github.com/MichaelZL/HFNet'
s.license	= { :type => 'MIT' }
s.platform	= 'ios'
s.author	= {'MichaelZL' => '821035751@qq.com'}
s.ios.deployment_target = '9.0'
s.source	= {:git => 'https://github.com/MichaelZL/HFNet.git', :tag => s.version}
s.source_files	= 'HFNet/*.swift'
s.requires_arc	= true
s.frameworks	= 'UIKit','WebKit'
s.dependency 'AFNetworking'
s.swift_version	= '4.1'
end
