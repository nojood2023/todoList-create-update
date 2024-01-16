//
//  NewTodoViewController.swift
//  taskManagement
//
//  Created by Nojood Aljuaid  on 04/07/1445 AH.
//

import UIKit

class NewTodoViewController: UIViewController {
    var isCreation = true 
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var mainButton: UIButton!
    @IBOutlet weak var detailsTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if isCreation == false {
            mainButton.setTitle("Edit", for: .normal)
            navigationItem.title = "Edit Task"
        }
    }
    

    @IBAction func addButtonClicked(_ sender: Any) {
        var todo = Todo(name: titleTextField.text! , image: nil, desc: detailsTextView.text)
        NotificationCenter.default.post(name: NSNotification.Name("newTodoAdded"), object: nil , userInfo: ["newAdded" : todo])
    }
    

}
