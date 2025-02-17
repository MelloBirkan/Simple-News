//
//  DataService.swift
//  Simple News
//
//  Created by Marcello Gonzatto Birkan on 17/02/25.
//

import Foundation

struct DataService {
  func fetchData() -> [Article] {
    if let url = Bundle.main.url(forResource: "news", withExtension: "json") {
      do {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        
        do {
          let news = try decoder.decode([Article].self, from: data)
          return news
        } catch {
          print("Error decoding json \(error)")
        }
      } catch {
        print("error decoding json \(error)")
      }
    }
    return []
  }
}
