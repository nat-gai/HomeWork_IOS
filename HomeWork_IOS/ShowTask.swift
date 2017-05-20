import Foundation
import UIKit

class ShowTask: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var titleText: UITextField!    
    @IBOutlet weak var taskText: UITextField!
    
    var showTitle = ""
    var showText = ""
    var showTask : Task = Task(title: "", text: "")
    var selectIndex = -1
    
    override func viewDidLoad() {
                
        showTitle = showTask.titleTask
        showText = showTask.textTask
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        titleText.resignFirstResponder()
        taskText.resignFirstResponder()
        return true
    }
}
