//
//  ViewController.swift
//  LaidLaid
//
//  Created by alien on 2019/5/29.
//  Copyright © 2019 z. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let datas = ["1", "2", "3"]

    private func customSetup() {
        let tableview = UITableView(frame: self.view.bounds)
        print(tableview.style)
        tableview.register(CustomTableViewCell.self, forCellReuseIdentifier: "celll")
        tableview.dataSource = self
        tableview.delegate = self
        
        self.view.addSubview(tableview)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
        customSetup()
    }


}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celll", for: indexPath) as! CustomTableViewCell
        cell.customLabel.text = "yes"
        
        return cell
    }
    
    
}
