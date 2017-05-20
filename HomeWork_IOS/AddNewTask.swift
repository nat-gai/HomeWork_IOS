import UIKit

class AddNewTask: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var titleText: UITextField!
    @IBOutlet weak var taskText: UITextField!
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func addTask(_ sender: Any) {
        
        taskElement.append(Task(title: titleText.text!, text: taskText.text!))
        self.view.endEditing(true)
        titleText.text = ""
        taskText.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
