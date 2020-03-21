//
//  FrameworkTests+UnitTest.swift
//  PodGenerator
//
//  Created by Cauê Alves on 21/03/20.
//

import Foundation

extension FrameworkTemplates {
    
    static func unitTest(_ podName: String) -> String {
        let template = {
            """
            //
            //  \(podName)Tests.swift
            //  \(podName)Tests
            //

            import XCTest
            @testable import \(podName)

            class \(podName)Tests: XCTestCase {
                
                func testHellorWorld() {
                    XCTAssertEqual(\(podName).helloWorld(), "Hello World from \(podName)!!")
                }
            }
            """
        }()
        return template
    }
}
