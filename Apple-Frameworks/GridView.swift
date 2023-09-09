//
//  GridView.swift
//  Apple-Frameworks
//
//  Created by robin tetley on 09/09/2023.
// Hello

import SwiftUI

struct GridView: View {
    var body: some View {
        VStack {
            Image("arkit")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
            Text("ARKit")
                .font(.system(size: 28, weight: .medium))
            
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
