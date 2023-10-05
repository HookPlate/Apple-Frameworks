//
//  FrameworkDetailViewModel.swift
//  Apple-Frameworks
//
//  Created by robin tetley on 05/10/2023.
//

import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
    
    let framework: Framework
    //how we use a binding in a VM (the wrapped value)
    var isShowingDetailView: Binding<Bool>
    @Published var isShowingSafariView = false
    
    init(framework: Framework, isShowingDetailView: Binding<Bool>) {
        self.framework = framework
        self.isShowingDetailView = isShowingDetailView
    }
    
    
}
