//
//  FavoritesListVC.swift
//  GithubFollowers
//
//  Created by Exrhan Selmani on 30/12/2019.
//  Copyright © 2019 Exrhan Selmani. All rights reserved.
//

import UIKit

class FavoritesListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        
        PersistenceManager.retrieveFavorites { result in
            switch result {
            case .success(let favorites):
                print(favorites)
            case .failure(let error):
                break
            }
        }
    }

}
