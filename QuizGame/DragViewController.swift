//
//  DragViewController.swift

//
//



//import UIKit
//
//class DragViewController: UIViewController {
//
//    @IBOutlet weak var vehiclesCollectionView: UICollectionView!
//
//    @IBOutlet weak var firstImageView: UIImageView!
//    @IBOutlet weak var secondImageView: UIImageView!
//    @IBOutlet weak var thirdImageView: UIImageView!
//    @IBOutlet weak var fourthImageView: UIImageView!
//    @IBOutlet weak var fifthImageView: UIImageView!
//
//    var selectedFinger = 0
//    var items : [UIImage] = []
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//
//        items = [#imageLiteral(resourceName: "bicycle.png"),#imageLiteral(resourceName: "bike.png"),#imageLiteral(resourceName: "bus.png"),#imageLiteral(resourceName: "car.png"),#imageLiteral(resourceName: "truck.png")]
//
//        self.setDragAndDropSettings()
//
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//    func setDragAndDropSettings(){
//        let dragInteraction1 = UIDragInteraction(delegate: self)
//        dragInteraction1.isEnabled = true
//
//        let dragInteraction2 = UIDragInteraction(delegate: self)
//        dragInteraction2.isEnabled = true
//
//        let dragInteraction3 = UIDragInteraction(delegate: self)
//        dragInteraction3.isEnabled = true
//
//        let dragInteraction4 = UIDragInteraction(delegate: self)
//        dragInteraction4.isEnabled = true
//
//    }


import UIKit
import SpriteKit
import GameplayKit


class DragViewController: UIViewController {

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
