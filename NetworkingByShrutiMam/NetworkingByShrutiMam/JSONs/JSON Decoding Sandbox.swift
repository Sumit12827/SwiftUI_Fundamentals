//
//  JSON Decoding Sandbox.swift
//  NetworkingByShrutiMam
//
//  Created by Sumit on 09/04/26.
//

import Foundation
import Playgrounds


#Playground{
//    struct Movie: Codable{
//        var title: String
//        var director: String
//        var rating: Double
//        
//    }
//    var jsonFilePathURL =
//    Bundle.main.url(forResource: "a Movie", withExtension: "json")
//    
//    
//    var jsonFileContentData = try!
//    Data(contentsOf: jsonFilePathURL!)
//    
//    let jsonDecoder = JSONDecoder()
//    
//    var myMovie = try
//    jsonDecoder.decode(Movie.self  , from: jsonFileContentData)
//    
//    print(myMovie)
    
    
    
    
    
    //MARK: b movie
    
    
    
//    struct Movie: Codable{
//            var title: String
//            var director: String
//            var rating: Double
//    
//        }
//        var jsonFilePathURL =
//        Bundle.main.url(forResource: "b Movies", withExtension: "json")
//    
//    
//        var jsonFileContentData = try!
//        Data(contentsOf: jsonFilePathURL!)
//    
//        let jsonDecoder = JSONDecoder()
//    
//    var myMovies = try  jsonDecoder.decode([Movie].self , from: jsonFileContentData)
//    
//    
//    for movie in myMovies{
//        print(movie)
//    }
    
    
    //MARK: c movies
    
//    struct Movie: Codable{
//            var title: String
//            var director: String
//            var rating: Double
//    
//        }
//    struct MovieReponse: Codable{
//        var movies: [Movie]
//    }
//    var jsonFilePathURL =
//    Bundle.main.url(forResource: "c Movies with wrapper object", withExtension: "json")
//    
//    var jsonFileContentData = try! Data(contentsOf:
//    jsonFilePathURL!)
//    
//    let jsonDecoder = JSONDecoder()
//    
//    
//    var myMovie = try jsonDecoder.decode(MovieReponse.self , from:jsonFileContentData)
//    
//    
//    for movie in myMovie.movies{
//        print(movie)
//    }
    
    
    //MARK: d movies
    
//    struct Movie: Codable{
//        var title: String
//        var details: MovieDetails
//    }
//    
//    struct MovieResponse: Codable{
//        var movies: [Movie]
//    }
//    
//    struct MovieDetails: Codable{
//        var director : String
//        var rating : Double
//    }
//    
//    var jsonFilePathURL = Bundle.main.url(forResource: "d Movies with wrapper object nested",withExtension: "json")
//        
//        var jsonFileContentData = try! Data(contentsOf: jsonFilePathURL!)
//        
//        let jsonDecoder = JSONDecoder()
//        
//        var myMovie = try jsonDecoder.decode(MovieResponse.self, from: jsonFileContentData)
//        
//    for movie in myMovie.movies{
//            print(movie.details.director)
//        }
    
    
    
    //MARK: e movies
    
//    struct Movie: Codable{
//        var title: String
//        var director: String
//        var rating: Double
//        
//        enum CodingKeys: String, CodingKey{
//            case title
//            case director = "movie_director"
//            case rating
//        }
//    }
//    
//    var jsonFilePathURL = Bundle.main.url(forResource: "e Movies with non matching keys",withExtension: "json")
//    
//    var jsonFileContentData = try! Data(contentsOf: jsonFilePathURL!)
//    
//    let jsonDecoder = JSONDecoder()
//    
//    var myMovie = try jsonDecoder.decode(Movie.self, from: jsonFileContentData)
//    
//        print(myMovie)
    
   
    
    //MARK: f movie
    
    struct Movie: Codable{
            var title : String
            var director : String
            var rating : Double
            
            enum CodingKeys: String, CodingKey{
                case title
                case director = "movie_director"
                case rating
            }
            
            init(from decoder: any Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                self.title = try container.decode(String.self, forKey: .title)
                self.director = try container.decode(String.self, forKey: .director)
                var ratingString = try container.decode(String.self, forKey: .rating)
                self.rating = Double(ratingString) ?? 0.0
            }
        }
        
        struct MovieResponse: Codable{
            var movies : [Movie]
        }
        
        var jsonFilePathURL = Bundle.main.url(forResource: "f Movies with non matching keys and custom decoding",withExtension: "json")
        
        var jsonFileContentData = try! Data(contentsOf: jsonFilePathURL!)
        
        let jsonDecoder = JSONDecoder()
        
        var myMovie = try jsonDecoder.decode(Movie.self, from: jsonFileContentData)
        
        print(myMovie)
    
    
    
    
}
