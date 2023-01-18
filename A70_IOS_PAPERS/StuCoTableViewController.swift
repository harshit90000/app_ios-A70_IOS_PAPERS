//
//  StuCoTableViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 05/10/22.
//

import UIKit

class StuCoTableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate  {

    
    var arrstud = [StudentCompany]()
    
    @IBOutlet weak var tblview: UITableView!

    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        print("Row tapped \(indexPath.row)")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrstud.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let mycell = UITableViewCell(style: .subtitle, reuseIdentifier: "mycell")
        mycell.textLabel?.text = arrstud[indexPath.row].name
        mycell.detailTextLabel?.text=arrstud[indexPath.row].company
        return mycell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
