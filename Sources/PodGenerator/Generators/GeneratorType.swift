//
//  GeneratorType.swift
//  PodGenerator
//
//  Created by Cauê Alves on 21/03/20.
//

import Foundation
import Files

protocol GeneratorType: class {
    
    static func generate(_ podName: String, _ rootFolder: Folder) throws
}

extension GeneratorType {
    
    static func logHeader(_ header: String) {
        print("\n")
        print(String(repeating: "=", count: 50))
        print(">> \(header)")
        print(String(repeating: "=", count: 50))
        print("\n")
    }
    
    static func log(_ file: File) {
        print(">> Created \(file.name)")
    }
}
