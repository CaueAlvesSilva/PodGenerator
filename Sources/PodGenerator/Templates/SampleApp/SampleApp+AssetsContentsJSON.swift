//
//  SampleApp+AssetsContentsJSON.swift
//  PodGenerator
//
//  Created by Cauê Alves on 20/03/20.
//

import Foundation

extension SampleAppTemplates {
    
    static func assetsContentsJSON() -> String {
        let template = {
            """
            {
              "info" : {
                "version" : 1,
                "author" : "xcode"
              }
            }
            """
        }()
        return template
    }
}
