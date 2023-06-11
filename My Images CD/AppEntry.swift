//
//  My_Images_CDApp.swift
//  My Images CD
//
//  Created by Eric on 09/06/2023.
//

import SwiftUI

@main
struct AppEntry: App {
    var body: some Scene {
        WindowGroup {
            MyImagesGridView()
                .environment(\.managedObjectContext, MyImagesContainer().persistentContainer.viewContext)
                .onAppear {
                    print("Document Directory", URL.documentsDirectory.path)
                }
        }
    }
}
