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

    //back button
    @IBAction func backButton(_ sender: Any) {
        let alert = UIAlertController(title: "Back", message: "you beat the game!! push the back button to try again to go back to the menu!", preferredStyle: .alert)
        alert.addAction( UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        present(alert, animated: true)
    
        self.performSegue(withIdentifier: "backButton", sender: self)
    }
}

