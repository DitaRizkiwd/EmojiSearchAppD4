//
//  EmojiDetail.swift
//  EmojiSearch
//
//  Created by MACBOOK PRO on 17/04/24.
//

import SwiftUI

struct EmojiDetail: View {
    var emoji :EmojiData
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators:false){
                HeaderViewDetail(emoji: emoji)
                HStack {
                    VStack(alignment: .leading, spacing: 24){
                        Text ("Emoji Name : \(emoji.name)")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        Text (emoji.desc)
                    }
                    Spacer()
                }
                .padding()
            }
            .navigationTitle(emoji.name)
            .navigationBarTitleDisplayMode(.inline)
            .ignoresSafeArea()
        }
    }
}

#Preview {
    EmojiDetail(emoji: EmojiProvider.allEmojis().first!)
}
