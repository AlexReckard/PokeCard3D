//
//  ViewController.swift
//  PokeCard3D
//
//  Created by Alex Reckard on 1/20/20.
//  Copyright © 2020 Alex Reckard. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
        
        sceneView.autoenablesDefaultLighting = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARImageTrackingConfiguration()
        
        if let imagesToTrack = ARReferenceImage.referenceImages(inGroupNamed: "Pokemon Cards", bundle: Bundle.main) {
            
            configuration.trackingImages = imagesToTrack
            
            configuration.maximumNumberOfTrackedImages = 11
            
            print("Images successfully added")
            
        }

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }

    // MARK: - ARSCNViewDelegate
    
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        
        let node = SCNNode()
        
        if let imageAnchor = anchor as? ARImageAnchor {
            
            let plane = SCNPlane(
                width: imageAnchor.referenceImage.physicalSize.width,
                height: imageAnchor.referenceImage.physicalSize.height
            );
            
            plane.firstMaterial?.diffuse.contents = UIColor(white: 1.0, alpha: 0.5)
            
            let planeNode = SCNNode(geometry: plane)
            
            planeNode.eulerAngles.x = -.pi / 2
            
            node.addChildNode(planeNode)
            
            if imageAnchor.referenceImage.name == "bulbasaur-card" {
                
                if let pokeScene = SCNScene(named: "art.scnassets/Bulbasaur/bulbasaur.scn") {
                              
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                                  
                        pokeNode.eulerAngles.x = .pi / 2
                                  
                        planeNode.addChildNode(pokeNode)
                                  
                    };
                              
                };
            };
            
            if imageAnchor.referenceImage.name == "charmander-card" {
                          
                if let pokeScene = SCNScene(named: "art.scnassets/Charmander/charmander.scn") {
                                        
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                                            
                        pokeNode.eulerAngles.x = .pi / 2
                                            
                        planeNode.addChildNode(pokeNode)
                                            
                    };
                                        
                };
            };
            
            if imageAnchor.referenceImage.name == "eevee-card" {
                          
                if let pokeScene = SCNScene(named: "art.scnassets/Eevee/eevee.scn") {
                                        
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                                            
                        pokeNode.eulerAngles.x = .pi / 2
                                            
                        planeNode.addChildNode(pokeNode)
                                            
                    };
                                        
                };
            };
            
            if imageAnchor.referenceImage.name == "pikachu-card" {
                          
                if let pokeScene = SCNScene(named: "art.scnassets/Pikachu/pikachu.scn") {
                                        
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                                            
                        pokeNode.eulerAngles.x = .pi / 2
                                            
                        planeNode.addChildNode(pokeNode)
                                            
                    };
                                        
                };
            };
            
            if imageAnchor.referenceImage.name == "mew-card" {
                          
                if let pokeScene = SCNScene(named: "art.scnassets/Mew/mew.scn") {
                                        
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                                            
                        pokeNode.eulerAngles.x = .pi / 2
                                            
                        planeNode.addChildNode(pokeNode)
                                            
                    };
                                        
                };
            };
            
            if imageAnchor.referenceImage.name == "gyarados-card" {
                          
                if let pokeScene = SCNScene(named: "art.scnassets/Gyarados/gyarados.scn") {
                                        
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                                            
                        pokeNode.eulerAngles.x = .pi / 2
                                            
                        planeNode.addChildNode(pokeNode)
                                            
                    };
                                        
                };
            };
            
            if imageAnchor.referenceImage.name == "charizard-card" {
                          
                if let pokeScene = SCNScene(named: "art.scnassets/Charizard/charizard.scn") {
                                        
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                                            
                        pokeNode.eulerAngles.x = .pi / 2
                                            
                        planeNode.addChildNode(pokeNode)
                                            
                    };
                                        
                };
            };
            
            if imageAnchor.referenceImage.name == "gengar-card" {
                          
                if let pokeScene = SCNScene(named: "art.scnassets/Gengar/gengar.scn") {
                                        
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                                            
                        pokeNode.eulerAngles.x = .pi / 2
                                            
                        planeNode.addChildNode(pokeNode)
                                            
                    };
                                        
                };
            };
            
            if imageAnchor.referenceImage.name == "lugia-card" {
                          
                if let pokeScene = SCNScene(named: "art.scnassets/Lugia/lugia.scn") {
                                        
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                                            
                        pokeNode.eulerAngles.x = .pi / 2
                        
                        pokeNode.worldPosition.y = 0.15
                                            
                        planeNode.addChildNode(pokeNode)
                                            
                    };
                                        
                };
            };
            
            if imageAnchor.referenceImage.name == "mewtwo-card" {
                          
                if let pokeScene = SCNScene(named: "art.scnassets/Mewtwo/mewtwo.scn") {
                                        
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                                            
                        pokeNode.eulerAngles.x = .pi / 2
                                            
                        planeNode.addChildNode(pokeNode)
                                            
                    };
                                        
                };
            };
            
            if imageAnchor.referenceImage.name == "jigglypuff-card" {
                          
                if let pokeScene = SCNScene(named: "art.scnassets/Jigglypuff/jigglypuff.scn") {
                                        
                    if let pokeNode = pokeScene.rootNode.childNodes.first {
                                            
                        pokeNode.eulerAngles.x = .pi / 1
                                            
                        planeNode.addChildNode(pokeNode)
                                            
                    };
                                        
                };
            };
        };
        
        return node

    };
};
