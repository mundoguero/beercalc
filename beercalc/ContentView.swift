//
//  ContentView.swift
//  beercalc
//
//  Created by Jonatas Brisotti on 16/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var addingNewItem = false
    
    var body: some View {
        
        VStack {
            NavigationView {
                Button {
                    addingNewItem = true
                } label: {
                        VStack {
                            Text("Tap me!")
                                .font(.title)
                                .foregroundColor(.primary)
                            Image("beer")
                                .resizable()
                                .interpolation(.medium)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 250, height: 250, alignment: .topLeading)
                                .border(.blue)
                                .clipped()
                                
                        }
                        .navigationTitle("The best prize!")
                    }
                .sheet(isPresented: $addingNewItem, content: NewItem.init)
            }
        }
        .padding()
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
