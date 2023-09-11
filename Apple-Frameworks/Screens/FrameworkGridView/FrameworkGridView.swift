//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by robin tetley on 09/09/2023.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewmodel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewmodel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            //this is still just what the ForEach looks like
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            //whatever framework we tap we'll navigate to a FrameworkDetailView with that framework
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}




