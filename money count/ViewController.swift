//
//  ViewController.swift
//  money count
//
//  Created by Aaron Kuan on 2020/2/3.
//  Copyright © 2020 Aaron Kuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var y = 50;
    var num = 0;
        @IBOutlet var personCount: UILabel!
    var numberOfPeople = 1
    @IBOutlet weak var totalMoney: UILabel!
    
    override func viewDidLoad() {
       personCount.text = "\(num)"
        

        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var textFields = [UITextField]()
    
    @IBAction func add(_ sender: Any) {
        
        if numberOfPeople != 6
        {
            num=num+1;
            let textField = UITextField(frame: CGRect(x: 0, y: y, width: 100, height: 30))
            textField.center.x = view.center.x + 40
            textField.borderStyle = .roundedRect
            textField.keyboardType = .decimalPad
            view.addSubview(textField)
            textFields.append(textField)
            
            let label = UILabel(frame: CGRect(x: 0 ,y: y, width: 145, height: 30))
            label.backgroundColor = UIColor(red: CGFloat.random(in: 0.5...1), green: CGFloat.random(in: 0.5...1), blue: CGFloat.random(in: 0.5...1), alpha: 1)
                                           
            label.center.x = view.center.x-100
            view.addSubview(label)
            label.text = "\(numberOfPeople) person's money"
            numberOfPeople = numberOfPeople+1
            y=y+40
            personCount.text = "\(num)"
            
        }
       
        
    }
    
    @IBAction  func moneyCount(_ sender: Any) {
        
        if Int(textFields[0].text!) != nil, Int(textFields[1].text!) != nil, Int(textFields[3].text!) != nil, Int(textFields[4].text!) != nil
            {
                let sum = Int(textFields[0].text!)! + Int(textFields[1].text!)! + Int(textFields[2].text!)! + Int(textFields[3].text!)! + Int(textFields[4].text!)!
            totalMoney.text = "\(sum)"

        }
        
            //+ textFields[2].text + textFields[3].text + textFields[4].text
        
        //+textFields[2]+textFields[3]+textFields[4]
    }
    
}

