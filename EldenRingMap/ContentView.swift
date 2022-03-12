//
//  ContentView.swift
//  EldenRingMap
//
//  Created by guillaume sabatié on 10/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var scale: CGFloat = 1.0
    
    var body: some View {
        ScrollView.init([.horizontal, .vertical], showsIndicators: true) {
            Image("EldenRingMap")
                .resizable()
                .scaleEffect(scale)
                .gesture(MagnificationGesture()
                            .onChanged { value in
                    self.scale = value.magnitude
                }
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPad Pro (9.7-inch)")
    }
}
