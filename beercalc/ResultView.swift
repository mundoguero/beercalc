//
//  ResultView.swift
//  beercalc
//
//  Created by Jonatas Brisotti on 22/11/22.
//

import SwiftUI

struct ResultView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Yeah!!!")
                Spacer()
            }
        }
        .navigationTitle("Pushed View")
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
