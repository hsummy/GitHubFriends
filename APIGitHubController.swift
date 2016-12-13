//
//  APIGitHubController.swift
//  GitHubFriends
//
//  Created by HSummy on 12/7/16.
//  Copyright © 2016 HSummy. All rights reserved.
//

import Foundation

protocol APIControllerProtocol
{
    func didReceiveAPIData (_: String)
}
class APIGitHubController
{
    var delegate: APIControllerProtocol
    
    init (delegate: APIControllerProtocol)
    {
        self.delegate = delegate
    }
    func searchGitHubFor(_ friendName: String)
    {


            let urlPath = "https://api.github.com/users/\(friendName)"
            
            let url = URL(string: urlPath)!
          
            let session = URLSession.shared
          
            let task = session.dataTask(with: url, completionHandler:
            {
                data, response, error in
               
                print("Task completed")
                if error != nil
                {
                    print(error!.localizedDescription)
                }
                if let friendInDictionary = self.parseJSON(data!)
                {
                    
                    if let results = friendInDictionary["login"] as? String
                    {
                        self.delegate.didReceiveAPIData(results)
                    }
                }

            })

            task.resume()

    }// end of func searchGitHubFor
    func parseJSON(_ dataFriends: Data) -> [String: Any]?
    {
        do
        {
            let json = try JSONSerialization.jsonObject(with: dataFriends, options: [])
            if let dictionary = json as? [String: Any]
            {
                return dictionary
            }
            else
            {
                return nil
            }
        }
        catch let error as NSError
    
        {
        print(error)
        return nil
        }
    
    }
    
}//end of class APIGitHubController
