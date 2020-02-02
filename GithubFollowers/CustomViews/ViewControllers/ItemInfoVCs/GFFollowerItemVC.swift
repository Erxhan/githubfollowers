//
//  GFFollowerItemVC.swift
//  GithubFollowers
//
//  Created by Erxhan Selmani on 26/01/2020.
//  Copyright © 2020 Exrhan Selmani. All rights reserved.
//

import UIKit

protocol GithubFollowersTappable: class {
    func didTapGithubFollowers(of user: User)
}

class GFFollowerItemVC: GFItemInfoVC {
    
    weak var delegate: GithubFollowersTappable?
    
    init(user: User, delegate: GithubFollowersTappable? = nil) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
        actionButton.addTarget(self, action: #selector(didTapGetGithubProfile), for: .touchUpInside)
    }
    
    @objc private func didTapGetGithubProfile() {
        guard let delegate = delegate else { return }
        delegate.didTapGithubFollowers(of: user)
    }
}
