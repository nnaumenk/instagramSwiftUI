//
//  SwiftUIView.swift
//  instagramSwiftUI
//
//  Created by Nazar on 11/27/20.
//

import SwiftUI

struct BottomButtonsView: View {
    
    var body: some View {
        HStack {
            Spacer()

            Button(action: {  }) {
                Image("instagram1").renderingMode(.template)
                    .resizable()
                    .foregroundColor(.primary)
                    .frame(width: 32, height: 32, alignment: .center)
            }

            Spacer()

            Button(action: {  }) {
                Image("instagram2").renderingMode(.template)
                    .resizable()
                    .foregroundColor(.primary)
                    .frame(width: 32, height: 32, alignment: .center)
            }

            Spacer()
        }
    }
}
