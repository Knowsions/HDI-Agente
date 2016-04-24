//
//  BackTableVC.swift
//  HDI Agente
//
//  Created by karim herrera on 23/04/16.
//  Copyright © 2016 In-die Apps. All rights reserved.
//

import Foundation
class BackTableVC: UITableViewController {
    
    var TableArray = [String]()
    
    override func viewDidLoad() {
        TableArray = ["Inicio","Renovadas","Notificadas","Canceladas","Pagadas"]
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return TableArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = TableArray[indexPath.row]
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var DestVC = segue.destinationViewController as! ViewController
        var indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!
        DestVC.select = indexPath.row
    }
}