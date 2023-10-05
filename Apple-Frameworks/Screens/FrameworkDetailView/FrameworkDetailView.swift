//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by robin tetley on 09/09/2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    
//    let framework: Framework
//    @Binding var isShowingDetailView: Bool
//    @State private var isShowingSafariView = false
    
    //because we're using @Observed we need an init on it that creates a VM and passes it in
    @ObservedObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        VStack {
            //this binding is now being passed down 2 layers
            XDismissButton(isShowingDetailView: $viewModel.isShowingDetailView.wrappedValue)
            
            Spacer()
            
            FrameworkTitleView(framework: viewModel.framework)
            Text(viewModel.framework.description)
                .font(.headline)
                .padding()
            
            Spacer()
            
            Link(destination: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!) {
                AFButton(title: "Learn More")
            }
            
            //the above is simpler but takes the user out of the app. In the below they don't leave your app but requires more complexity with UIViewControllerRepresentable in SafariView
//            Button {
//                viewModel.isShowingSafariView = true
//            } label: {
//                AFButton(title: "Learn More")
//
//            }
        }
//        .sheet(isPresented: $viewModel.isShowingSafariView) {
//            SafariView(url: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com"))
//        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework,
                                                                isShowingDetailView: .constant(false)))
    }
}
