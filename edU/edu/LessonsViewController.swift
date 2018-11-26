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
