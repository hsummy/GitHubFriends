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
   // let avatar_url: String?
    let login: String
   // let name: String?
   // let location: String?
    
    //init(avatar: String, username: String, name: String, location: String)
        init(login: String)
    {
        //avatar_url = avatar
        self.login = login
        //self.name = name
       // self.location = location
        
    }
    
   static func friendsJSON(_ dataFriends: String) -> [Friend]
    {
        var gitHubFriends = [Friend]()
//        if dataFriends.count > 0
//        {
//            for data in dataFriends
//            {
//                if let friendInDictionary = dataFriends as? [String: Any]
//                {
//                    if let username = friendInDictionary["login"] as? String
//                    
//                        let avatar = friendInDictionary["avatar_url"] as? String ?? ""
//                        let username = friendInDictionary["login"] as? String ?? ""
//                        let name = friendInDictionary["name"] as? String ?? ""
//                        let location = friendInDictionary["location"] as? String ?? ""
//                        
                        // gitHubFriends.append(Friend(avatar: avatar, username: username, name: name, location: location))
                        //let aFriend = [Friend](avatar_url: avatar, login: username, name: name, location: location)
        
                        let login = dataFriends
                        gitHubFriends.append(Friend(login: login))
                        
                   // }
               // }
            //}
            
       // }
        return gitHubFriends
    }//end of static

}//end of struct Friend
