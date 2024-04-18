//
//  EmojiDetail.swift
//  EmojiSearch
//
//  Created by MACBOOK PRO on 17/04/24.
//

import SwiftUI

struct EmojiDetail: View {
    var emoji :EmojiData
    @Environment(\.dismiss) var dismiss
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
                        
                        InfoBox()
                    }
                    Spacer()
                }
                .padding()
            }
            .navigationTitle(emoji.name)
            .navigationBarTitleDisplayMode(.inline)
            .ignoresSafeArea()
            .navigationBarBackButtonHidden(true)
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Button{
                        dismiss()
                    }
                label:{
                    Image(systemName: "chevron.left.circle.fill")
                        .font(.title3)
                }
                .tint(.primary)
                }
            }
        }
    }
}

#Preview {
    EmojiDetail(emoji: EmojiProvider.allEmojis().first!)
}
