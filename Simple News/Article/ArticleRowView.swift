//
//  ArticleRowView.swift
//  Simple News
//
//  Created by Marcello Gonzatto Birkan on 17/02/25.
//

import SwiftUI

struct ArticleRowView: View {
  let article: Article
  var body: some View {
    HStack {
      Image(article.image)
        .resizable()
        .scaledToFill()
        .frame(width: 80, height: 80)
        .clipped()
        .clipShape(.rect(cornerRadius: 12))

      Spacer()

      VStack(alignment: .leading) {
        Text(article.title)
          .font(.headline)

        Text(article.summary)
          .font(.caption)
      }
    }
    .padding()
    .background(.white)
    .clipShape(RoundedRectangle(cornerRadius: 12))
    .shadow(color: .gray.opacity(0.3), radius: 10 , y: 8)
  }
}

#Preview {
  ArticleRowView(article: Article.mockArticles[0])
}
