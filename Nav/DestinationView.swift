//
//  DestinationView.swift
//  Nav
//
//  Created by Konjo on 1/25/23.
//

import SwiftUI

struct DestinationView: View {
    @State var name: String
    var body: some View {
        VStack {
            Text("\(name)")
                .font(.system (size: 30))
            Text("🍪")
                .font(.system(size: 100))
        }
    }
}
    
struct DestinationView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationView(name: "Cookies")
    }
}

