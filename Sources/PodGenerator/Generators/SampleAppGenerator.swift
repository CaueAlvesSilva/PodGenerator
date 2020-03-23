//
//  SampleAppGenerator.swift
//  PodGenerator
//
//  Created by Cauê Alves on 20/03/20.
//

import Foundation
import Files

class SampleAppGenerator: GeneratorType {
    
    static func generate(_ podName: String, _ rootFolder: Folder) throws {
        do {
            
            log("Creating SampleApp files")
            
            let projectFolder = try rootFolder.createSubfolder(named: "SampleApp")
            
            let projectYML = try projectFolder.createFile(named: "project.yml")
            try projectYML.write(SampleAppTemplates.projectYML())
            log(projectYML)
            
            let classesFolder = try projectFolder.createSubfolder(named: "SampleApp")
            
            let appDelegate = try classesFolder.createFile(named: "AppDelegate.swift")
            try appDelegate.write(SampleAppTemplates.appDelegate())
            log(appDelegate)
            
            let infoPLIST = try classesFolder.createFile(named: "Info.plist")
            try infoPLIST.write(SampleAppTemplates.infoPLIST())
            log(infoPLIST)
            
            let viewController = try classesFolder.createFile(named: "ViewController.swift")
            try viewController.write(SampleAppTemplates.viewController(podName))
            log(viewController)
            
            let assetsFolder = try classesFolder.createSubfolder(named: "Assets.xcassets")
            let contentsJSON = try assetsFolder.createFile(named: "Contents.json")
            try contentsJSON.write(SampleAppTemplates.assetsContentsJSON())
            log(contentsJSON)
            
            let appIconFolder = try assetsFolder.createSubfolder(named: "AppIcon.appiconset")
            let appIconContentsJSON = try appIconFolder.createFile(named: "Contents.json")
            try appIconContentsJSON.write(SampleAppTemplates.appIconContentsJSON())
            log(appIconContentsJSON)
            
            let baseLProjFolder = try classesFolder.createSubfolder(named: "Base.lproj")
            let launchScreen = try baseLProjFolder.createFile(named: "LaunchScreen.storyboard")
            try launchScreen.write(SampleAppTemplates.launchScreen())
            log(launchScreen)
            
            let mainStoryboard = try baseLProjFolder.createFile(named: "Main.storyboard")
            try mainStoryboard.write(SampleAppTemplates.mainStoryboard())
            log(mainStoryboard)
            
        } catch {
            throw PodGeneratorErrors.SampleAppCreationFailure
        }
    }
}
