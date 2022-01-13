//
//  File.swift
//  Michael Power St Joseph
//
//  Created by Luke Taskiran on 2022-01-02.
//

//
//  ClubsAF.swift
//  MPSJ Catholic Secondary School
//
//  Created by Luke Taskiran on 2018-05-17.
//  Copyright © 2018 Luke Taskiran. All rights reserved.
//

import UIKit
import Foundation
var clubsdesc = ["Students meet once a week during school year for discussions", "Sept - May: a comittee of students are selected to organize the collection of money for the foundation. They also make announcements about the status of the foundation. They organize a board wide civies day, and a gala to raise funds", "This group meets on Wednesdays from 2:35 - 4:00 to celebrate everything Anime", "Feb - May: a weekly meeting to discuss art, and to work on techniques and on personal and group work", "Oct - Nov, Jan - March, May: Using flight simulator technology, students become familiar with principles of flight, avionics, and employment trends", " Yearlong commitment: this club pairs student from grade 9-12 with a special needs student. And, help accompany the student to as many school events", "Sept - Feb: students meet for 4-5 days a week to dance, and write and create dramatic scences", "Sept - Feb: student meet Monday after school for 1.5 hours. This is a creative group writing group for students", "Sept: Consellors are selected from an interview process and they meet throughout the year to plan events", "A charity founded by MPSJ students. Students meet once or twice a week to plan fundraising activites and events", "Sept - June: Caltholic film Festival, poster of school plays, indigenous art, installation, music dept, etc", "Students meet once a week from November to April to watch a documentary", "Those intrested in performing spoken word for Mother/Daughter tea and performing dramatic scences for Navigating the Teen Brain", "Sept - May: students meet for one hour once a week to prepare for the Christmas and Spring Concert and for special events", "Students meet to discuss and prepare for the series of activites that need to be completed for this award", "Sept - June: students pay a fee to access the weight room and fitness bikes. The room is open each day after school.", "Students meet in semester two and finish at the end of April. They meet after school once a week to learn to tie flies for fly fishing", "Students present a docudrama on the stage to classes twice a year in order to raise money to build school throughout the world. Students write and rehearse for at least 25 hours each semester "]

var myIndex = 0


class ClubsAF: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    
    
   
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        Clubsdesc()
    }
    
    func Clubsdesc() {
        
        let alertController = UIAlertController(title: "Club Description", message: "\(clubsdesc[myIndex])", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default,handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
        
        
    }
    
    
    
    
}

