//
//  MainViewController.swift
//  swiftui_storyboard_mixed_use
//
//  Created by source on 2022/11/22.
//

import UIKit
import SwiftUI

class MainViewController: UIViewController {

    @IBAction func clickShowXibViewController(_ sender: Any) {
       XibViewController.show(self)
    }
    
    @IBAction func clickShowSwiftUIViewcontroller(_ sender: Any) {
        SwiftUIViewController.show(self)
    }
}

