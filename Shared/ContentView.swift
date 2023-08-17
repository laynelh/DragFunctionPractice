//
//  ContentView.swift
//  Shared
//
//  Created by Layne Hunt on 3/29/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var offset = CGSize.zero
    @State var sat = 0
    
    @State var saturation = 0.00
    
    var body: some View {
        RoundedRectangle(cornerRadius: 6)
            .foregroundColor(Color.purple)
            .saturation(saturation)
            .frame(width: 150, height: 100, alignment: .center)
            .offset(offset)
            .gesture(
                DragGesture()
                    .onChanged {value in
                        offset = value.translation
                }
                .onEnded {_ in
                    withAnimation(Animation.easeIn(duration: 4)) {
                        offset = CGSize.zero
                    }
                }
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
