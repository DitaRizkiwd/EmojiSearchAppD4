//
//  ContentView.swift
//  EmojiSearch
//
//  Created by MACBOOK PRO on 17/04/24.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText: String = ""
    @State private var isRedacted :Bool = true
    
    
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
   @State private var emojis : [EmojiData] = EmojiProvider.allEmojis()
    var body: some View {
        NavigationStack{
            List(emojiSearchResource){
                emoji in 
                //navigation link hanya dapat digunakan saat ada navigation stack
                NavigationLink{
                    EmojiDetail(emoji: emoji)
                }label:{
                    
                    if isRedacted {
                        EmojiRow(emoji: emoji)
                            .redacted(reason: .placeholder)
                    } else {
                        EmojiRow(emoji: emoji)
                    }
                }
                //
//                    .listRowSeparator(.visible)
            }
            .navigationTitle("Emoji")
//            .redacted(reason: .placeholder)
            .onAppear{
                ///proses apapun yang dilakukan user tidak akan memblock interface
                DispatchQueue.main
                    .asyncAfter(deadline: .now()+2){
                        //why not use toogle karena proses hanya berjalan sekali
                        isRedacted = false
                    }
            }
            .refreshable {
                //! memastikan datanya ada
                //?? Default value jika data tidak dipastikan ada, contohnya
//                Emoji(emoji : "sss", name: "sss")
                isRedacted = true
                let newRow = EmojiProvider.allEmojis().randomElement()
                emojis.insert(newRow!, at: 0)
                
                DispatchQueue.main
                    .asyncAfter(deadline: .now()+2){isRedacted = false}
            }
            
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
