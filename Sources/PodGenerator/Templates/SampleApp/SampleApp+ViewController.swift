//
//  SampleApp+ViewController.swift
//  PodGenerator
//
//  Created by Cauê Alves on 20/03/20.
//

import Foundation

extension SampleAppTemplates {
    
    static func viewController(_ podName: String) -> String {
        let template = {
            """
            //
            //  ViewController.swift
            //  SampleApp
            //

            import UIKit
            import \(podName)

            class ViewController: UIViewController {
                
                override func viewDidAppear(_ animated: Bool) {
                    super.viewDidAppear(animated)
                    
                    title = "Sample App"
                    
                    let alert = UIAlertController(title: "\(podName)", message: \(podName).helloWorld(), preferredStyle: .alert)
                    alert.addAction(.init(title: "OK", style: .default, handler: nil))
                    present(alert, animated: true, completion: nil)
                }
            }
            """
        }()
        return template
    }
}
