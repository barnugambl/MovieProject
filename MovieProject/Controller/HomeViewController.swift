//
//  ViewController.swift
//  MovieProject
//
//  Created by Терёхин Иван on 19.12.2024.
//

import UIKit

class HomeViewController: UIViewController {
    
    private lazy var mainView = MainView(frame: .zero)

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    override func loadView() {
        view = mainView

        
    }

}

