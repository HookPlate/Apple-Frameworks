//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by robin tetley on 10/09/2023.
//The ViewModel

import Foundation
import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
