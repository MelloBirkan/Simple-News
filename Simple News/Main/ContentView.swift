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
    List(news) { article in
      ArticleRowView(article: article)
        .listRowSeparator(.hidden)
    }
    .listStyle(.plain)
    .onAppear {
      self.news = DataService().fetchData()
    }
  }
}

#Preview {
  ContentView()
}
