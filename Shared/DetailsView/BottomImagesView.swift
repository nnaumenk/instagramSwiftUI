//
//  BottomImages.swift
//  instagramSwiftUI
//
//  Created by Nazar on 11/27/20.
//

import SwiftUI

struct BottomImagesView: View {
    
    var imageAmount: Int
    
    private var integerPartView: some View {
        
        HStack(alignment: .center, spacing: 2, content: {
            Image("image")
                .resizable()
                .aspectRatio(1, contentMode: .fill)
            Image("image")
                .resizable()
                .aspectRatio(1, contentMode: .fill)
            Image("image")
                .resizable()
                .aspectRatio(1, contentMode: .fill)
         })
    }
    
    private var fractionalPartView1: some View {
        
        HStack(alignment: .center, spacing: 2, content: {
            Image("image")
                .resizable()
                .aspectRatio(1, contentMode: .fill)

            Image("")
                .resizable()
                .aspectRatio(1, contentMode: .fill)

            Image("")
                .resizable()
                .aspectRatio(1, contentMode: .fill)
        })
    }
    
    private var fractionalPartView2: some View {
        HStack(alignment: .center, spacing: 2, content: {
            Image("image")
                .resizable()
                .aspectRatio(1, contentMode: .fill)

            Image("image")
                .resizable()
                .aspectRatio(1, contentMode: .fill)

            Image("")
                .resizable()
                .aspectRatio(1, contentMode: .fill)
        })
    }
    
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 2, content: {
            
            let lineAmount = imageAmount / 3

            ForEach(0..<lineAmount, id: \.self) { _ in
                integerPartView
            }
            
            if imageAmount % 3 == 1 {
                fractionalPartView1
            }
            if imageAmount % 3 == 2 {
                fractionalPartView2
            }
        })
    }
}

