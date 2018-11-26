//
//  ViewController.swift
//  edU
//
//  Created by Giannina Pachas on 10/11/18.
//  Copyright © 2018 CSE3311-Team 5-(ZG,GP,CH,TM). All rights reserved.
//

import UIKit
import Sketch
import CoreML
import Vision
import ImageIO
import SwiftySound
import anim

class ViewController: UIViewController {
    
    
    @IBOutlet var sketchView: SketchView!
    
    @IBOutlet var header: UILabel!
    var headerString: String = "Default"
    
    @IBOutlet var wrong: UILabel!
    @IBOutlet var correct: UIImageView!
    
    var model: MLModel = AlphabetClassifier().model
    var list: [String] = []
    var counter = 0
    var currentWord = ""
    var guess = ""
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sketchView.lineColor = UIColor.white
        sketchView.backgroundColor = UIColor.black
        self.correct.alpha = 0
        self.correct.frame.origin = CGPoint(x: 0, y: 0)
        self.wrong.alpha = 0
        self.wrong.frame.origin = CGPoint(x: 0, y: 0)
        
        
        header.text = headerString
        currentWord = list[counter]
        
        playWord()
    }
    
    
    @IBAction func submitImage(_ sender: Any) {
        //        let options = VisionCloudTextRecognizerOptions()
        //        options.languageHints = ["en"]
        //        let textRecognizer = vision.cloudTextRecognizer(options: options)
        let image = sketchView.asImage()
        updateClassifications(for: image)
    }
    
    
    @IBAction func clearCanvas(_ sender: Any) {
        sketchView.clear()
    }
    
    @IBAction func undoDraw(_ sender: Any) {
        sketchView.undo()
    }
    
    /// - Tag: MLModelSetup
    lazy var classificationRequest: VNCoreMLRequest = {
        do {
            /*
             Use the Swift class `MobileNet` Core ML generates from the model.
             To use a different Core ML classifier model, add it to the project
             and replace `MobileNet` with that model's generated Swift class.
             */
            let model = try VNCoreMLModel(for: self.model)
            
            let request = VNCoreMLRequest(model: model, completionHandler: { [weak self] request, error in
                self?.processClassifications(for: request, error: error)
            })
            request.imageCropAndScaleOption = .centerCrop
            return request
        } catch {
            fatalError("Failed to load Vision ML model: \(error)")
        }
    }()
    
    
    /// - Tag: PerformRequests
    func updateClassifications(for image: UIImage) {
        
        guard let ciImage = CIImage(image: image) else { fatalError("Unable to create \(CIImage.self) from \(image).") }
        
        DispatchQueue.global(qos: .userInitiated).async {
            let handler = VNImageRequestHandler(ciImage: ciImage)
            do {
                try handler.perform([self.classificationRequest])
            } catch {
                /*
                 This handler catches general image processing errors. The `classificationRequest`'s
                 completion handler `processClassifications(_:error:)` catches errors specific
                 to processing that request.
                 */
                print("Failed to perform classification.\n\(error.localizedDescription)")
            }
        }
    }
    
    /// Updates the UI with the results of the classification.
    /// - Tag: ProcessClassifications
    func processClassifications(for request: VNRequest, error: Error?) {
        DispatchQueue.main.async {
            guard let results = request.results else {
                return
            }
            // The `results` will always be `VNClassificationObservation`s, as specified by the Core ML model in this project.
            let classifications = results as! [VNClassificationObservation]
            
            if classifications.isEmpty {
                
            } else {
                // Display top classifications ranked by confidence in the UI.
                let topClassifications = classifications.prefix(4)
                let descriptions = topClassifications.map { classification in
                    // Formats the classification for display; e.g. "(0.37) cliff, drop, drop-off".
                    return String(format: "  (%.2f) %@", classification.confidence, classification.identifier)
                }
                let topConfidence = topClassifications[0].confidence
                if(topConfidence > 0.40){
                    self.guess = topClassifications[0].identifier
                    self.checkGuess(guess: self.guess)
                    
                }
                else {
                    self.guess = "unknown"
                }
                print("Classification:\n" + descriptions.joined(separator: "\n"))
            }
        }
    }
    
    func checkGuess(guess: String) {
        print(guess)
        if(guess == self.currentWord){
            nextWord()
            fadeCorrectIn()
            print("Good job! " + guess + " is correct!")
            sketchView.clear()
        }
        else{
            fadeWrongIn()
        }
    }
    
    func nextWord(){
        self.counter += 1
        if(counter < list.count){
            self.currentWord = list[counter]
        }
        else {
            counter = 0
            self.currentWord = list[counter]
        }
        
        switch headerString {
        case "Alphabet":
            defaults.set(counter, forKey: "alphabet")
        case "Numbers":
            defaults.set(counter, forKey: "nunmbers")
        case "Shapes":
            defaults.set(counter, forKey: "shapes")
        default:
            print("Error")
        }
    }
    
    @IBAction func playSound(_ sender: Any) {
        playWord()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playWord(){
        Sound.play(file: currentWord, fileExtension: "m4a")
    }
    
    func fadeCorrectIn(){
        self.correct.frame.origin = CGPoint(x: 120, y: 266)
        anim {
            self.correct.alpha = 1
            }.then {
                self.correct.alpha = 0
                self.playWord()
            }
    }
    
    func fadeWrongIn(){
        self.wrong.frame.origin = CGPoint(x: 38, y: 266)
        anim {
            self.wrong.alpha = 1
            }.then {
                self.wrong.alpha = 0
                self.playWord()
            }
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

