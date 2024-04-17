//
//  ContentView.swift
//  EmojiSearch
//
//  Created by MACBOOK PRO on 17/04/24.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText: String = ""
    var emojiSearchResource : [EmojiData]{
        //guard if yang dipakai hanya satu kondisi
        guard !searchText.isEmpty else{
            return emojis
        }
        return emojis.filter { emoji in
            emoji.name.lowercased()
                .contains(searchText.lowercased())
        }
    }
    var emojis : [EmojiData] = EmojiProvider.allEmojis()
    var body: some View {
        NavigationStack{
            List(emojiSearchResource){
                emoji in EmojiRow(emoji: emoji)
//                    .listRowSeparator(.visible)
            }
            .navigationTitle("Emoji")
            .searchable(text: $searchText,
                        placement: .navigationBarDrawer(displayMode: .always),
                        prompt: "What emoji's you're looking for ?")
            .overlay{
                if emojiSearchResource.isEmpty{
                    ContentUnavailableView.search(text: searchText)
                }
            }
//            .listStyle(.grouped)
        }
    }
}

#Preview {
    ContentView()
}
