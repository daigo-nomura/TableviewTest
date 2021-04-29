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
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        return cell
    }


}

