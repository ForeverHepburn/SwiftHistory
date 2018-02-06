//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let library = [
    Movie(name: "Cas", director: "Michael"),
    Song(name: "Blue", artist: "Elvis"),
    Movie(name: "Citizen", director: "Orson"),
    Song(name: "The One And Only", artist: "Chesney"),
    Song(name: "Never Gonna", artist: "Rick")
]

var movieCount = 0
var songCount = 0
for item in library {
    if item is Movie {
        movieCount += 1
    } else if item is Song {
        songCount += 1
    }
}

print("\(movieCount) movies, \(songCount) songs.")

for item in library {
    if let movie = item as? Movie {
        print("Movie: \(movie.name), dir.\(movie.director)")
    } else if let song = item as? Song {
        print("Song: \(song.name), by: \(song.artist)")
    }
}
