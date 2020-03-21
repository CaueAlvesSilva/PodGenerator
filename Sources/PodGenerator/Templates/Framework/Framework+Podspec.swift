//
//  Framework+Podspec.swift
//  PodGenerator
//
//  Created by Cauê Alves on 21/03/20.
//

import Foundation

extension FrameworkTemplates {
    
    static func podspec(_ podName: String) -> String {
        let template = {
            """
            Pod::Spec.new do |spec|

              spec.name = '\(podName)'
              spec.version = '0.1.0'
              spec.summary = 'Framework description.'
              spec.homepage = 'https://framework.com'
              spec.author = { 'Framework Author' => "author@email.com" }
              spec.license = { :type => 'Private' }
              spec.source = { :git => 'https://framework-source-code.git',
                              :tag => spec.version.to_s }

              spec.ios.deployment_target = '10.0'
              spec.requires_arc = true

              spec.cocoapods_version = '>= 1.5'
              spec.swift_version = '5.0'

              spec.source_files = '\(podName)/**/*.{h,m,swift}'

              spec.resource_bundles = {
                '\(podName)' => [
                  '\(podName)/**/*.xcassets',
                  '\(podName)/**/*.xib'
                ]
              }

              #spec.dependency 'Dependency', '~> 1.0.0'

            end
            """
        }()
        return template
    }
}
