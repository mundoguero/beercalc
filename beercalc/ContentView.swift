//
//  ContentView.swift
//  beercalc
//
//  Created by Jonatas Brisotti on 16/11/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented: Bool = false
    @State private var isButtonPressed: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: PushedView(), isActive: $isButtonPressed) {
                    EmptyView()
                }.hidden()
                
                Button(action: {
                    self.isPresented = true
                }, label: {
                    VStack {
                        Text("Tap me!")
                            .font(.title)
                            .foregroundColor(.primary)
                            .padding()
                        Image("beer")
                            .resizable()
                            .interpolation(.medium)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250, height: 250, alignment: .topLeading)
                            .border(.blue)
                            .clipped()
                            .padding(-10)
                    }
                })
                .navigationTitle("The best prize!")
                .sheet(isPresented: $isPresented, onDismiss: {
                    self.isPresented = false
                }) {
                    ModalView(isButtonPressed: self.$isButtonPressed)
                }
            }
        }
    }
}

extension View {
    var previewedInAllColorSchemes: some View {
        ForEach(ColorScheme.allCases, id: \.self, content: preferredColorScheme)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewedInAllColorSchemes
    }
}
