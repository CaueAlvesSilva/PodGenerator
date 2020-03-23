//
//  Framework+ProjectYML.swift
//  PodGenerator
//
//  Created by Cauê Alves on 21/03/20.
//

import Foundation

extension FrameworkTemplates {
    
    static func projectYML(_ podName: String) -> String {
        let template = {
            """
            #==================================================================================================
            # Xcodegen documentation
            # https://github.com/yonaskolb/XcodeGen/blob/master/Docs/ProjectSpec.md#target-scheme
            #==================================================================================================

            #==================================================================================================
            name: \(podName)
            #==================================================================================================

            settings:
              MARKETING_VERSION: "1.0.0"
              SWIFT_VERSION: 5.0
              VERSIONING_SYSTEM: "apple-generic"
              CODE_SIGN_IDENTITY: "iPhone Developer"
              CLANG_ENABLE_OBJC_WEAK: "YES"
              ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES: "YES"

            options:
              xcodeVersion: "11.1"
              createIntermediateGroups: true
              deploymentTarget:
                iOS: "10.1"

            configs:
              Debug: debug
              Release: release

            #==================================================================================================
            targets:
            #==================================================================================================

            #____________________________________________________________
            # Framework

              \(podName):

                platform: iOS
                type: framework
                
                sources:
                  - path: \(podName)

                settings:
                  CODE_SIGN_STYLE: "Manual"
                  DEVELOPMENT_TEAM: ""
                  PRODUCT_BUNDLE_IDENTIFIER: br.com.mobile.\(podName)
                  INFOPLIST_FILE: \(podName)/Info.plist

                  ENABLE_BITCODE: "NO"
                  TARGETED_DEVICE_FAMILY: "1"
                  LD_RUNPATH_SEARCH_PATHS: "$(inherited) @executable_path/Frameworks"

            #____________________________________________________________
            # Tests

              \(podName)Tests:

                platform: iOS
                type: bundle.unit-test
                
                sources:
                  - path: \(podName)Tests
                
                dependencies:
                  - target: \(podName)

            #==================================================================================================
            schemes:
            #==================================================================================================

              Framework:
                build:
                  targets:
                    \(podName): [run, test]
                  parallelizeBuild: true
                  buildImplicitDependencies: true
                run:
                  config: Debug
                test:
                  config: Debug
                  gatherCoverageData: true
                  coverageTargets:
                    - \(podName)
                  targets:
                    - \(podName)Tests

            #==================================================================================================
            """
        }()
        return template
    }
}
