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
        let vimage = VisionImage(image: image)
        UIImageWriteToSavedPhotosAlbum(image, self, nil, nil)
        
    }
        
//        textRecognizer.process(vimage) { result, error in
//            guard error == nil, let result = result else {
//                // ...
//                return
//            }
//            print(result)
//            let resultText = result.text
//            for block in result.blocks {
//                let blockText = block.text
//                let blockConfidence = block.confidence
//                let blockLanguages = block.recognizedLanguages
//                let blockCornerPoints = block.cornerPoints
//                let blockFrame = block.frame
//                for line in block.lines {
//                    let lineText = line.text
//                    let lineConfidence = line.confidence
//                    let lineLanguages = line.recognizedLanguages
//                    let lineCornerPoints = line.cornerPoints
//                    let lineFrame = line.frame
//                    for element in line.elements {
//                        let elementText = element.text
//                        let elementConfidence = element.confidence
//                        let elementLanguages = element.recognizedLanguages
//                        let elementCornerPoints = element.cornerPoints
//                        let elementFrame = element.frame
//                    }
//                }
//            }
//            self.label.text = result.text;
//        }
    
    
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

