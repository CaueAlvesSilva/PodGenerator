//
//  WorkspacetGenerator.swift
//  PodGenerator
//
//  Created by Cauê Alves on 22/03/20.
//

import Foundation
import Files

class WorkspaceGenerator: GeneratorType {
    
    static func generate(_ podName: String, _ rootFolder: Folder) throws {
        do {
            
            let script = try rootFolder.createFile(at: "genWorkspace.sh")
            try script.write(WorkspaceTemplates.script(podName))
            
            let terminalTask = Process()
            terminalTask.launchPath = "/bin/bash"
            terminalTask.arguments = ["-c", "sh genWorkspace.sh"]
            try terminalTask.run()
            terminalTask.waitUntilExit()
            
            try script.delete()
            
        } catch {
            throw PodGeneratorErrors.WorkspaceGenerationFailure
        }
    }
}

