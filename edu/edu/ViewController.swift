//
//  ViewController.swift
//  edU
//
//  Created by Giannina Pachas on 10/11/18.
//  Copyright © 2018 CSE3311-Team 5-(ZG,GP,CH,TM). All rights reserved.
//

import UIKit
import Sketch
import Firebase

class ViewController: UIViewController {

    
    @IBOutlet var sketchView: SketchView!
    @IBOutlet var label: UILabel!
    
    let vision = Vision.vision()
    
    @IBAction func submitImage(_ sender: Any) {
//        let options = VisionCloudTextRecognizerOptions()
//        options.languageHints = ["en"]
//        let textRecognizer = vision.cloudTextRecognizer(options: options)
        let image = sketchView.asImage()
        UIImageWriteToSavedPhotosAlbum(image, self, nil, nil)
        
    }
    
    
    @IBAction func clearCanvas(_ sender: Any) {
        sketchView.clear()
    }
    
    @IBAction func undoDraw(_ sender: Any) {
         sketchView.undo()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sketchView.lineColor = UIColor.white
        sketchView.backgroundColor = UIColor.black
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension SketchView {
    
    // Using a function since `var image` might conflict with an existing variable
    // (like on `UIImageView`)
    func asImage() -> UIImage {
        let renderer = UIGraphicsImageRenderer(bounds: bounds)
        return renderer.image { rendererContext in
            layer.render(in: rendererContext.cgContext)
        }
    }
}

