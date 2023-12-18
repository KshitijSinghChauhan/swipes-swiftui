//
//  HeaderView.swift
//  Honeymoon
//
//  Created by Kshitij Singh Chauhan on 18/12/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Button {
                // ACTION
                print("Information")
            } label: {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .tint(Color.primary)
            
            Spacer()
            
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            
            Spacer()
            
            Button {
                // ACTION
                print("Guide")
            } label: {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .tint(Color.primary)
        } //: HSTACK
        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
