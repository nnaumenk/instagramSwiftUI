//
//  GalleryModel.swift
//  instagramSwiftUI
//
//  Created by Nazar on 11/29/20.
//

import Foundation

struct GalleryModel {
    var postArray: [String]
    var spacing: Int
    var numberInRow: Int
    
    var lineAmount: Int {
        (postArray.count + numberInRow - 1) / numberInRow
    }
}
