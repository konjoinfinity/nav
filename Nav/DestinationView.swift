//
//  DestinationView.swift
//  Nav
//
//  Created by Konjo on 1/25/23.
//

import SwiftUI

struct DestinationView: View {
    var createdAt: String
    var name: String
    var avatar: String
    var genre: String
    var lyrics: String
    var id: String
    
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: avatar)){ image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 300, height: 300)
            HStack {
                VStack(alignment: .leading) {
                    Text(genre)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(name)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    Text(lyrics.uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text(createdAt)
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text("Song #\(id)")
                        .font(.headline)
                        .foregroundColor(.secondary)
                }
                .layoutPriority(100)

                Spacer()
            }
            .padding()
        }
        
    }
}
