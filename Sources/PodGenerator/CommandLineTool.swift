//
//  CommandLineTool.swift
//  PodGenerator
//
//  Created by Cauê Alves on 20/03/20.
//

import Foundation
import Files

public final class CommandLineTool {
    
    private let arguments: [String]
    private var podName: String?

    public init(arguments: [String] = CommandLine.arguments) {
        self.arguments = arguments
        podName = arguments.object(index: 1)
    }

    public func run() throws {
        do {
            guard let podName = podName, !podName.isEmpty else {
                throw PodGeneratorErrors.MissingPodNameArgument
            }
            
            logStart()
            let podFolder = try Folder.current.createSubfolder(named: podName)
            try FrameworkGenerator.generate(podName, podFolder)
            try SampleAppGenerator.generate(podName, podFolder)
            logEnd(podName)
            
        } catch {
            throw error
        }
    }
}
