//
//  ContentView.swift
//  Shared
//
//  Created by Nazar on 11/27/20.
//

import SwiftUI

struct ListView: View {
    
    private let accountNameArray = Array(0...50).map { "name \($0)" }
    
    @State private var isDetailsActive = false
    
    var body: some View {
        NavigationView {
            List(accountNameArray, id: \.self) { accountName in
                NavigationLink( destination: DetailsView(accountName: accountName)) {
                    Text(accountName)
                }
            }
            
            .navigationTitle("List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ListView()
        }
    }
}
