//
//  ContentView.swift
//  AlignmentInSwiftUI
//
//  Created by ramil on 15.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var securityDigits = ""
    @State var height: CGFloat = 10
    var body: some View {
        VStack {
            HStack {
                Text("Where I am")
                    .foregroundColor(Color.purple)
                    .border(Color.black)
                
                TextField("I am high", text: $securityDigits)
                    .frame(height: height)
                    .border(Color.black)
            }
            .border(Color.black)
            
            HStack {
                Text("Where I am")
                    .frame(maxHeight: .infinity)
                    .foregroundColor(Color.purple)
                    .border(Color.black)
                
                TextField("I am high", text: $securityDigits)
                    .frame(height: height)
                    .border(Color.black)

            }
            .border(Color.black)
            .frame(height: 20)
            
            Text("\(height)")
            Slider(value: $height, in: 10...50, step: 1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
