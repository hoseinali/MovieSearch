//
//  View+Extensions.swift
//  MovieSerach
//
//  Created by Hossein Ali Alborzi on 12/16/21.
//

import Foundation
import SwiftUI

extension View {
   
    func embedNavigationView() -> some View {
        return NavigationView { self }
    }
    
}
