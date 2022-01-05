//
//  ImageLoader.swift
//  MovieSerach
//
//  Created by Hossein Ali Alborzi on 12/15/21.
//

import Foundation

class ImageLoader: ObservableObject {
    
     @Published var downloadedData: Data?
    
    func downloadImage(url: String) {
        
        guard let url = URL.init(string: url) else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data , error == nil else {
                return
            }
            DispatchQueue.main.async {
                self.downloadedData = data
            }
        }
        .resume()
    }
    
    
}
