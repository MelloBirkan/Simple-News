//
//  Article.swift
//  Simple News
//
//  Created by Marcello Gonzatto Birkan on 17/02/25.
//

import Foundation

struct Article: Identifiable, Decodable {
  let id = UUID()
  let title: String
  let summary: String
  let description: String
  let image: String
  let publishedAt: Date
}

extension Article {
  static let mockArticles: [Article] = [
    Article(
      title: "Spotify's HiFi streaming could finally arrive this year",
      summary: "A $6/ month Music Pro tier could include lossless audio and perks like discounted concert tickets.",
      description: "It's been nearly four years since Spotify announced a HiFi tier for its music streaming service that would support lossless audio. That wait could end this year, Bloomberg reports, as the company works to finalize details, including streaming rights. Spotify could charge as much as $5 or $6 extra per month for the new tier — said to be named Music Pro — which is in line with estimates CEO Daniel Ek shared last year. Spotify's Premium tier currently starts at $11.99 per month before family or student discounts, the result of two price hikes in as many years. Competitors like Apple Music include lossless streaming in their services' base price, but Spotify reportedly plans to justify the extra charge by including more features in Music Pro, including song remixing and concert ticket sales that would grant subscribers exclusive deals and early access.",
      image: "spotify",
      publishedAt: try! Date("2025-02-17T18:18:00Z", strategy: .iso8601)
    ),
    Article(
      title: "The Vision Pro NBA app turns some games into a miniature 3D diorama",
      summary: "he virtual courtside seats are available to NBA League Pass subscribers only.",
      description: "The NBA has introduced a new AR feature for its Vision Pro app this week called Tabletop, which places a floating render of a basketball court in your space during select live games, according to an NBA help page describing the feature. On the court, digital avatars mirror the game's actual players as they move, pass, and shoot — but only for live games that you can watch or listen to with NBA League Pass. The feature even works for local market games that are otherwise unavailable to stream video of in the app. It was about 45 seconds behind the announcer audio during a local game I tested it with, but Vision Pro owner Justin Ryan reported about a half-second delay after using a toolbar option to sync with the live feed. The feature wasn't available for any out-of-market games when I tested, so I only had an audio feed to compare with.",
      image: "nbaapp",
      publishedAt: try! Date("2025-02-15T12:32:00Z", strategy: .iso8601)
    ),
  ]
}
