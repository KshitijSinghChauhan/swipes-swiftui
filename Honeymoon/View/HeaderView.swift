//
//  HeaderView.swift
//  Honeymoon
//
//  Created by Kshitij Singh Chauhan on 18/12/23.
//

import SwiftUI

struct HeaderView: View {
    
    // MARK: - PROPERTIES
    @Binding var showGuideView: Bool
    
    // MARK: - BODY
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
                self.showGuideView.toggle()
            } label: {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .tint(Color.primary)
            .sheet(isPresented: $showGuideView) {
                GuideView()
            }
        } //: HSTACK
        .padding()
    }
}

// MARK: - PREVIEW
struct HeaderView_Previews: PreviewProvider {
    
    @State static var showGuide: Bool = false
    
    static var previews: some View {
        HeaderView(showGuideView: $showGuide)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
