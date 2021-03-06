//
//  DetailViewController.swift
//  Festival App
//
//  Created by mobapp06 on 07/02/2019.
//  Copyright © 2019 EhB. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var lblnaam: UILabel!
    @IBOutlet weak var afbeeldingart: UIImageView!
    @IBOutlet weak var lblText: UITextView!
    var sendArtist : Artist?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let artist = sendArtist{
            lblnaam.text = artist.naam
            afbeeldingart.image = UIImage.init(named: artist.afbeeldingart)
            lblText.text = artist.omschrijving
        }
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
