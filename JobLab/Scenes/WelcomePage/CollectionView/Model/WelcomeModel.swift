//
//  WelcomeModel.swift
//  JobLab
//
//  Created by Natia's Mac on 23.07.22.
//

import Foundation
import UIKit

struct WelcomeModel {
    
    let image: UIImage!
    let title: String
    
   static var pages: [WelcomeModel] = [
        WelcomeModel(image: UIImage(named: "job1"), title: "Find job offers from the most popular job listing sites"),
        WelcomeModel(image: UIImage(named: "job2"), title: "Track all your job applicatons and don’t get lost in the process"),
        WelcomeModel(image: UIImage(named: "job3"), title: "Start appliying and get a Job Now!")
    ]
}
