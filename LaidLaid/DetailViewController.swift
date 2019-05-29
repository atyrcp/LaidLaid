//
//  DetailViewController.swift
//  LaidLaid
//
//  Created by alien on 2019/5/29.
//  Copyright © 2019 z. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var resultLabel = UILabel()
    var stringLabel = UILabel()
    var addButton = UIButton()
    var secondStackview = UIStackView()
    
    override func viewWillLayoutSubviews() {
        secondStackview.translatesAutoresizingMaskIntoConstraints = false
        secondStackview.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        secondStackview.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0).isActive = true
    }
    
    
    private func setupViews() {
        
        let stackview = UIStackView(arrangedSubviews: [resultLabel, stringLabel])
        stackview.axis = .vertical
        stackview.spacing = 8
        stackview.alignment = .fill
        stackview.distribution = .fill
        
        secondStackview = UIStackView(arrangedSubviews: [stackview, addButton])
        secondStackview.axis = .horizontal
        secondStackview.spacing = 8
        secondStackview.alignment = .fill
        secondStackview.distribution = .fillEqually
        
        
        self.view.addSubview(secondStackview)
        
    }
    
    private func setupActions() {
        addButton.addTarget(self, action: #selector(dosomething), for: .touchUpInside)
    }
    
    @objc func dosomething() {
        print("yes")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
        setupViews()
        setupActions()
        stringLabel.text = "haha i made it"
        addButton.backgroundColor = .gray
        // Do any additional setup after loading the view.
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

extension UIButton {
    
    func addAction(for action: ()->Void){
        action()
    }
}
