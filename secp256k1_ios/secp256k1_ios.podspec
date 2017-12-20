Pod::Spec.new do |s|
s.name             = "secp256k1_ios"
s.version          = "0.0.1"
s.summary          = "Reference sepc256k1 implementation as pod"

s.description      = <<-DESC
secp256k1 pod
DESC

s.homepage         = "https://github.com/stephencelis/SQLite.swift"
s.license          = 'MIT'
s.author           = { "Alex Vlasov" => "alex.m.vlasov@gmail.com" }
s.source           = { :git => "https://github.com/stephencelis/SQLite.swift.git", :tag => s.version.to_s }
s.social_media_url = 'https://twitter.com/shamatar'

s.module_name      = 'secp256k1_ios'
s.ios.deployment_target = "9.0"
s.tvos.deployment_target = "9.1"
s.osx.deployment_target = "10.10"
s.watchos.deployment_target = "2.2"
s.default_subspec  = 'standard'
s.pod_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/secp256k1'
}
s.source_files = 'secp256k1_ios/src/*.{c,h}, secp256k1_ios/src/modules/*.{c,h}, secp256k1_ios/contrib/*.{c,h}'
s.private_header_files = 'secp256k1_ios/secp256k1_ios.h'
s.preserve_path = 'secp256k1_ios/secp256k1_ios.modulemap'
ss.xcconfig = {
    'OTHER_SWIFT_FLAGS' => '$(inherited) -DHAVE_CONFIG_H'
    'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/secp256k1'
}

end
end
