//
//  SeViewController.swift
//  APPtest
//
//  Created by iMac on 2018/11/6.
//  Copyright © 2018年 iMac. All rights reserved.
//

import UIKit

class SeViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btn_letteralert(_ sender: Any) {
        let alert = UIAlertController(title: "已發送認證碼到您註冊的手機", message: "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "確定", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
