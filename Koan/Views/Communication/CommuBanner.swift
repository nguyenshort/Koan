//
//  CommuBanner.swift
//  Koan
//
//  Created by Yuan on 23/12/2022.
//

import SwiftUI
import SwiftUIX

struct CommuBanner: View {
    var body: some View {
        IntrinsicGeometryReader { proxy in
            VStack {
                Image("bg")
                    .resizable()
                    .scaledToFill()
            }
            .frame(maxHeight: proxy.size.width * 280/500)
            .clipped()
        }
    }
}

struct CommuBanner_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
