//
//  DetailsView.swift
//  instagramSwiftUI
//
//  Created by Nazar on 11/27/20.
//

import Foundation
import SwiftUI

struct DetailsView: View {
    
    @State var model: DetailsModel
    
    
    var body: some View {
        view
            .navigationBarTitle(model.accountName, displayMode: .inline)
    }
    
    private var view: some View {
        ScrollView(.vertical) {
            LazyVStack(spacing: 0) {
                topMainInfoView.padding(.horizontal, 16).padding(.top, 8).padding(.bottom, 0)
                nameSurnameView.padding(.horizontal, 16).padding(.bottom, 0)
                aboutInfoView.padding(.horizontal, 16).padding(.bottom, 0)
                followInfoView.padding(.horizontal, 16).padding(.bottom, 16)
                followButtonsView.padding(.horizontal, 16).padding(.bottom, 16)
                storiesView.padding(.horizontal, 16).padding(.bottom, 16)
                bottomImageButtonsView.padding(.horizontal, 0).padding(.bottom, 0)
                bottomView.padding(.horizontal, 0).padding(.bottom, 0)
            }
        }
    }
}

extension DetailsView {
    //***************************************//
    //***************************************//
    //***************************************//
    private var topMainInfoView: some View {
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
        })
    }
    //***************************************//
    //***************************************//
    //***************************************//
    private var nameSurnameView: some View {
        HStack {
            Text("Name Surname")
            Spacer()
        }
    }
    //***************************************//
    //***************************************//
    //***************************************//
    private var aboutInfoView: some View {
        HStack {
            Text("Some information1\nSome information2")
            Spacer()
        }
    }
    //***************************************//
    //***************************************//
    //***************************************//
    private var followInfoView: some View {
        HStack {
            Button(action: {}) {
                Text("Followed by someOne1, someOne2, ... , someOneN and N others")
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.primary)
                
            }
            Spacer()
        }
    }
    //***************************************//
    //***************************************//
    //***************************************//
    private var followButtonsView: some View {
        HStack(spacing: 4) {
            Button(action: {}) {
                Text("Following")
                    .foregroundColor(.primary)
                    .frame(maxWidth: .infinity, maxHeight: 30)
                    .border(Color.gray, width: 1)
                    .cornerRadius(3)
            }
                
            Button(action: {}) {
                Text("Message")
                    .foregroundColor(.primary)
                    .frame(maxWidth: .infinity, maxHeight: 30)
                    .border(Color.gray, width: 1)
                    .cornerRadius(3)
            }
                
            Button(action: {}) {
                Text("")
                    .frame(width: 30, height: 30, alignment: .trailing)
                    .foregroundColor(.primary)
                    .border(Color.gray, width: 1)
                    .cornerRadius(3)
            }
        }
    }
    //***************************************//
    //***************************************//
    //***************************************//
    private var storiesView: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(0..<model.storyNameArray.count, id: \.self) { index in
                    VStack {
                        Image(String(index))
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60, alignment: .center)
                            .clipShape(Circle())

                        Text(model.storyNameArray[index]).frame(width: 60, alignment: .center)
                            .lineLimit(1)
                    }
                }
            }
        }
    }
    //***************************************//
    //***************************************//
    //***************************************//
    private var bottomImageButtonsView: some View {
        Picker("", selection: $model.activeButtonNumber) {
                
            Image("instagram_post_24").tag(0)
            if !model.igtvPostArray.isEmpty { Image("instagram_igtv_post_24").tag(1) }
            if !model.maskPostArray.isEmpty { Image("instagram_mask_post_24").tag(2) }
            Image("instagram_tag_post_24").tag(3)

        }.pickerStyle(SegmentedPickerStyle())
    }
    //***************************************//
    //***************************************//
    //***************************************//
    private var bottomView: some View {
        GalleryView(model: model.galleryModel)
    }
    //***************************************//
    //***************************************//
    //***************************************//
    
}

