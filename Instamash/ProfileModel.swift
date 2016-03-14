//
//  ProfileModel.swift
//  Instamash
//
//  Created by anish home on 10/03/2016.
//  Copyright © 2016 anish home. All rights reserved.
//

import UIKit

class Profile {
    let username:String
    var followers:Array<String>
    var following:Array<String>
    var posts:Array<Post>
    var picture:UIImage?
    var bio:String?
    static var currentUser:Profile?
    
    init(username:String,followers:Array<String>,following:Array<String>,posts:Array<Post>,picture:UIImage?,bio:String?){
        self.username = username
        self.followers = followers
        self.following = following
        self.posts = posts
        self.picture = picture
        self.bio = bio
    }

static func createUser(username:String!) -> Profile {
    return Profile(username: username, followers: Array<String>(), following: [String](), posts: Array<Post>(), picture: nil, bio: String())
 }

}
