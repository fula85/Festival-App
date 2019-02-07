//
//  ViewController.swift
//  Festival App
//
//  Created by mobapp06 on 01/02/2019.
//  Copyright © 2019 EhB. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    let data: [[String]] = [["Aerosmith", "Bob Marley", "2pac"], ["Artisto", "Jazzman", "Classico"], ["Italian", "Japanese","Indian", "Snacks"], ["Wine Bar", "Cider Bar", "Champagne Bar", "Beer Bar"], ["Wine Degustation"]]
    let titles:[String] = ["Saturday Podium A", "Sunday Podium B", "Restaurants", "Bars", "Degustation"]
    let subs: [[String]] = [["Saturday 2:00PM", "Saturday 7:00PM", "Saturday 11:00PM"], ["Sunday 2:00PM", "Sunday 7:00PM", "Sunday 11:00PM"], ["Open 09am - 5pm", "Open 1pm - 11pm", "Open 4pm - 12pm", "Open 2pm - 11pm"], ["Open 09am - 5pm", "Open 1pm - 11pm", "Open 4pm - 12pm", "Open 2pm - 11pm"], ["Register anytime"]]
    let images: [[String]] = [["aerosmith.jpg", "Bob.jpg","2pac.png"], ["artist.jpg", "admirable.jpg","swasbuckle.jpg"], ["italianresto.jpg", "sushiresto.jpg","indianresto.jpg", "snackresto.jpg"], ["bar1.jpg", "bar2.jpg", "bar3.jpg", "bar4.jpg"], ["winedegu.jpg"]]
    
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return titles[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) 
        cell.textLabel!.text = data[indexPath.section][indexPath.row]
        cell.detailTextLabel!.text = subs[indexPath.section][indexPath.row]
        cell.imageView!.image = UIImage.init(named: images[indexPath.section][indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(data[indexPath.row])")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination:DetailViewController = segue.destination as! DetailViewController
        
        
        let indexPathForSelectedCell = tableView.indexPath(for: sender as! UITableViewCell)!
       // let artistToPass = dao.artistLijst[indexPathForSelectedCell.row]
        
      //  destination.sendArtist = artistToPass

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

