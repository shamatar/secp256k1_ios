Pod::Spec.new do |s|
s.name             = "secp256k1_ios"
s.version          = "0.0.9"
s.summary          = "Reference sepc256k1 implementation as pod"

s.description      = <<-DESC
Bitcoin secp256k1 library portable pod. Swift binding are provided in web3swift pod.
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
    'SWIFT_INCLUDE_PATHS' => '${PODS_ROOT}',
	'OTHER_CFLAGS' => '-DHAVE_CONFIG_H=1 -Wno-shorten-64-to-32 -Wno-unused-function -Wno-conditional-uninitialized',
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/secp256k1_ios/secp256k1_ios"'
}
s.prepare_command = <<-CMD
                        sed -i '' -e 's:include/::g' ./**/**/*.h
                        sed -i '' -e 's:include/::g' ./**/**/**/*.h
                        sed -i '' -e 's:include/::g' ./**/**/**/**/*.h
                        sed -i '' -e 's:include/::g' ./**/**/*.c
                        sed -i '' -e 's:src/modules/recovery/:modules/recovery/:g' ./**/**/*.c
                        sed -i '' -e 's:src/modules/echd/:modules/ecdh/:g' ./**/**/*.c
                        sed -i '' -e 's:contrib/::g' ./**/**/*.c
                        sed -i '' -e 's:contrib/::g' ./**/**/*.c
                   CMD

s.source_files = "secp256k1_ios/{src,include,contrib}/*.{h,c}", "secp256k1_ios/src/modules/{recovery,ecdh}/*.{h,c}", "secp256k1_ios/libsecp256k1-config.h", "secp256k1_ios/secp256k1_ios.h"
s.private_header_files = "secp256k1_ios/*.h", "secp256k1_ios/{contrib,src}/*.h", "secp256k1_ios/src/modules/{recovery, ecdh}/*.h"
s.public_header_files = "secp256k1_ios/{include}/*.h"
s.exclude_files = 'secp256k1_ios/src/test*.{c,h}', 'secp256k1_ios/src/gen_context.c', 'secp256k1_ios/src/*bench*.{c,h}', 'secp256k1_ios/src/*bench*.{c,h}', 'secp256k1_ios/src/modules/{recovery,ecdh}/*test*.{c,h}'

end
