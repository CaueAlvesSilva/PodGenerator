//
//  FrameworkGenerator.swift
//  PodGenerator
//
//  Created by Cauê Alves on 21/03/20.
//

import Foundation
import Files

class FrameworkGenerator: GeneratorType {
    
    static func generate(_ podName: String, _ rootFolder: Folder) throws {
        do {
            
            log("Creating \(podName) framework files")
            
            let projectYML = try rootFolder.createFile(named: "project.yml")
            try projectYML.write(FrameworkTemplates.projectYML(podName))
            log(projectYML)
            
            let gemfile = try rootFolder.createFile(at: "Gemfile")
            try gemfile.write(FrameworkTemplates.gemfile())
            log(gemfile)
            
            let podfile = try rootFolder.createFile(at: "Podfile")
            try podfile.write(FrameworkTemplates.podfile(podName))
            log(podfile)
            
            let podscpec = try rootFolder.createFile(at: "\(podName).podspec")
            try podscpec.write(FrameworkTemplates.podspec(podName))
            log(podscpec)
            
            let frameworkFolder = try rootFolder.createSubfolder(named: podName)
            
            let infoPLIST = try frameworkFolder.createFile(at: "Info.plist")
            try infoPLIST.write(FrameworkTemplates.infoPLIST())
            log(infoPLIST)
            
            let header = try frameworkFolder.createFile(at: "\(podName).h")
            try header.write(FrameworkTemplates.header(podName))
            log(header)
            
            let classesFolder = try frameworkFolder.createSubfolder(named: "Classes")
            
            let mainClass = try classesFolder.createFile(at: "\(podName).swift")
            try mainClass.write(FrameworkTemplates.mainClass(podName))
            log(mainClass)
            
            let testsFolder = try rootFolder.createSubfolder(named: "\(podName)Tests")
            
            let unitTestInfoPLIST = try testsFolder.createFile(at: "Info.plist")
            try unitTestInfoPLIST.write(FrameworkTemplates.unitTestInfoPLIST())
            log(unitTestInfoPLIST)
            
            let unitTest = try testsFolder.createFile(at: "\(podName)Tests.swift")
            try unitTest.write(FrameworkTemplates.unitTest(podName))
            log(unitTest)
            
        } catch {
            throw PodGeneratorErrors.FrameworkCreationFailure
        }
    }
}
