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
    //explain matching game
    @IBAction func startDragGame(_ sender: Any) {
        self.performSegue(withIdentifier: "explainDrag", sender: self)
    }
    //start quiz game
    @IBAction func startingGame(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "game") as! GameViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated:true)
    }
    
    // starting matching game
    @IBAction func dragDrop(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "DragViewController") as! DragViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated:true)
    }
    //back button
    @IBAction func backButton(_ sender: Any) {

        self.performSegue(withIdentifier: "backButton", sender: self)
    }
}

