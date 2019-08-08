//
//  ViewController.swift
//  iossurfschool
//
//  Created by xcode on 06.08.2019.
//  Copyright © 2019 vsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hello world")
    }
    
}
    
    extension ViewController: UITableViewDelegate, UITableViewDataSource
    {
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 100
        }
        
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "FeedTestCell", for: IndexPath) as? FeedTestCell else {
                return UITableViewCell()
                cell.testLabel.text = "IndexPath: section:\(indexPath.section)"
            }
        }
    }

