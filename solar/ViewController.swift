//
//  ViewController.swift
//  solar
//
//  Created by popCorn on 2018/07/08.
//  Copyright © 2018 popCorn. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //debug 
        
        // Set the view's delegate
        sceneView.delegate = self
        
                let sphere = SCNSphere(radius: 0.3)
        //        let cube = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0.01)
        
                let material = SCNMaterial()
        
                material.diffuse.contents = UIImage(named: "art.scnassets/8k_moon.jpg")
        
                sphere.materials = [material]
        
                let node = SCNNode()
                node.position = SCNVector3(x: 0, y: 0.1, z: -0.5)
                node.geometry = sphere
        
                sceneView.scene.rootNode.addChildNode(node)
        
        
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
        // Set the scene to the view
        //sceneView.scene = scene
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
}
