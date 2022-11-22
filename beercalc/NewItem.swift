//
//  NewItem.swift
//  beercalc
//
//  Created by Jonatas Brisotti on 22/11/22.
//

import SwiftUI



struct NewItem: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button("Dismiss Me") {
            presentationMode.wrappedValue.dismiss()
        }
    }
}



struct NewItem_Previews: PreviewProvider {
    static var previews: some View {
        NewItem()
            .previewedInAllColorSchemes
    }
}
