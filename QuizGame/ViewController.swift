//
//  ViewController.swift
//  QuizGame
//
//  Created by Kayla Davis on 3/9/21.
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //starting the game
    @IBAction func startGame(){
        let vc = storyboard?.instantiateViewController(identifier: "game") as! GameViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated:true)
    }


}

