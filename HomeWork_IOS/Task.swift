import UIKit

class Task: NSObject {
    public var titleTask : String
    public var textTask : String
    
    init(title : String, text : String){
        titleTask = title
        textTask = text
    }
}
