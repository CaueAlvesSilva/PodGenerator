//
//  Framework+Podfile.swift
//  PodGenerator
//
//  Created by Cauê Alves on 21/03/20.
//

import Foundation

extension FrameworkTemplates {
    
    static func podfile(_ podName: String) -> String {
        let template = {
            """
            source 'https://github.com/CocoaPods/Specs.git'

            platform :ios, '10.0'

            inhibit_all_warnings!
            use_frameworks!

            workspace '\(podName)'

            target '\(podName)' do

              #pod 'Dependency', '~> 1.0.0'

              target '\(podName)Tests' do
            
                  #pod 'Dependency', '~> 1.0.0'
              end
            end

            target 'SampleApp' do

              project 'SampleApp/SampleApp'
              pod '\(podName)', :path => './'
            end
            """
        }()
        return template
    }
}
