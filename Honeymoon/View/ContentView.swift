//
//  ContentView.swift
//  Honeymoon
//
//  Created by Kshitij Singh Chauhan on 18/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CardView(honeymoon: honeymoonData[1])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
