//
//  HomeVC.swift
//  stud_CRUD_prac
//
//  Created by DCS on 25/02/22.
//  Copyright © 2022 DCS. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
    
    private let lbl : UILabel = {
        let lbl = UILabel()
        lbl.text = "Welcome, \(UserDefaults.standard.string(forKey: "session") ?? " ")"
        lbl.textColor = .orange
        return lbl
    }()
    private let add : UIButton={
        let btn = UIButton()
        btn.setTitle("ADD", for: .normal)
        btn.addTarget(self, action: #selector(clickAdd), for: .touchUpInside)
        btn.backgroundColor = .orange
        return btn
    }()
    
    @objc func clickAdd()
    {
        
    }
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        super.viewDidLoad()

        
    }

}
