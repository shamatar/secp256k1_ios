Pod::Spec.new do |s|
s.name             = "secp256k1_ios"
s.version          = "0.0.1"
s.summary          = "Reference sepc256k1 implementation as pod"

s.description      = <<-DESC
secp256k1 libraty portable pod
DESC

s.homepage         = "https://github.com/shamatar/secp256k1_ios"
s.license          = 'MIT'
s.author           = { "Alex Vlasov" => "alex.m.vlasov@gmail.com" }
s.source           = { :git => 'https://github.com/shamatar/secp256k1_ios.git', :tag => s.version.to_s }
s.social_media_url = 'https://twitter.com/shamatar'

s.module_name      = 'secp256k1_ios'
s.ios.deployment_target = "9.0"
s.osx.deployment_target = "10.10"
s.pod_target_xcconfig = {
	# 'OTHER_SWIFT_FLAGS' => '$(inherited)',
	'OTHER_CFLAGS' => '-DHAVE_CONFIG_H=1',
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/secp256k1_ios/secp256k1_ios/"'
}
s.source_files = "secp256k1_ios/libsecp256k1-config.h"
s.private_header_files = "secp256k1_ios/libsecp256k1-config.h"
# s.public_header_files = 'secp256k1_ios/include/*.h'

s.xcconfig = {
	# 'OTHER_SWIFT_FLAGS' => '$(inherited)',
	'OTHER_CFLAGS' => '-DHAVE_CONFIG_H=1',
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/secp256k1_ios/secp256k1_ios/"'
}

s.subspec 'src' do |ss|
    ss.source_files = 'secp256k1_ios/src/*.{c,h}'
    ss.private_header_files = 'secp256k1_ios/src/*.h'
    ss.subspec 'modules' do |sss|
    	sss.source_files = 'secp256k1_ios/src/modules/*.{c,h}'
        sss.private_header_files = 'secp256k1_ios/src/modules/*.h'
end

end

s.subspec 'contrib' do |ss|
    ss.source_files = 'secp256k1_ios/contrib/*.{c,h}'
    ss.private_header_files = 'secp256k1_ios/contrib/*.h'
end

s.subspec 'include' do |ss|
    ss.source_files = 'secp256k1_ios/include/*.{h}'
    # ss.private_header_files = 'secp256k1_ios/include/*.h'
end

end
