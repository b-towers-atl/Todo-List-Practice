//
//  NewItemVC.swift
//  Todo List Practice
//
//  Created by Richard Tyran on 2/7/15.
//  Copyright (c) 2015 Richard Tyran. All rights reserved.
//

import UIKit

//class NewItemVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
class NewItemVC: UIViewController {

    @IBOutlet weak var itemField: UITextField!
    
    @IBOutlet weak var venueField: UITextField!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var itemImageView: UIImageView!
    
//    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        imagePicker.delegate = self
//        imagePicker.sourceType = .Camera
        
    }
    
    @IBAction func takePhoto(sender: AnyObject) {
        
//        presentViewController(imagePicker, animated: true, completion: nil)
        
    }
    
    @IBAction func cancelItem(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
        
        println("hi")
        
    }
    
    @IBAction func saveItem(sender: AnyObject) {
        
        println(datePicker.date)
        var toDoItem = PFObject(className: "ToDoItem")
        
        toDoItem["creator"] = PFUser.currentUser()
        
        toDoItem["item"] = itemField.text
        toDoItem["venue"] = venueField.text
        toDoItem["dueDate"] = "\(datePicker.date)"
        
        toDoItem.saveInBackground()
        
    }
    
//    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
//        
//        var image = info[UIImagePickerControllerOriginalImage] as? UIImage
//        
//        self.itemImageView.image = image
//        
//        imagePicker.dismissViewControllerAnimated(true, completion: nil)
//        
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
