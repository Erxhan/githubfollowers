//
//  UITableViewExtension.swift
//  GithubFollowers
//
//  Created by Erxhan Selmani on 02/02/2020.
//  Copyright © 2020 Exrhan Selmani. All rights reserved.
//

import UIKit

extension UITableView {
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
