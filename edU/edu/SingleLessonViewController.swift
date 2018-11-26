//
//  SingleLessonViewController.swift
//  edU
//
//  Created by Zachery Gentry on 11/25/18.
//  Copyright © 2018 CSE3311-Team 5-(ZG,GP,CH,TM). All rights reserved.
//

import UIKit

class SingleLessonViewController: UIViewController {

    var lesson: String = ""
    var descString: String = ""
    var isResuming: Bool = true
    @IBOutlet var desc: UILabel!
    @IBOutlet var resumeButton: UIButton!
    
    var list: [String] = []
    let defaults = UserDefaults.standard
    
    
    @IBOutlet var headerTitle: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headerTitle.title = lesson
        desc.text = descString
        
        if(defaults.integer(forKey: lesson.lowercased()) > 0){
            resumeButton.alpha = 1
        }
        else{
            resumeButton.alpha = 0
        }
        
    }
    @IBAction func resume(_ sender: Any) {
        isResuming = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if(segue.destination is ViewController){
            let lesson = segue.destination as? ViewController
            lesson?.headerString = self.lesson
            
            if(self.lesson == "Alphabet"){
                lesson?.list = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
                lesson?.model = AlphabetClassifier().model
                lesson?.counter = defaults.integer(forKey: "alphabet")
            }
                
            else if(self.lesson == "Numbers"){
                lesson?.list = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
                lesson?.model = NumberClassifier().model
                lesson?.counter = defaults.integer(forKey: "numbers")
            }
            else if (self.lesson == "Shapes"){
                lesson?.list = ["circle", "diamond", "oval", "rectangle", "square", "trapezoid", "triangle"]
                lesson?.model = ShapeClassifier().model
                lesson?.counter = defaults.integer(forKey: "shapes")
            }
        }
    }

}
