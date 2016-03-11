 //
//  PostModel.swift
//  Instamash
//
//  Created by anish home on 10/03/2016.
//  Copyright © 2016 anish home. All rights reserved.
//

import UIKit
 
 class Post {
    let creator:String
    let timestamp:NSDate
    let image:UIImage?
    let caption:String?
    static var feed:Array<Post>?
    
    init(creator:String, image:UIImage?,caption:String?){
        self.creator = creator
        self.image = image
        self.caption = caption
        timestamp = NSDate()
    }
 }

 class PostCell: UITableViewCell {
    @IBOutlet weak var captionLabel:UILabel!
    @IBOutlet weak var imgView:UIImageView!
 }
 
 class PostHeaderCell: UITableViewController {
    @IBOutlet weak var profilePicture:UIImageView!
    @IBOutlet weak var usernameButton: UIButton!
 }

 
 