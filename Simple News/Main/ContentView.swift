//
//  ContentView.swift
//  Simple News
//
//  Created by Marcello Gonzatto Birkan on 17/02/25.
//

import SwiftUI

struct ContentView: View {
  @State private var news: [Article] = []
  var body: some View {
    NavigationStack {
      VStack {
        List(news) { article in
          NavigationLink {
            ArticleDetailView(article: article)
          } label: {
            ArticleRowView(article: article)
          }
          .listRowBackground(Color.clear)
          .listRowSeparator(.hidden)
        }
        .listStyle(.plain)

        // Disclaimer card
        VStack(alignment: .leading, spacing: 8) {
          Text("Disclaimer")
            .font(.headline)
            .foregroundColor(.primary)

          Text("News articles were collected from The Verge website on February 17th at 6:00 PM. All content is used for educational purposes only.")
            .font(.caption)
            .foregroundColor(.secondary)
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(10)
        .padding(.horizontal)
        .padding(.bottom)
      }
      .navigationTitle("Simple News")
    }
    .onAppear {
      self.news = DataService().fetchData()
    }
  }
}

#Preview {
  ContentView()
}
