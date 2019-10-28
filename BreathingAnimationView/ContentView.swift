//
//  ContentView.swift
//  BreathingAnimationView
//
//  Created by Farukh Iskalinov on 10/28/19.
//  Copyright © 2019 Farukh Iskalinov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isCenter = true
    @State var isCenter2 = true
    

    var body: some View {
        ZStack {
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.green.opacity(0.5))
                .offset(x: isCenter ? 0: 50)
                .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360))
            
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.green.opacity(0.5))
                .offset(x: isCenter ? 0: -50)
                .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360))
            
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.green.opacity(0.5))
                .offset(y: isCenter ? 0: 50)
                .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360))
            
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.green.opacity(0.5))
                .offset(y: isCenter ? 0: -50)
                .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360))
        }
        .onAppear() {
            let animation = Animation.linear(duration: 3)
            withAnimation(animation.repeatForever(autoreverses: true)){
                self.isCenter = false
            }
            withAnimation(animation.repeatForever(autoreverses: true)){
                self.isCenter2 = false
            }
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
