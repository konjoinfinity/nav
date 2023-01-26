//
//  ContentView.swift
//  Nav
//
//  Created by Konjo on 1/25/23.
//


import SwiftUI

struct ContentView: View {
    @State var name: String = "Cookies"
    var body: some View {
        NavigationView{
            List {
                NavigationLink(
                    destination: Text("Pie")
                    .font(.largeTitle),
                    label: {
                        Text("Pie").font(.system(size: 20))
                })
                NavigationLink(
                    destination: Text("Cheesecake").font(.largeTitle),
                    label: {
                        Text("Cheesecake").font(.system(size: 20))
                })
                NavigationLink(
                    destination: Text("Cobbler").font(.largeTitle),
                    label: {
                        Text("Cobbler").font(.system(size: 20))
                })
                NavigationLink(
                    destination: DestinationView(name: name),
                    label: {
                        Text("Cookies").font(.system(size: 20))
                    })
            }
        }.navigationTitle("Desserts")
            .navigationBarTitleDisplayMode(.inline)
    }
}
    
       

struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationView(name: "Cookies")
            
    }
}
