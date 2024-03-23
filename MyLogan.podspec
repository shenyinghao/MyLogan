Pod::Spec.new do |s|
    s.name             = 'MyLogan'
    s.version          = '0.0.1'
    s.summary          = 'Logan is a lightweight case logging system based on mobile platform.'

    s.homepage         = 'https://github.com/shenyinghao/MyLogan'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'shenyinghao' => '191728786@qq.com' }
    s.source           = { :git => 'https://github.com/shenyinghao/MyLogan.git', :tag => s.version.to_s }

    s.ios.deployment_target = '9.0'

    s.source_files = "MyLogan/iOS/*.{h,m}", "MyLogan/Clogan/*.{h,c}"
    s.public_header_files = "MyLogan/iOS/*.h"

    s.subspec 'mbedtls' do |mbedtls|
        mbedtls.source_files = "MyLogan/mbedtls/**/*.{h,c}"
        mbedtls.header_dir = 'mbedtls'
        mbedtls.private_header_files = "MyLogan/mbedtls/**/*.h"
        mbedtls.pod_target_xcconfig = { "HEADER_SEARCH_PATHS" => "${PODS_ROOT}/MyLogan/MyLogan/**"}
    end
end
