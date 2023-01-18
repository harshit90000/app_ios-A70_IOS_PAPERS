//
//  CustomCellTableViewController.swift
//  A70_IOS_PAPERS
//
//  Created by Harry Vataliya on 05/10/22.
//

import UIKit

class CustomCellTableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tblview: UITableView!
    
//    var arrcar=[Car]()
    
    var appdel = UIApplication.shared.delegate as! AppDelegate
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appdel.arrcar.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myc = tableView.dequeueReusableCell(withIdentifier: "MycellTableViewCell", for: indexPath) as! MycellTableViewCell
        myc.Carnamelbl.text = appdel.arrcar[indexPath.row].carname
        myc.Carcolorlbl.text = appdel.arrcar[indexPath.row].carcolor
    
        return myc
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "labelsegue", sender: self)
        appdel.selectrow = indexPath.row
        print("Row clicked \(indexPath.row)")
        //use prepare here to send data to next screen
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        appdel.arrcar.remove(at: indexPath.row)
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
