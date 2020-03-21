//
//  Framework+Header.swift
//  PodGenerator
//
//  Created by Cauê Alves on 21/03/20.
//

import Foundation

extension FrameworkTemplates {
    
    static func header(_ podName: String) -> String {
        let template = {
            """
            //
            //  \(podName).h
            //  \(podName)
            //

            #import <Foundation/Foundation.h>

            //! Project version number for \(podName).
            FOUNDATION_EXPORT double \(podName)VersionNumber;

            //! Project version string for \(podName).
            FOUNDATION_EXPORT const unsigned char \(podName)VersionString[];

            // In this header, you should import all the public headers of your framework using statements like #import <\(podName)/PublicHeader.h>
            """
        }()
        return template
    }
}
