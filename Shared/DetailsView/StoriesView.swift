//
//  StoriesView.swift
//  instagramSwiftUI
//
//  Created by Nazar on 11/27/20.
//

import SwiftUI

struct StoriesView: View {
    
    var storyNameArray: [String]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(0..<storyNameArray.count, id: \.self) { index in
                    VStack {
                        Image("avatar")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60, alignment: .center)
                            .clipShape(Circle())

                        Text(storyNameArray[index]).frame(width: 60, alignment: .center)
                            .lineLimit(1)
                    }
                }
            }
        }.padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
    }
}
