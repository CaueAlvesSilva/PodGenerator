//
//  SampleApp+ProjectYML.swift
//  PodGeneratorCore
//
//  Created by Cauê Alves on 20/03/20.
//

import Foundation

extension SampleAppTemplates {
    
    static func projectYML() -> String {
        let template = {
            """
            #==================================================================================================
            # Xcodegen documentation
            # https://github.com/yonaskolb/XcodeGen/blob/master/Docs/ProjectSpec.md#target-scheme
            #==================================================================================================

            #==================================================================================================
            name: SampleApp
            #==================================================================================================

            settings:
              MARKETING_VERSION: "1.0.0"
              SWIFT_VERSION: 5.0
              VERSIONING_SYSTEM: "apple-generic"
              CODE_SIGN_IDENTITY: "iPhone Developer"
              CLANG_ENABLE_OBJC_WEAK: "YES"
              ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES: "YES"
              ARCHS: $(ARCHS_STANDARD)

            options:
              xcodeVersion: "11.1"
              createIntermediateGroups: true
              deploymentTarget:
                iOS: "10.1"

            #==================================================================================================
            targets:
            #==================================================================================================

              SampleApp:

                platform: iOS
                type: application
                
                sources:
                  - path: SampleApp

                settings:
                  PRODUCT_BUNDLE_IDENTIFIER: br.com.rico.mobile.SampleApp
                  INFOPLIST_FILE: SampleApp/Info.plist
                  CODE_SIGN_STYLE: "Manual"
                  DEVELOPMENT_TEAM: ""
                  PROVISIONING_PROFILE: "Wildcard"
                  
                  ENABLE_BITCODE: "NO"
                  TARGETED_DEVICE_FAMILY: "1"
                  LD_RUNPATH_SEARCH_PATHS: "$(inherited) @executable_path/Frameworks"
                  ARCHS: $(ARCHS_STANDARD)

            #==================================================================================================
            """
        }()
        return template
    }
}
