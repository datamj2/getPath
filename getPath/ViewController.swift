//
//  ViewController.swift
//  getFilePath
//
//  Created by mj on 11/12/17.
//  Copyright © 2017 mj. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var filename_field: NSTextField!

    @IBAction func browseFile(sender: AnyObject) {
        
        let dialog = NSOpenPanel();
        
        dialog.title                   = "Choose a file or folder";
        dialog.showsResizeIndicator    = true;
        dialog.showsHiddenFiles        = false;
        dialog.canChooseDirectories    = true;
        dialog.canCreateDirectories    = true;
        dialog.allowsMultipleSelection = false;
//        dialog.allowedFileTypes        = ["txt", "pdf"];
        
        if (dialog.runModal() == NSModalResponseOK) {
            let result = dialog.URL // Pathname of the file
            
            if (result != nil) {
                let path = result!.path!
                filename_field.stringValue = path
            }
        } else {
            // User clicked on "Cancel"
            return
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

