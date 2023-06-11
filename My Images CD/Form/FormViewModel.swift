//
//  FormViewModel.swift
//  My Images CD
//
//  Created by Eric on 09/06/2023.
//

import UIKit

class FormViewModel: ObservableObject {
    @Published var name = ""
    @Published var uiImage: UIImage
    @Published var comment = ""
    @Published var date = Date.distantPast
    @Published var receivedForm = ""
    
    var dataHidden: Bool {
        date == Date.distantPast
    }
    
    var id: String?
    
    var updating: Bool { id != nil }
    
    init(_ uiImage: UIImage) {
        self.uiImage = uiImage
    }
    
    init(_ MyImage: MyImage) {
        name = MyImage.nameView
        id = MyImage.imageID
        uiImage = MyImage.uiImage
        comment = MyImage.commentView
        date = MyImage.dateTaken ?? Date.distantPast
        receivedForm = MyImage.receivedFromView
    }
    
    var incomplete: Bool {
        name.isEmpty || uiImage == UIImage(systemName: "photo")!
    }
}
