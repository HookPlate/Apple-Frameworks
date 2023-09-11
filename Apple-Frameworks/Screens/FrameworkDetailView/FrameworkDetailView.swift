//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by robin tetley on 09/09/2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    let framework: Framework

    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.headline)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
                
            }
        }
        .sheet(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString)!)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework)
    }
}
