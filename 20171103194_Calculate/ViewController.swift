//
//  ViewController.swift
//  20171103194_Calculate
//
//  Created by han on 2019/1/6.
//  Copyright © 2019 biaolang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var temp = 0.0
    var count = 0
    var flag = 0
    @IBOutlet weak var show: UITextField!
    @IBOutlet weak var textbox: UITextField!
    @IBOutlet weak var textbox2: UITextField!
    @IBAction func button1(_ sender: Any) {

    
            show.text = show.text! + "1"
        
    }
    @IBAction func button2(_ sender: Any) {


            show.text = show.text! + "2"

    }
    @IBAction func button3(_ sender: Any) {
    
        
        
            show.text = show.text! + "3"
        
    }
    @IBAction func button4(_ sender: Any) {

            show.text = show.text! + "4"
        
    }
    @IBAction func button5(_ sender: Any) {
   
            show.text = show.text! + "5"
        
    }
    @IBAction func button6(_ sender: Any) {
   
            show.text = show.text! + "6"
        
    }
    @IBAction func button7(_ sender: Any) {
  
            show.text = show.text! + "7"
        
    }
    @IBAction func button8(_ sender: Any) {
  
            show.text = show.text! + "8"
        
    }
    @IBAction func button9(_ sender: Any) {
   
            show.text = show.text! + "9"
        
    }
    @IBAction func button0(_ sender: Any) {
   
            show.text = show.text! + "0"
        
    }
    @IBAction func buttonpoint(_ sender: Any) {
        show.text = show.text! + "."
    }
    @IBAction func add(_ sender: Any) {
        if(count==0)
        {
            textbox.text = show.text
            show.text = ""
            
        }
        else
        {
            textbox2.text = show.text
            temp = Double(textbox.text!)!+Double(textbox2.text!)!
            textbox.text = String(temp)
        }
        show.text = ""
        flag = 1
        count = 1
    }
    @IBAction func pre(_ sender: Any) {
        if(count==0)
        {
            textbox.text = show.text
            show.text = ""
        }
        else
        {
            textbox2.text = show.text
            temp = Double(textbox.text!)!-Double(textbox2.text!)!
            textbox.text = String(temp)
            
        }
        show.text = ""
        flag=2
        count = 1
    }
    @IBAction func mul(_ sender: Any) {
        if(count==0)
        {
            textbox.text = show.text
            show.text = ""
        }
        else
        {
            textbox2.text = show.text
            temp = Double(textbox.text!)!*Double(textbox2.text!)!
            textbox.text = String(temp)
            
        }
        show.text = ""
        flag = 3
        count = 1
    }
    @IBAction func div(_ sender: Any) {
        if(count==0)
        {
            textbox.text = show.text
            show.text = ""
        }
        else
        {
            textbox2.text = show.text
            temp = Double(textbox.text!)!/Double(textbox2.text!)!
            textbox.text = String(temp)
            
        }
        show.text = ""
        flag=4
        count = 1
    }
    @IBAction func clear(_ sender: Any) {
        show.text=""
        textbox.text=""
        textbox2.text=""
        count = 0
        flag = 0
        temp = 0
      
    }
    @IBAction func sum(_ sender: Any) {
        if(flag==1)
        {
            textbox2.text = show.text
            show.text = String(Double(textbox.text!)! + Double(textbox2.text!)!)
        }
        if(flag==2)
        {
            textbox2.text = show.text
            show.text = String(Double(textbox.text!)! - Double(textbox2.text!)!)
        }
        if(flag==3)
        {
            textbox2.text = show.text
            show.text = String(Double(textbox.text!)! * Double(textbox2.text!)!)
        }
        if(flag==4)
        {
            textbox2.text = show.text
            show.text = String(Double(textbox.text!)! / Double(textbox2.text!)!)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

