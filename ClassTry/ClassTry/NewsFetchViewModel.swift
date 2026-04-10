//
//  NewsFetchViewModel.swift
//  ClassTry
//
//  Created by Sumit on 08/04/26.
//

import Foundation

class StoryFetchViewModel{
    var stories = [NewsStory]()
    func loadStories() async throws {
      let group =   try await withThrowingTaskGroup { group in
            for i in 1...5 {
                group.addTask{
                    let url = URL(string: "https://hws.dev/news-\(i).json")!
                    let  (data,_) = try await
                    URLSession.shared.data(from: url)
                    return try
                    JSONDecoder().decode([NewsStory].self , from: data)
                }//individual task
            } //for loop
          
          var allStories = [NewsStory]()
          for try await result in group{
              allStories.append(contentsOf: result)
          }
          return allStories.sorted{$0.id > $1.id}
        }
    }
}
