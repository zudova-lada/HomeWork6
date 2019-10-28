//
//  ViewController.swift
//  Task6
//
//  Created by Лада on 24/10/2019.
//  Copyright © 2019 Лада. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var indexPath = IndexPath()
    var cell = UITableViewCell()
    
    let button: UIButton = {
        let button = UIButton(type: .custom)
        
        let height: CGFloat = UIScreen.main.bounds.height
        let width: CGFloat = UIScreen.main.bounds.width
        let x = width / 10.0 * 3.0
        let y = height / 10.0 * 8.0
        let myHeight = height / 20.0
        let myWidth = width / 5.0 * 2
        
        
        button.setTitle("Ввод", for: .normal)
        button.backgroundColor = UIColor.white
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action:  #selector(tapButton), for:.touchDown)
        button.frame = CGRect(x: x, y: y, width: myWidth, height: myHeight)
        return button
    }()

    var textView: UITextView = {
        let textView = UITextView()
        
        let height: CGFloat = UIScreen.main.bounds.height
        let width: CGFloat = UIScreen.main.bounds.width
        let x = width / 10.0 * 3.0
        let y = height / 10.0 * 6.0
        let myHeight = height / 20.0
        let myWidth = width / 5.0 * 2
        
        textView.backgroundColor = UIColor.white
        textView.frame = CGRect(x: x, y: y, width: myWidth, height: myHeight)
        textView.text =  ""
        
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.cyan
        view.addSubview(button)
        textView.text = GetText()
        view.addSubview(textView)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        cell.frame.size.height = 100.0
        cell.sizeThatFits(CGSize(width: 200.0, height: 500.0))
        cell.sizeToFit()
    }

    @objc func tapButton() {
        cell.textLabel?.text = textView.text
    }
    
    func GetText() -> String
    {
        return cell.textLabel!.text!
    }

}

