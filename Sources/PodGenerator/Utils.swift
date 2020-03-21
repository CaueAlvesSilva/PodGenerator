//
//  Utils.swift
//  Files
//
//  Created by Cauê Alves on 21/03/20.
//

import Foundation

public enum PodGeneratorErrors: Swift.Error {
    
    case MissingPodNameArgument
    case SampleAppCreationFailure
    case FrameworkCreationFailure
}

public struct SampleAppTemplates {}
public struct FrameworkTemplates {}

public extension CommandLineTool {
    
    func logStart() {
        print("\n")
        print(String(repeating: "=", count: 50))
        print(">> Starting PodGenerator ☕️")
        print(String(repeating: "=", count: 50))
        print("\n")
    }
    
    func logEnd(_ podName: String) {
        print("\n")
        print(String(repeating: "=", count: 50))
        print(">> PodGenerator successfully created \(podName) 🚀")
        print(String(repeating: "=", count: 50))
        print("\n")
    }
}

public extension Array {
    
    func object(index: Int) -> Element? {
        if index >= 0 && index < self.count {
            return self[index]
        }
        return nil
    }
}
