//
//  Framework+MainClass.swift
//  PodGenerator
//
//  Created by Cauê Alves on 21/03/20.
//

import Foundation

extension FrameworkTemplates {
    
    static func mainClass(_ podName: String) -> String {
        let template = {
            """
            //
            //  \(podName).swift
            //  \(podName)
            //

            import Foundation

            public class \(podName) {
                
                @discardableResult public class func helloWorld() -> String {
                    let message = "Hello World from \(podName)!!"
                    print(message)
                    return message
                }
            }
            """
        }()
        return template
    }
}
