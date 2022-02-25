//
//  Login.swift
//  stud_CRUD_prac
//
//  Created by DCS on 25/02/22.
//  Copyright © 2022 DCS. All rights reserved.
//

import UIKit

class Notes: UIViewController {
    
    private let header : UILabel={
        let head = UILabel()
        head.text = "Notes"
        head.textColor = .orange
        head.font = UIFont.boldSystemFont(ofSize: 20)
        return head
    }()
    
    private let email : UITextField={
        let email = UITextField()
        email.placeholder = "Enter Title"
        email.layer.borderWidth = 2
        email.layer.cornerRadius = 10
        return email
    }()
    
    private let pass : UITextField={
        let email = UITextField()
        email.isSecureTextEntry = true
        email.placeholder = "Enter Desc"
        email.layer.borderWidth = 2
        email.layer.cornerRadius = 10
        return email
    }()
    
    private let classPick = UIPickerView()
    var pickerData = ["BCA","BBA","MBA","MCA"]
    
    private let login : UIButton={
        let btn = UIButton()
        btn.setTitle("Add", for: .normal)
        btn.addTarget(self, action: #selector(clicklogin), for: .touchUpInside)
        btn.backgroundColor = .orange
        return btn
    }()
    
    
    @objc func clicklogin(){
        
    }
    override func viewDidLoad() {
        
        navigationController?.isNavigationBarHidden = true
        view.backgroundColor = .white
        view.addSubview(header)
        view.addSubview(email)
        view.addSubview(pass)
        view.addSubview(login)
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        header.frame = CGRect(x: 50, y: 100, width: view.width - 100, height: 30)
        email.frame = CGRect(x: 20, y: header.bottom + 20, width: view.width-40, height: 40)
        pass.frame = CGRect(x: 20, y: email.bottom + 20, width: view.width-40, height: 80)
        login.frame = CGRect(x: 20, y: pass.bottom + 20, width: view.width-40, height: 40)
        super.viewDidLayoutSubviews()
    }
}
