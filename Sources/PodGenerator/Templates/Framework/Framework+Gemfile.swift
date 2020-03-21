//
//  Framework+Gemfile.swift
//  PodGenerator
//
//  Created by Cauê Alves on 21/03/20.
//

import Foundation

extension FrameworkTemplates {
    
    static func gemfile() -> String {
        let template = {
            """
            Encoding.default_external = Encoding::UTF_8
            Encoding.default_internal = Encoding::UTF_8
            source "https://rubygems.org"
            gem "xcpretty"
            gem "slather"
            gem "cocoapods", "1.8.1"
            gem "fastlane"
            gem "xcode-install"
            """
        }()
        return template
    }
}
