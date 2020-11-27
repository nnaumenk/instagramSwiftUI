//
//  AdditionalInfoView.swift
//  instagramSwiftUI
//
//  Created by Nazar on 11/27/20.
//

import SwiftUI

struct AdditionalInfoView: View {
    
    var body: some View {
        HStack {
            Text("Name Surname")
            Spacer()
        }.padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))

        HStack {
            Text("Some information1\nSome information2")
            Spacer()
        }.padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))

        HStack {
            Button(action: {}) {
                Text("Followed by someOne1, someOne2, ... , someOneN and N others")
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.primary)
            }.padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
        Spacer()
        }
    }
}
