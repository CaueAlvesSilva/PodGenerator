//
//  SampleApp+Xcodegen.swift
//  PodGenerator
//
//  Created by Cauê Alves on 21/03/20.
//

import Foundation

extension SampleAppTemplates {
    
    static func xcodegen(_ podName: String) -> String {
        let template = {
            """
            #!/bin/bash

            echo .
            echo ==================================================================
            echo Xcodegen
            echo ==================================================================
            echo .

            cd \(podName)
            xcodegen generate
            
            cd SampleApp
            xcodegen generate
            """
        }()
        return template
    }
}
