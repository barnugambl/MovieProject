//
//  FavoritesViewController.swift
//  MovieProject
//
//  Created by Терёхин Иван on 09.01.2025.
//

import UIKit

class FavoritesViewController: UIViewController {
    
    private lazy var favoriteView = FavoritesView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func loadView() {
        view = favoriteView
    }
}
