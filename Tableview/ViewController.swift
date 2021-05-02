//
//  ViewController.swift
//  Tableview
//
//  Created by 野村大悟 on 2021/04/28.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var identifier = ""
        switch indexPath.row {
        case 0:
            identifier = "Cell1"
        case 1:
            identifier = "Cell2"
        case 2:
            identifier = "Cell3"
        case 3:
            identifier = "Cell4"
        default:
            identifier = "Cell5"
        }

        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        if identifier != "Cell5"{
            cell.textLabel?.text = "text1"
            cell.detailTextLabel?.text = "text2"
        }else {
            cell.textLabel?.text = "aaaa"
        }
        return cell
    }


}
