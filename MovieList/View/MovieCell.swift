//
//  MovieCell.swift
//  MovieList
//
//  Created by Victor Rivera on 12/27/19.
//  Copyright © 2019 Victor Rivera. All rights reserved.
//

import Foundation
import UIKit

class MovieCell: UITableViewCell {
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieVoteAverage: UILabel!
    @IBOutlet weak var moviePoster: UIImageView!
    
    func updateCell(movie: Movie) {
        movieTitle.text = movie.title
        movieVoteAverage.text = "\(movie.voteAverage)"
        if let url = URL(string: "http://image.tmdb.org/t/p/w92/\(movie.posterPath)") {
            do {
                let data = try Data(contentsOf: url)
                moviePoster.image = UIImage(data: data)
            } catch {
                print("Error loading poster: \(error)")
            }
        } else {
            print("in else")
        }
    }
}
