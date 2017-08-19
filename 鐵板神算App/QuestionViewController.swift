//
//  QuestionViewController.swift
//  鐵板神算App
//
//  Created by Huang Hao on 2017/8/19.
//  Copyright © 2017年 Huang Hao. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    
    @IBOutlet weak var AnswerImageView: UIImageView!
    
    @IBOutlet weak var QuestionLabel: UILabel!
    
    @IBOutlet weak var answerTextField: UITextField!
    
    @IBOutlet weak var Button: UIButton!
    
    func questions (){
        QuestionLabel.text = "今年是西元幾年？"
        if answerTextField.text == "2017" {
            AnswerImageView.image = UIImage(named : "yes")
             QuestionLabel.text = "彼得潘帥不帥？"
        }else {
            AnswerImageView.image = UIImage(named : "no")
            if answerTextField.text == "帥"{
                AnswerImageView.image = UIImage(named : "yes")
                QuestionLabel.text = "彼得潘教的課好不好？"
            }else{
                AnswerImageView.image = UIImage(named : "no")
                if answerTextField.text == "好"{
                    AnswerImageView.image = UIImage(named : "yes")
                    QuestionLabel.text = "題目結束"
                }else{
                    AnswerImageView.image = UIImage(named : "no")
                }
            }
        }
        
    }
    
    
    
    @IBAction func Button(_ sender: UIButton) {
        questions()
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
