//
//  ResultView.swift
//  beercalc
//
//  Created by Jonatas Brisotti on 22/11/22.
//

import SwiftUI

struct PushedView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Yeah!!!")
            }
        }
        .navigationBarTitle("Pushed View")
    }
}

struct PushedView_Previews: PreviewProvider {
    static var previews: some View {
        PushedView()
            .previewedInAllColorSchemes
    }
}

