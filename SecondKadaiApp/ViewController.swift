//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by Masaharu Hoshino (Work) on 2022/10/31.
//

import UIKit

class ViewController: UIViewController {

    // TextFieldを、StoryboardでこのViewControllerにIBOutletとして接続しておく
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        
        // 遷移先のResultViewControllerで宣言しているnameに文字列を代入して渡す。TextFieldが空欄の場合はnameに「名無し」を代入
        if textField.text?.isEmpty ?? true {
            resultViewController.name = "名無し"
        } else {
            resultViewController.name = textField.text!
        }
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue){
        // 他の画面からsegueを使って戻ってきた時に呼ばれる
    }
    

}

