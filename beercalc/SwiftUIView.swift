//
//  SwiftUIView.swift
//  beercalc
//
//  Created by Jonatas Brisotti on 23/11/22.
//

import SwiftUI

struct SwiftUIView: View {
    @ObservedObject var beer = Beer(brand: "", price: "", size: "")
    
    var body: some View {
        VStack {
            HStack {
                Text("Brand")
                    .padding()
                TextField("Brand", text: $beer.brand)
                    .padding()
                
            }
            HStack {
                Image(systemName: "dollarsign.circle")
                    .padding()
                TextField("Price", text: $beer.price)
                    .padding()
            }
            HStack {
                Image(systemName: "scalemass")
                    .padding()
                TextField("Size", text: $beer.size)
            }
            Button(action: {
            }, label: {
                ZStack {
                    
                }
                HStack {
                    Image("toast")
                        .resizable()
                        .interpolation(.medium)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50, alignment: .topLeading)
                        .border(.blue)
                        .clipped()
                        .padding(-10)
                    Text("compare")
                        .font(.title)
                        .foregroundColor(.primary)
                        .padding()
                }
            })
        }
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
            .previewedInAllColorSchemes
    }
}
