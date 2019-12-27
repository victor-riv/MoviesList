//
//  ViewController.swift
//  MovieList
//
//  Created by Victor Rivera on 12/27/19.
//  Copyright © 2019 Victor Rivera. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var moviesTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moviesTable.dataSource = self
        moviesTable.delegate = self
        
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        MovieStore.instance.decodeMovies()
        return MovieStore.instance.getMovies().count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 25
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor(red: 213.0/255.0, green: 215.0/255.0, blue: 236.0/255.0, alpha: 1)
        return headerView
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieCell {
            let movie = MovieStore.instance.getMovies()[indexPath.section]
            cell.updateCell(movie: movie)
            return cell
        } else {
            return MovieCell()
        }
    }
    
    


}

