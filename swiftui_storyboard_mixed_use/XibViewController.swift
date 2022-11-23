//
//  XibViewController.swift
//  swiftui_storyboard_mixed_use
//
//  Created by source on 2022/11/22.
//

import UIKit
import SwiftUI

class XibViewController: UIViewController {
    
    static func show(_ parent:UIViewController){
        parent.show(Self(), sender: parent  )
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //將SwiftUI View加入controller view中
        let childView = UIHostingController(rootView: SwiftUISubView())
        addChild(childView)
        childView.view.frame = CGRect(x: 0,
                                      y:UIScreen.main.bounds.height*0.6,
                                      width: UIScreen.main.bounds.width,
                                      height: UIScreen.main.bounds.height*0.3)
        self.view .addSubview(childView.view)
        childView.didMove(toParent: self)
    }


    @IBAction func clickClose(_ sender: Any) {
        self.dismiss(animated: true,completion: nil)
    }
    
}

