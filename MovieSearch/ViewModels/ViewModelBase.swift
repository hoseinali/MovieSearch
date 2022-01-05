//
//  ViewModel.swift
//  MovieSerach
//
//  Created by Hossein Ali Alborzi on 12/18/21.
//

import Foundation

enum LoadingState {
    case loading
    case success
    case failed
    case none
}

class ViewModelBase: ObservableObject {
    @Published var loadingState: LoadingState = .none    
}


