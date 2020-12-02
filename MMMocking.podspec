#
# MMMocking. Part of MMMTemple.
# Copyright (C) 2015-2020 MediaMonks. All rights reserved.
#

Pod::Spec.new do |s|

  s.name = "MMMocking"
  s.version = "0.1.2"
  s.summary = "Mock data using hip lorem ipsum and pseudo random numbers"
  s.description =  s.summary
  s.homepage = "https://github.com/mediamonks/#{s.name}"
  s.license = "MIT"
  s.authors = "MediaMonks"
  s.source = { :git => "https://github.com/mediamonks/#{s.name}.git", :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'

  s.subspec 'ObjC' do |ss|
    ss.source_files = [ "Sources/#{s.name}ObjC/*.{h,m}" ]
  end

  s.swift_versions = '4.2'
  s.static_framework = true
  s.pod_target_xcconfig = {
    "DEFINES_MODULE" => "YES"
  }
  s.subspec 'Swift' do |ss|
    ss.source_files = [ "Sources/#{s.name}/*.swift" ]
    ss.dependency "#{s.name}/ObjC"
  end

  s.test_spec 'Tests' do |ss|
    ss.source_files = "Tests/*.{m,swift}"
  end

  s.default_subspecs = 'ObjC', 'Swift'
end
