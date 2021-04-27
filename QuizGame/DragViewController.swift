//
//  DragViewController.swift

//
//


import UIKit




class DragViewController: UIViewController {
   
//    @IBOutlet weak var dragging: UIView!
//
//    @IBOutlet var gestureRecognition: UIPanGestureRecognizer!
//
    @IBOutlet var gesture1: UIPanGestureRecognizer!
    @IBOutlet weak var dragView1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func ViewDragged1(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: dragView1)
        
                sender.view!.center = CGPoint(x: sender.view!.center.x + translation.x, y: sender.view!.center.y + translation.y)
        
                sender.setTranslation(CGPoint.zero, in: self.view)
    }
    //    @IBAction func viewDrag1(_ sender: UIPanGestureRecognizer) {
//        let translation = sender.translation(in: dragging)
//
//        sender.view!.center = CGPoint(x: sender.view!.center.x + translation.x, y: sender.view!.center.y + translation.y)
//
//        sender.setTranslation(CGPoint.zero, in: self.view)
//    }
//

    
//    func checkCollision (){
//        if <#condition#> {
//            <#code#>
//        }
//    }
//    @State var xPos1:CGFloat = 200
//    @State var yPos1:CGFloat = 300
//
//    @State var xPos2:CGFloat = 200
//    @State var yPos2:CGFloat = 600
//
//
//    func ZStack(){
//
//        Rectangle()
//            .fill(Color.black)
//            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
//            .position(x: self.xPos1, y: self.yPos1)
//
//        Rectangle()
//            .fill(Color.blue)
//            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
//            .position(x: self.xPos2, y: self.yPos2)
//            .gesture(DragGesture().onChanged(self.xPos2 = value.location.x)
//    }






}
