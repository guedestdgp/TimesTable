//
//  ViewController.swift
//  TimesTable
//
//  Created by MacStudent on 2019-10-30.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var numbers: [Int]?
    @IBOutlet weak var txNUmberField: UITextField!
    @IBOutlet weak var tvShowResults: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard numbers != nil else {return UITableViewCell()}
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "")
        cell.textLabel?.text = "\(numbers![indexPath.row])"
        return cell
    }
    
    @IBAction func btActionCalculate(_ sender: UIButton) {
        numbers = [Int]()
        let number = Int(txNUmberField.text!) ?? 0
        for item in 1...10 {
            numbers?.append(number * item)
        }
        tvShowResults.reloadData()
    }
}

