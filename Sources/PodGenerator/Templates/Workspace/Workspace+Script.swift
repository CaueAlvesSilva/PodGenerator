//
//  Script+GenWorkspace.swift
//  PodGenerator
//
//  Created by Cauê Alves on 22/03/20.
//

import Foundation

extension WorkspaceTemplates {
    
    static func script(_ podName: String) -> String {
        let template = {
            """
            #!/bin/bash
            
            #<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
            echo 
            echo ==================================================
            echo '>> Installing Xcodegen'
            echo ==================================================
            echo
            
            brew install xcodegen
            #>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            
            
            #<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
            echo
            echo ==================================================
            echo '>> Installing bundler'
            echo ==================================================
            echo

            cd \(podName)
            sudo gem install bundler
            bundle install
            bundle update --bundler
            #>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            
            
            #<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
            echo
            echo ==================================================
            echo '>> Generating workspace'
            echo ==================================================
            echo

            cd SampleApp
            xcodegen generate

            cd ..
            xcodegen generate

            bundle exec pod install
            #>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            """
        }()
        return template
    }
}

