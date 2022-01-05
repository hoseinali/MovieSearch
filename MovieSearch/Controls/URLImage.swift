//
//  URLImage.swift
//  MovieSerach
//
//  Created by Hossein Ali Alborzi on 12/15/21.
//

import SwiftUI

struct URLImage: View {
    let url:String
    let imageDefault: String
    @ObservedObject var imageLoader = ImageLoader()
        
    init(url: String, imageDefault:String = "imageDefault") {
        print(url)
        self.url = url
        self.imageDefault = imageDefault
        self.imageLoader.downloadImage(url: url)
    }
    
    var body: some View {
        if let data = imageLoader.downloadedData {
           return Image.init(uiImage: UIImage.init(data: data)!)
                .resizable()
        } else {
          return  Image(imageDefault).resizable()
        }
        
    }
}

struct URLImage_Previews: PreviewProvider {
    static var previews: some View {
        URLImage(url: "https://interactive-examples.mdn.mozilla.net/media/cc0-images/grapefruit-slice-332-332.jpg")
    }
}
