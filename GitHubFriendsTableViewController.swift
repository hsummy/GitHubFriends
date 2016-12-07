//
//  GitHubFriendsTableViewController.swift
//  GitHubFriends
//
//  Created by HSummy on 12/7/16.
//  Copyright © 2016 HSummy. All rights reserved.
//

import UIKit

class GitHubFriendsTableViewController: UITableViewController
{

    var api: APIGitHubController!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        api = APIGitHubController()
        //come back later for api.searchGitHubFor(). it will error out until other steps are taken.
        api.searchGitHubFor("jcgohlke")

    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()

    }

// MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int
    {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        return cell
    }
    

} //end of class GitHubFriendsTableViewController
