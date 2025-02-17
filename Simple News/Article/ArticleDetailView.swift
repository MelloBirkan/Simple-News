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

        Text("Published on \(formatDate(article.publishedAt))")
          .font(.caption)
          .foregroundStyle(.secondary)

        Text(article.description)
          .font(.body)
      }
      .padding(.horizontal)
    }
  }

  private func formatDate(_ dateString: String) -> String {
    let formatter = ISO8601DateFormatter()
    if let date = formatter.date(from: dateString) {
      let outputFormatter = DateFormatter()
      outputFormatter.dateStyle = .long
      return outputFormatter.string(from: date)
    }
    return dateString
  }
}

#Preview {
  ArticleDetailView(article: Article.mockArticles[0])
}
