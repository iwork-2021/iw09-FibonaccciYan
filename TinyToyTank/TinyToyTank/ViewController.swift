//
//  ViewController.swift
//  TinyToyTank
//
//  Created by 严思远 on 2022/1/15.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet weak var arView: ARView!
    
    var tankAnchor: TinyToyTank._TinyToyTank?
    var isActionPlaying: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tankAnchor = try! TinyToyTank.load_TinyToyTank()
        tankAnchor!.turret?.setParent(tankAnchor!.tank, preservingWorldTransform: true)
        
        tankAnchor?.actions.actionComplete.onAction = { _ in
          self.isActionPlaying = false
        }
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(tankAnchor!)
    }
    
    @IBAction func turretLeftPressed(_ sender: Any) {
        if self.isActionPlaying {
            return
        }
        else {
            self.isActionPlaying = true
        }
        tankAnchor?.notifications.turretLeft.post()
    }
    
    
    @IBAction func cannonFirePressed(_ sender: Any) {
        if self.isActionPlaying {
            return
        }
        else {
            self.isActionPlaying = true
        }
        tankAnchor?.notifications.cannonFire.post()
    }
    
    
    @IBAction func turretRightPressed(_ sender: Any) {
        if self.isActionPlaying {
            return
        }
        else {
            self.isActionPlaying = true
        }
        tankAnchor?.notifications.turretRight.post()
    }
    
    
    @IBAction func tankLeftPressed(_ sender: Any) {
        if self.isActionPlaying {
            return
        }
        else {
            self.isActionPlaying = true
        }
        tankAnchor!.notifications.tankLeft.post()
    }
    
    
    @IBAction func tankForwardPressed(_ sender: Any) {
        if self.isActionPlaying {
            return
        }
        else {
            self.isActionPlaying = true
        }
        tankAnchor!.notifications.tankForward.post()
    }
    
    @IBAction func tankRightPressed(_ sender: Any) {
        if self.isActionPlaying {
            return
        }
        else {
            self.isActionPlaying = true
        }
        tankAnchor!.notifications.tankRight.post()
    }
}
