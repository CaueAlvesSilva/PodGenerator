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
            
            let gemfile = try rootFolder.createFile(named: "Gemfile")
            try gemfile.write(FrameworkTemplates.gemfile())
            log(gemfile)
            
            let podfile = try rootFolder.createFile(named: "Podfile")
            try podfile.write(FrameworkTemplates.podfile(podName))
            log(podfile)
            
            let podscpec = try rootFolder.createFile(named: "\(podName).podspec")
            try podscpec.write(FrameworkTemplates.podspec(podName))
            log(podscpec)
            
            let frameworkFolder = try rootFolder.createSubfolder(named: podName)
            
            let infoPLIST = try frameworkFolder.createFile(named: "Info.plist")
            try infoPLIST.write(FrameworkTemplates.infoPLIST())
            log(infoPLIST)
            
            let header = try frameworkFolder.createFile(named: "\(podName).h")
            try header.write(FrameworkTemplates.header(podName))
            log(header)
            
            let classesFolder = try frameworkFolder.createSubfolder(named: "Classes")
            
            let mainClass = try classesFolder.createFile(named: "\(podName).swift")
            try mainClass.write(FrameworkTemplates.mainClass(podName))
            log(mainClass)
            
            let testsFolder = try rootFolder.createSubfolder(named: "\(podName)Tests")
            
            let unitTestInfoPLIST = try testsFolder.createFile(named: "Info.plist")
            try unitTestInfoPLIST.write(FrameworkTemplates.unitTestInfoPLIST())
            log(unitTestInfoPLIST)
            
            let unitTest = try testsFolder.createFile(named: "\(podName)Tests.swift")
            try unitTest.write(FrameworkTemplates.unitTest(podName))
            log(unitTest)
            
        } catch {
            throw PodGeneratorErrors.FrameworkCreationFailure
        }
    }
}
