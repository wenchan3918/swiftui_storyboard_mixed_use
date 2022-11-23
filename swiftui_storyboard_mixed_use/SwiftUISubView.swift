//
//  SwiftUIView.swift
//  swiftui_storyboard_mixed_use
//
//  Created by source on 2022/11/22.
//

import SwiftUI

struct SwiftUISubView: View {
    var body: some View {
        Color.blue 
             .overlay(
                 VStack(spacing: 20) {
                     Text("SwiftUISubView").font(.largeTitle)
             })
    }
}

struct SwiftUISubView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUISubView()
    }
}
