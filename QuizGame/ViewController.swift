//
//  ViewController.swift
//  QuizGame
//
//  Created by Kayla Davis.
//


import UIKit


class ViewController: UIViewController {
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //start quiz game
    @IBAction func startingGame(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "GameViewController") as! GameViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated:true)
    }
    
    //explain matching game
    @IBAction func startDragGame(_ sender: Any) {
        self.performSegue(withIdentifier: "explainDrag", sender: self)
    }
    
    // starting matching game
    @IBAction func dragDrop(_ sender: Any) {
        self.performSegue(withIdentifier: "DragViewController", sender: self)
//        let vc = storyboard?.instantiateViewController(identifier: "DragViewController") as! DragViewController
//        vc.modalPresentationStyle = .fullScreen
//        present(vc, animated:true)
    }
    //back button
    @IBAction func backButton(_ sender: Any) {

        self.performSegue(withIdentifier: "backButton", sender: self)
    }
}

