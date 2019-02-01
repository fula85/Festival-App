//
//  ViewController.swift
//  Festival App
//
//  Created by mobapp06 on 01/02/2019.
//  Copyright © 2019 EhB. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    let data: [[String]] = [["Reel big fish", "Swashbuckle", "Admiral freebie"], ["Bar A", "Bar B","Bar C", "Bar D"], ["Restaurant A", "Restaurant B", "Restaurant C", "Restaurant D"]]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel!.text = data[indexPath.section][indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

