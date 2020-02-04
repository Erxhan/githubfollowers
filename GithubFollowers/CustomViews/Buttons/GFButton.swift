//
//  GFButton.swift
//  GithubFollowers
//
//  Created by Exrhan Selmani on 31/12/2019.
//  Copyright © 2019 Exrhan Selmani. All rights reserved.
//

import UIKit

class GFButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(backgroundColor: UIColor, title: String) {
        self.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.backgroundColor                        = backgroundColor
    }
    
    
    private func configure() {
        layer.cornerRadius                          = 10
        titleLabel?.font                            = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints   = false
        setTitleColor(.white, for: .normal)
    }
    
    func set(backgroundColor: UIColor, title: String) {
        self.backgroundColor                        = backgroundColor
        setTitle(title, for: .normal)
    }
    
}
