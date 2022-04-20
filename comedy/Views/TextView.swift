//
//  TextView.swift
//  comedy
//
//  Created by nato on 15/04/2022.
//

import SwiftUI

struct TextView: View {
    
    let text: String
    
    var body: some View {
        Text(text)
            .fontWeight(.bold)
            .font(.title)
            .foregroundColor(.yellow)
            .multilineTextAlignment(.center)
            .lineSpacing(10)
            .lineLimit(nil)
            .padding()
    }
}


struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(text: "")
    }
}
