//
//  DetailsModel.swift
//  instagramSwiftUI (iOS)
//
//  Created by Nazar on 11/30/20.
//

import Foundation

struct DetailsModel {
    let accountName: String
    
    let storyNameArray = Array(1...20).map { "storyName \($0)" }
    let postArray = Array(1...4).map { "\($0)" }
    let igtvPostArray = Array(1...3).map { "\($0)" }
    let maskPostArray = Array(1...6).map { "\($0)" }
    let tagPostArray = Array(1...2).map { "\($0)" }
    var activeButtonNumber = 0
    
    var galleryModel: GalleryModel {
        switch activeButtonNumber {
        case 0:
            return GalleryModel(postArray: postArray, spacing: 2, numberInRow: 3)
        case 1:
            return GalleryModel(postArray: igtvPostArray, spacing: 8, numberInRow: 2)
        case 2:
            return GalleryModel(postArray: maskPostArray, spacing: 2, numberInRow: 2)
        default:
            return GalleryModel(postArray: tagPostArray, spacing: 2, numberInRow: 3)
        }
    }
}
