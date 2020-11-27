//
//  TopMainInfoView.swift
//  instagramSwiftUI
//
//  Created by Nazar on 11/27/20.
//

import SwiftUI

struct TopMainInfoView: View {
    
    var body: some View {
        HStack(alignment: .center, spacing: 16, content: {
            Image("avatar")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80, alignment: .center)
                .clipShape(Circle())
           
            HStack(alignment: .center, spacing: 8, content: {
                Button("325\nPosts", action: {})
                    .multilineTextAlignment(.center)
                    .foregroundColor(.primary)
            
                Button("815K\nFollowers", action: {})
                    .multilineTextAlignment(.center)
                    .foregroundColor(.primary)
                 
                Button("89\nFollowing", action: {})
                    .multilineTextAlignment(.center)
                    .foregroundColor(.primary)
            })
            
            Spacer()
            
        }).padding(EdgeInsets(top: 8, leading: 16, bottom: 0, trailing: 16))
    }
}
