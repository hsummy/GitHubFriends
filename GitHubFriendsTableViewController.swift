//
//  GitHubFriendsTableViewController.swift
//  GitHubFriends
//
//  Created by HSummy on 12/7/16.
//  Copyright © 2016 HSummy. All rights reserved.
//

import UIKit



class GitHubFriendsTableViewController: UITableViewController, APIControllerProtocol
    
{

    var api: APIGitHubController!
    var gitHubFriends = [Friend]()

    override func viewDidLoad()
    {
        super.viewDidLoad()
        api = APIGitHubController(delegate: self)
        //come back later for api.searchGitHubFor(). it will error out until other steps are taken.
        api.searchGitHubFor("jcgohlke")
        
        

        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "FriendCell")
        title = "Git Hub Friends"
    }
       // func cancelButton ()
        //{
            //let cancelButton = UIButton();
           // cancelButton.setTitle("Cancel", for: .normal)
           // cancelButton.setTitleColor(UIColor.blue, for: .normal)
            // button.frame = CGRect(?, ?, ?, ?) - need to get dimensions
            //self.view.addSubview(cancelButton)
        //}
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    func didReceiveAPIData(_ dataFriends: String)
    {
        let queue = DispatchQueue.main
        queue.async
        {
        self.gitHubFriends = Friend.friendsJSON(dataFriends)
        self.tableView.reloadData()
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
        }
    }

// MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return gitHubFriends.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath)
        let friend = gitHubFriends[indexPath.row]
        cell.textLabel?.text = friend.login
        return cell
    }
    //yourButton.center = CGPointMake(320.0, 480.0);

} //end of class GitHubFriendsTableViewController
