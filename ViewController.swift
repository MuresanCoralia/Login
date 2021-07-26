//
//  ViewController.swift
//  Login2
//
//  Created by Wolfpack Digital on 26.07.2021.
//

import UIKit

class ViewController: UIViewController
{
    
    
   
    @IBOutlet weak var usernametextField: UITextField!
    
    @IBOutlet weak var forgotUsernameButton: UIButton!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func forgotUserName(_ sender: Any)
    {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: forgotUsernameButton)
    }
    
    
    @IBAction func forgotPassword(_ sender: Any)
    {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: forgotPasswordButton)
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender:Any?)
    {
      
        guard let sender = sender as? UIButton else {return}
        if sender == forgotPasswordButton
        {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsernameButton
        {
            segue.destination.navigationItem.title = "Forgot Username"
        } else
        {
            segue.destination.navigationItem.title = usernametextField.text
        }
    }
}

