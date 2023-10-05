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
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewmodel.columns) {
                    ForEach(MockData.frameworks) { framework in
                            FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                //this also triggers the didset
                                viewmodel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewmodel.isShowingDetailView ) {
                //now we create a vm and inject it into our frameworkdetailview because we're relying on data from this screen to populate the next.
                FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: viewmodel.selectedFramework!,
                                                                        isShowingDetailView: $viewmodel.isShowingDetailView))
            }
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}




