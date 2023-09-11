//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by robin tetley on 09/09/2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    
    
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            //this binding is now being passed down 2 layers
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.headline)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
              //  AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }
            //nice fast options for apple looking buttons
            .buttonStyle(.bordered)
            .controlSize(.large)
            .buttonBorderShape(.roundedRectangle)
            .tint(.green)
        }
        .sheet(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString)!)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
    }
}
