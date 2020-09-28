//
//  IntialViewController.swift
//  TicTacToeAlgo
//
//  Created by Dhruv Upadhyay on 28/09/20.
//  Copyright © 2020 Dhruv Upadhyay. All rights reserved.
//

import UIKit

class IntialViewController: UIViewController {

    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var btnX: UIButton!
    @IBOutlet weak var btnO: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnX.layer.cornerRadius = 5
        btnO.layer.cornerRadius = 5
        btnNext.layer.cornerRadius = 5

        // Do any additional setup after loading the view.
    }
    @IBAction func btnNextTapped(_ sender: Any) {
        if player == "" {
            let alert = UIAlertController(title: "Tic - Tac -Toe", message: "Please select your Sign", preferredStyle: UIAlertController.Style.alert)
                    // add an action (button)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    // show the alert
                    self.present(alert, animated: true, completion: nil)
            showAlert(title: "Tic - Tac - Toe", message: "Please Choose your Symbol")
        } else {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
             navigationController?.pushViewController(vc,
             animated: true)
        }
    }
    
    @IBAction func btnXTapped(_ sender: Any) {
        player = "x"
        system = "o"
        btnX.layer.borderWidth = 2
        btnX.layer.borderColor = UIColor.red.cgColor
        btnO.layer.borderWidth = 0
    }
    @IBAction func btnOTapped(_ sender: Any) {
        player = "o"
        system = "x"
        btnO.layer.borderWidth = 2
        btnO.layer.borderColor = UIColor.red.cgColor
        btnX.layer.borderWidth = 0
    }

}

