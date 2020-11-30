//
//  GalleryView.swift
//  instagramSwiftUI
//
//  Created by Nazar on 11/29/20.
//

import SwiftUI

struct GalleryView: View {
    
    @State var model: GalleryModel
    
    var body: some View {
        galleryView
    }
    
    private var galleryView: some View {
        VStack(alignment: .center, spacing: CGFloat(model.spacing)) {
            ForEach(0..<model.lineAmount, id: \.self) { i in
                HStack(alignment: .center, spacing: CGFloat(model.spacing)) {
                    ForEach(0..<model.numberInRow) { j in
                        makeCellView(i: i, j: j)
                    }
                 }
            }
        }
    }
    
//    private var galleryRowView: some View {
//        HStack(alignment: .center, spacing: CGFloat(model.spacing)) {
//            ForEach(0..<model.numberInRow) {_ in
//                makeCellView()
//            }
//         }
//    }
    
    private func makeCellView(i: Int, j: Int) -> AnyView {
        let index = i * model.numberInRow + j
        
        if model.postArray.indices.contains(index) {
            return AnyView(
                NavigationLink( destination: DetailsView(model: DetailsModel(accountName: "1"))) {
                    Image(model.postArray[index])
                        .resizable()
                        .aspectRatio(1, contentMode: .fill)
                }.buttonStyle(PlainButtonStyle())
            )
        } else {
            return AnyView(
                Image("")
                    .resizable()
                    .aspectRatio(1, contentMode: .fill)
            )
        }
        
        
//        if let index = currentIndex {
//            Image("image") // model.postArray[index]
//                .resizable()
//                .aspectRatio(1, contentMode: .fill)
//            currentIndex = model.postArray.index(after: index)
//        } else {
//            Image("")
//        }
    }
    //***************************************//
    //***************************************//
    //***************************************//
//    private var fractionalPartView: some View {
//
//        HStack(alignment: .center, spacing: CGFloat(model.spacing), content: {
//
//
//
//            Image("image")
//                .resizable()
//                .aspectRatio(1, contentMode: .fill)
//            Image("image")
//                .resizable()
//                .aspectRatio(1, contentMode: .fill)
//            Image("image")
//                .resizable()
//                .aspectRatio(1, contentMode: .fill)
//         })
//    }
//    //***************************************//
//    //***************************************//
//    //***************************************//
//    private var fractionalPartView2: some View {
//        HStack(alignment: .center, spacing: 2, content: {
//            Image("image")
//                .resizable()
//                .aspectRatio(1, contentMode: .fill)
//
//            Image("image")
//                .resizable()
//                .aspectRatio(1, contentMode: .fill)
//
//            Image("")
//                .resizable()
//                .aspectRatio(1, contentMode: .fill)
//        })
//    }
    //***************************************//
    //***************************************//
    //***************************************//
}

