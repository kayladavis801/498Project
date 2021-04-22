//
//  ViewController.swift
//  QuizGame
//
//  Created by Kayla Davis.
//


import UIKit
import SpriteKit
import GameplayKit


class ViewController: UIViewController {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
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

