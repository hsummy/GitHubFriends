//
//  FriendListViewController.swift
//  GitHubFriends
//
//  Created by HSummy on 12/11/16.
//  Copyright © 2016 HSummy. All rights reserved.
//

import UIKit

class FriendListViewController: UIViewController
{

    var friendSearchTextField = UITextField()
    let friendSearchButton = UIButton()
    let cancelButton = UIButton()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        //let myField: UITextField = UITextField (frame:CGRectMake(10, 10, 30, 10));
        //self.view.addSubview(myField)
        let friendSearchTextField: UITextField = UITextField(frame: CGRect(x: 0, y: 0, width: 200.00, height: 40.00));
        friendSearchTextField.placeholder = "Enter Git Hub friend name here"
        friendSearchTextField.text = "myFriend"
     //   friendSearchTextField.font = UIFont.systemFontSize(17)
        friendSearchTextField.borderStyle = UITextBorderStyle.roundedRect
        friendSearchTextField.autocorrectionType = UITextAutocorrectionType.no
        friendSearchTextField.keyboardType = UIKeyboardType.default
        friendSearchTextField.returnKeyType = UIReturnKeyType.done
        friendSearchTextField.clearButtonMode = UITextFieldViewMode.whileEditing
        friendSearchTextField.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        friendSearchTextField.backgroundColor = UIColor.red
        friendSearchTextField.borderStyle = UITextBorderStyle.line
      //  friendSearchTextField.delegate = self
        self.view.addSubview(friendSearchTextField)
        
        //cancelButton
        //self.clearsSelectionOnViewWillAppear = false
        //self.navigationItem.rightBarButtonItem = self.editButtonItem
        //button.addTarget(self, action: "buttonPressed:", forControlEvent: .TouchUpInside)
        
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

  //  func cancelButton ()
  //  {
   // let cancelButton = UIButton();
  //  cancelButton.setTitle("Cancel", for: .normal)
  //  cancelButton.setTitleColor(UIColor.blue, for: .normal)
    //button.frame = CGRect(?, ?, ?, ?) - need to get dimensions
  //  self.view.addSubview(cancelButton)
 //   }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
