//
//  ViewController.swift
//  DynamicLabel
//
//  Created by Boy- on 8/1/2563 BE.
//  Copyright © 2563 Boy-. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var _title: String = "Titletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitle"
    var subTitle: String = "SubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitle"
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "LabelTableViewCell") as? LabelTableViewCell {
            cell.lbTitle.text = _title
            cell.lbSubTitle.text = subTitle
            return cell
        }
        return LabelTableViewCell()
    }
    

    @IBOutlet weak var tbView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tbView.delegate = self
        tbView.dataSource = self
        tbView.register(UINib.init(nibName: "LabelTableViewCell", bundle: nil), forCellReuseIdentifier: "LabelTableViewCell")
    }


}

