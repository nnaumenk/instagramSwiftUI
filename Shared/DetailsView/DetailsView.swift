//
//  DetailsView.swift
//  instagramSwiftUI
//
//  Created by Nazar on 11/27/20.
//

import Foundation
import SwiftUI

struct DetailsView: View {
    
    let accountName: String
    
    private let storyNameArray = Array(0...20).map { "storyName \($0)" }
    private let imageAmount = 14
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                TopMainInfoView()
                AdditionalInfoView()
                
                Spacer(minLength: 24)
                
                StoriesView(storyNameArray: storyNameArray)
                BottomButtonsView()
                BottomImagesView(imageAmount: imageAmount)
            }
        }
        
        .navigationBarTitle("accountName", displayMode: .inline)
    }
}

