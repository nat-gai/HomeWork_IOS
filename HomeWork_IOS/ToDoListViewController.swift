import Foundation
import UIKit

var taskElement = [Task(title : "Anything Title", text: "anything text"),
                   Task(title : "Second Title Task", text : "second text task")]

class ToDoListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var listTask: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return taskElement.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "cell")
        
        cell.textLabel?.text = taskElement[indexPath.row].titleTask
        cell.detailTextLabel?.text = taskElement[indexPath.row].textTask
        
        return cell
    }
    
    public func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        
        if editingStyle == UITableViewCellEditingStyle.delete{
            taskElement.remove(at: indexPath.row)
            listTask.reloadData()
        }
   }
 
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        listTask.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "taskShow"{
            let showTask : ShowTask = segue.destination as! ShowTask
            let selectRow = listTask.indexPathForSelectedRow?.row
            showTask.showTask = taskElement[selectRow!]
            showTask.selectIndex = selectRow!
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
