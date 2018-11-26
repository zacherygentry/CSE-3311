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
    @IBOutlet var desc: UILabel!
    
    var list: [String] = []
    
    
    @IBOutlet var headerTitle: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headerTitle.title = lesson
        desc.text = descString
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if(segue.destination is ViewController){
            let lesson = segue.destination as? ViewController
            lesson?.headerString = self.lesson
            
            if(self.lesson == "Alphabet"){
                lesson?.list = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
                lesson?.model = AlphabetClassifier().model
            }
                
            else if(self.lesson == "Numbers"){
                lesson?.list = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
                lesson?.model = NumberClassifier().model
            }
            else if (self.lesson == "Shapes"){
                lesson?.list = ["circle", "diamond", "oval", "rectangle", "square", "trapezoid", "triangle"]
                lesson?.model = ShapeClassifier().model
            }
        }
    }

}
