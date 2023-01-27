//
//  ContentView.swift
//  Nav
//
//  Created by Konjo on 1/25/23.
//


import SwiftUI

struct ContentView: View {
    @State var results = [Songs]()
    @State var name: String = "Konjo"
    func loadData() {
        guard let url = URL(string: "https://638bd25dd2fc4a058a4e6502.mockapi.io/song") else {
            print("Your API end point is Invalid")
            return
        }
        let request = URLRequest(url: url)

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let response = try? JSONDecoder().decode([Songs].self, from: data) {
                    DispatchQueue.main.async {
                        self.results = response
                    }
                    return
                }
            }
        }.resume()
    }
    
    var body: some View {
        NavigationView {
            List(results, id: \.id) { item in
                NavigationLink(destination: DestinationView(
                    createdAt: item.createdAt,
                    name: item.name,
                    avatar: item.avatar,
                    genre: item.genre,
                    lyrics: item.lyrics,
                    id: item.id
                ),
                               label: {Text(item.name)
                    }).navigationTitle("Songs")
                    .navigationBarTitleDisplayMode(.large)
            }
        }.onAppear(perform: loadData)
        }
        
    }


struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
