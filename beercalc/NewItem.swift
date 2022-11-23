//
//  NewItem.swift
//  beercalc
//
//  Created by Jonatas Brisotti on 22/11/22.
//

import SwiftUI

struct ModalView: View {
    @Environment(\.presentationMode) private var presentationMode
    @Binding private var isButtonPressed: Bool
    @ObservedObject var beer = Beer(brand: "", price: "", size: "")
    
    
    init(isButtonPressed: Binding<Bool>) {
        _isButtonPressed = isButtonPressed
    }
    var body: some View {
        NavigationView {
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
                    
                    self.isButtonPressed = true
                    self.presentationMode.wrappedValue.dismiss()
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
                
                //                Button(action: {
                //                    self.isButtonPressed = true
                //                    self.presentationMode.wrappedValue.dismiss()
                //                }, label: {
                //                    Text("Dismiss and push")
                //                })
                
                Button(action: {
                    //self.isButtonPressed = true
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Dismiss")
                })
            }
        }
    }
}


