//
//  GFRepoItemVC.swift
//  GithubFollowers
//
//  Created by Erxhan Selmani on 26/01/2020.
//  Copyright © 2020 Exrhan Selmani. All rights reserved.
//

import UIKit

protocol GithubProfileTappable: class {
    func didTapGithubProfile(of user: User)
}

class GFRepoItemVC: GFItemInfoVC {
    
    weak var delegate: GithubProfileTappable?
    
    init(user: User, delegate: GithubProfileTappable? = nil) {
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
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "Github Profile")
        actionButton.addTarget(self, action: #selector(didTapGetFollowers), for: .touchUpInside)
    }
    
    @objc private func didTapGetFollowers() {
        guard let delegate = delegate else { return }
        delegate.didTapGithubProfile(of: user)
    }
}
