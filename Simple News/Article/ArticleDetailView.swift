//
//  ArticleDetailView.swift
//  Simple News
//
//  Created by Marcello Gonzatto Birkan on 17/02/25.
//

import SwiftUI

struct ArticleDetailView: View {
  let article: Article
    var body: some View {
      ScrollView {
        VStack(alignment: .leading, spacing: 10) {
          Image(article.image)
            .resizable()
            .scaledToFit()
            .clipShape(.rect(cornerRadius: 8))
            .frame(height: 250)
          
          Text(article.title)
            .font(.title2)
            .bold()
          
          Text("Published on \(article.publishedAt.formatted(date: .complete, time: .omitted))")
            .font(.caption)
            .foregroundStyle(.secondary)
          
          Text(article.description)
            .font(.body)
            
        }
        .padding(.horizontal)
      }
    }
}

#Preview {
  ArticleDetailView(article: Article.mockArticles[0])
}
