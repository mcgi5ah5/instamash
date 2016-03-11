//
//  ProfileController.swift
//  Instamash
//
//  Created by anish home on 10/03/2016.
//  Copyright © 2016 anish home. All rights reserved.
//

import UIKit

class ProfileController: UIViewController {
    @IBOutlet weak var profilePic:UIImageView!
    @IBOutlet weak var postsLabel:UILabel!
    @IBOutlet weak var followersLabel:UILabel!
    @IBOutlet weak var followingLabel:UILabel!
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if let currentUser = Profile.currentUser {
            self.postsLabel.text = "\(currentUser.posts.count)"
            self.followersLabel.text = "\(currentUser.followers.count)"
            self.followingLabel.text = "\(currentUser.following.count)"
        if let profpic = currentUser.picture {
            self.profilePic.image = profpic
            }
        } else {
            print("No user is logged in")
        }
    }
    
    @IBAction func editProfile(sender: AnyObject) {
        print("User wants to edit their profile")
    }
}

