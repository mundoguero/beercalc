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
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 400, height: 200)
                            .opacity(0.2)
                        Text("Result")
                    }
                }
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 198, height: 200)
                        .opacity(0.2)
                        Text("Result 2")
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 198, height: 200)
                        .opacity(0.2)
                        Text("Result 3")
                    }
                }
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

