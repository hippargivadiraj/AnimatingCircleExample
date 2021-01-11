//
//  ContentView.swift
//  AnimatingCircleExample
//
//  Created by Vadiraj Hippargi on 1/10/21.
//

import SwiftUI

struct ContentView: View {
    @State var scaleChanger:CGFloat = 1.0
    @State var opacityValue = 0.0
    
    var body: some View {
        Button("Tap Me"){
            self.scaleChanger += 0.2
            self.opacityValue += 0.6
        }.frame(width: 100 , height: 100 , alignment: .center).foregroundColor(.red).clipped()
            .overlay(
            Circle()
             .stroke(Color.accentColor)
                .opacity(opacityValue)
         .scaleEffect(scaleChanger)
          
//       .opacity(Double(2 - scaleChanger))
                .animation(Animation.easeOut(duration: 1.5)
                  .repeatForever()
           )
    )
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
