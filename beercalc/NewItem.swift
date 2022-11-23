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
    
    init(isButtonPressed: Binding<Bool>) {
        _isButtonPressed = isButtonPressed
    }
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    self.isButtonPressed = true
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Dismiss and push")
                })
                
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
