//
//  APIGitHubController.swift
//  GitHubFriends
//
//  Created by HSummy on 12/7/16.
//  Copyright © 2016 HSummy. All rights reserved.
//

import Foundation

class APIGitHubController
{
    init ()
    {
        
        
    }
    func searchGitHubFor(_ friendName: String)
    {

            let urlPath = "https://api.github.com/users/\("jcgohlke")"
            
            let url = URL(string: urlPath)!
          
            let session = URLSession.shared
          
            let task = session.dataTask(with: url, completionHandler: {
                data, response, error in
               
                print("Task completed")
                if error != nil
                {
                    print(error!.localizedDescription)
                }
                   
                else if let dictionary = self.parseJSON(data!)
                {
                    
                }
                
                })

            task.resume()
    
    }// end of func searchGitHubFor
    func parseJSON(_ data: Data) -> [String: Any]?
    {
        return nil
    }
    
    
    
    
}//end of class APIGitHubController
