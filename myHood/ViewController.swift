//
//  ViewController.swift
//  myHood
//
//  Created by Jonathan Wood on 9/16/15.
//  Copyright © 2015 Jonathan Wood. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var posts = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
//      tableView.estimatedRowHeight = 97 // then design constraints in storyboard to be flexible
        
        let post = Post(imgPath: "", title: "Cool Fence", description: "We've got a cool old fence next to our house!")
        let post2 = Post(imgPath: "", title: "Cool Neighbors", description: "Our neighbors are from all over the country!")
        let post3 = Post(imgPath: "", title: "Mountain Backyard", description: "We live on the side a of moutain")
        
        posts.append(post)
        posts.append(post2)
        posts.append(post3)
        
        tableView.reloadData()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let post = posts[indexPath.row]
        if let cell = tableView.dequeueReusableCellWithIdentifier("PostCell") as? PostCell {
            cell.configureCell(post)
            return cell
        } else {
            let cell = PostCell()
            cell.configureCell(post)
            return cell
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 90.0
    }
    
//  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//      // when you want to select a row to load a new view or new data
//      // also allows you to edit row?
//  }
    
}

