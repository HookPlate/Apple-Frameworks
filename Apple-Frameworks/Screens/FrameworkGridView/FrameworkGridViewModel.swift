//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by robin tetley on 10/09/2023.
//The ViewModel

import Foundation
import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework : Framework? {
        didSet { isShowingDetailView = true }
    }
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
