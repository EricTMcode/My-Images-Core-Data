//
//  MyImagesGridView.swift
//  My Images CD
//
//  Created by Eric on 09/06/2023.
//

import SwiftUI

struct MyImagesGridView: View {
    @FetchRequest(sortDescriptors: [SortDescriptor(\.name)])
    private var myImages: FetchedResults<MyImage>
    
    var body: some View {
        NavigationStack {
            Group {
                if !myImages.isEmpty {
                    
                } else {
                    Text("Select your first image")
                }
            }
            .navigationTitle("My Images")
        }
    }
}

struct MyImagesGridView_Previews: PreviewProvider {
    static var previews: some View {
        MyImagesGridView()
    }
}
