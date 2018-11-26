//
//  LessonsViewController.swift
//  edU
//
//  Created by Zachery Gentry on 11/25/18.
//  Copyright © 2018 CSE3311-Team 5-(ZG,GP,CH,TM). All rights reserved.
//

import UIKit

class LessonsViewController: UIViewController {

    var lesson: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if(segue.destination is SingleLessonViewController){
            let lesson = segue.destination as? SingleLessonViewController
            lesson?.lesson = self.lesson
            
            if(self.lesson == "Alphabet"){
                lesson?.descString = "Fun way to learn all 26 letters of the alphabet. After this lesson you will be able to read your alphabet soup 😊"
            }
            else if (self.lesson == "Numbers"){
                lesson?.descString = "Fun way to learn the most essentials numbers 0 through 9. After this lesson, you will be able to count and write 10 numbers!"
            }
            
            else if (self.lesson == "Shapes"){
                lesson?.descString = "Fun way to learn the most essential shapes. After this, you will be able to draw nearly any shape out there!"
            }
        }
    }

    @IBAction func alphabet(_ sender: Any) {
        self.lesson = "Alphabet"
    }
    
    @IBAction func Shapes(_ sender: Any) {
        self.lesson = "Shapes"
    }
    
    @IBAction func Numbers(_ sender: Any) {
        self.lesson = "Numbers"
    }
}
