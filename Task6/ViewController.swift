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
    var text = String()
    
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

    let textView: UITextView = {
        let textView = UITextView()
        
        let height: CGFloat = UIScreen.main.bounds.height
        let width: CGFloat = UIScreen.main.bounds.width
        let x = width / 10.0 * 3.0
        let y = height / 10.0 * 6.0
        let myHeight = height / 20.0
        let myWidth = width / 5.0 * 2
        
        textView.backgroundColor = UIColor.white
        textView.frame = CGRect(x: x, y: y, width: myWidth, height: myHeight)
        textView.text = ""
        
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.cyan
        view.addSubview(button)
        textView.text = GetText()
        view.addSubview(textView)
        // Do any additional setup after loading the view.
        print(text)
    }

    @objc func tapButton() {
        text = textView.text
//        var m = navigationController?.popViewController(animated: true)
        //тут мацаем делегат
    }
    
    func GetText() -> String
    {
        return text
    }

}

