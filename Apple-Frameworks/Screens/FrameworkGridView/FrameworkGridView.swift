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
            //list has a built in tap gesture so we use the navigation link in there, don't need sheet anymore either.
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework,
                                                                    isShowingDetailView: $viewmodel.isShowingDetailView)) {
                       //this is where you put the code for how the list item looks. Whatever is tapped on below, triggers the above.
                        FrameworkTitleView(framework: framework)
                    }
                    
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
        .accentColor(Color(.label))
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}




