//
//  TriviumTableViewController.swift
//  Trivial
//
//  Created by Luis Borjas on 11/21/15.
//  Copyright © 2015 Luis & Yamil. All rights reserved.
//

import UIKit

class TriviumTableViewController: UITableViewController {
    
    //MARK: properties
    var trivia = [Trivium]()

    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleTrivia()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    func loadSampleTrivia(){
        trivia += [
            Trivium(
                name: "Examen del Himno",
                photo: nil,
                questions: [
                    Question(
                        text: "Por qué órgano se publicó el decreto No. 42 del Poder Ejecutivo",
                        answers: [
                            Answer(
                                text: "La Tribuna, #1459 el 20 de Enero de 1916",
                                isCorrect: false
                            ),
                            Answer(text: "La Gaceta, #4529, el 16 de Enero de 1916", isCorrect: true),
                            Answer(text: "El País, #2457, el 16 de Enero de 1917", isCorrect: false),
                        ]),
                    Question(
                        text: "Cómo se llama el movimiento musical del coro?",
                        answers: [
                            Answer(
                                text: "Allegro ma no tanto",
                                isCorrect: false
                            ),
                            Answer(text: "Allegro", isCorrect: true),
                            Answer(text: "Andante", isCorrect: false),
                        ]),
                    Question(
                        text: "Qué significa la franja blanca?",
                        answers: [
                            Answer(
                                text: "Paz y Pureza",
                                isCorrect: true
                            ),
                            Answer(text: "Unión y Fuerza", isCorrect: false),
                            Answer(text: "Limpieza e Inocencia", isCorrect: false),
                        ])

                ]
            ),
            Trivium(name: "UNAH: PAA", photo: nil),
            Trivium(name: "UNAH: PCCNS", photo: nil),
            Trivium(name: "SAT", photo: nil),
            Trivium(name: "GRE", photo: nil),

        ]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return trivia.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "TriviumTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! TriviumTableViewCell
        let trivium = trivia[indexPath.row]
        cell.nameLabel.text = trivium.name
        cell.photoImageView.image = trivium.photo
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let questionsViewController:QuestionsTableViewController = segue.destinationViewController as? QuestionsTableViewController {
            let indexPath = self.tableView.indexPathForSelectedRow
            questionsViewController.trivium = self.trivia[indexPath!.row]
        }
        
    }
    

}
