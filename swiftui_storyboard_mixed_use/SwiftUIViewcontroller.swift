//
//  SwiftUIViewController.swift
//  swiftui_storyboard_mixed_use
//
//  Created by source on 2022/11/22.
//

import UIKit
import SwiftUI

class SwiftUIViewController: UIViewController {
    
    static func show(_ parent:UIViewController){
        parent.show(Self(), sender: parent  )
    }

    override func viewDidLoad() {
        let childView = UIHostingController(rootView: SwiftUIView())
        addChild(childView)
        childView.view.frame = CGRect(x: 0,
                                      y: 0,
                                      width: UIScreen.main.bounds.width,
                                      height: UIScreen.main.bounds.height)
        self.view .addSubview(childView.view)
        childView.didMove(toParent: self)
    }

    
    struct SwiftUIView: View {
        @Environment(\.presentationMode) var presentationMode
        var body: some View {
            Color.red
                 .overlay(
                     VStack(spacing: 20) {
                         Text("SwiftUIViewController").font(.largeTitle)
                         
                         Button(action: {
                             presentationMode.wrappedValue.dismiss()
                         }) {
                            Text("Close")
                        }
                 })
        }
    }

    struct SwiftUIView_Previews: PreviewProvider {
        static var previews: some View {
            SwiftUIView()
        }
    }

}
