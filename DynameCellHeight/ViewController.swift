//
//  ViewController.swift
//  DynameCellHeight
//
//  Created by DNA on 2/1/17.
//  Copyright © 2017 DNA. All rights reserved.
//

import UIKit

/*!
 IMPORTANT
 Set UILabel lines to 0
 */
class ViewController: UITableViewController {
    
    let arrayData = [
        "Lorem ipsum dolor sit amet, ea his bonorum omittantur dissentiunt.",
        "Lorem ipsum dolor sit amet, ea his bonorum omittantur dissentiunt. An vim habeo quaerendum, qui ubique consetetur et. In mel novum oratio vocibus, ad quot noluisse nec.",
        "Lorem ipsum dolor sit amet, ea his bonorum omittantur dissentiunt. An vim habeo quaerendum, qui ubique consetetur et. In mel novum oratio vocibus, ad quot noluisse nec. Est at populo scaevola hendrerit, timeam delenit sed id. At mel quot audiam volumus. No est consul urbanitas, erat porro vel ut. Ad nec labitur vocibus, utinam populo delicata ad has.",
        "Lorem ipsum dolor sit amet, ea his bonorum omittantur dissentiunt. An vim habeo quaerendum, qui ubique consetetur et. In mel novum oratio vocibus, ad quot noluisse nec. Est at populo scaevola hendrerit, timeam delenit sed id. At mel quot audiam volumus. No est consul urbanitas, erat porro vel ut. Ad nec labitur vocibus, utinam populo delicata ad has. Altera explicari vel an, qui ei diam noster latine, nihil euripidis cu has. No nec iisque mandamus partiendo. Usu ex probo explicari voluptaria. Vidit aliquip similique mea ne, vim semper voluptua electram no. Vim detracto insolens maluisset te."
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - UITableViewDataSource, UITableViewDelegate
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "CellIdentifier"
        let cell = self.tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! CustomCell
        cell.label.text = self.arrayData[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayData.count
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}

