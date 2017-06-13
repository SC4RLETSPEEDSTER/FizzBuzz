//
//  ViewController.swift
//  Fizz Buzz
//
//  Created by Sai Girap on 6/7/17.
//  Copyright © 2017 Sai Girap. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var myNumberLabel: UILabel!
    var number = 0

    override func viewDidLoad()
    {
        super.viewDidLoad()
        myNumberLabel.text = "\(number)"
    }


    @IBAction func screenTapped(_ sender: Any)
    {
        print("screen was tapped")
        number += 1
        if number % 15 == 0
        {
           
            view.backgroundColor = UIColor.yellow
            myNumberLabel.text = "Fizz Buzz"
            myNumberLabel.font = myNumberLabel.font.withSize(90)
        }
        else if number % 3 == 0
        {
            view.backgroundColor = UIColor.blue
            myNumberLabel.text = "Fizz"
                     myNumberLabel.font = myNumberLabel.font.withSize(200)
        }
        else if number % 5 == 0
        {
            view.backgroundColor = UIColor.yellow
            myNumberLabel.text = "Buzz"
            myNumberLabel.font = myNumberLabel.font.withSize(180)
        }
        else
        {
          view.backgroundColor = UIColor.black
            myNumberLabel.text = "\(number)"
         myNumberLabel.font = myNumberLabel.font.withSize(200)
        }
        
        
        
    }

    @IBAction func longPress(_ sender: UILongPressGestureRecognizer)
    {
        number = 0
        view.backgroundColor = UIColor.black
        myNumberLabel.text = "\(number)"
        myNumberLabel.font.withSize(200)
    }


}

