//
//  Friend.swift
//  GitHubFriends
//
//  Created by HSummy on 12/11/16.
//  Copyright © 2016 HSummy. All rights reserved.
//

import Foundation

struct Friend

{
    let avatar_url: String
    let login: String
    let name: String
    let location: String
    
    init(avatar: String, username: String, name: String, location: String)
    {
        avatar_url = avatar
        login = username
        self.name = name
        self.location = location
        
    }
    
   static func friendsJSON(_ data: [Any]) -> [Friend]
    {
        var gitHubFriends = [Friend]()
        if data.count > 0
        {
           do
            {
               if let dictionary = data as? [String: Any]
                {
                let avatar = dictionary["avatar_url"] as? String ?? ""
                let aFriend = [Friend](avatar_url: avatar, login: username, name: name!, location: location!)
            gitHubFriends.append(aFriend)
                }
            }
        }

        return gitHubFriends
    }//end of static

}//end of struct Friend
