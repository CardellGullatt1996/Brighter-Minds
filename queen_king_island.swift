//MARK: Import Frameworks
import UIKit
import Foundation

//MARK: Class Declaration
class TutoringProgram {
    
    //MARK: Properties
    var ageRange: String
    var academicSupport: String
    var enrichmentActivities: String
    var tutorSchedule: [String]
    
    //MARK: Initializer
    init (ageRange: String, academicSupport: String, enrichmentActivities: String, tutorSchedule: [String]) {
        
        self.ageRange = ageRange
        self.academicSupport = academicSupport
        self.enrichmentActivities = enrichmentActivities
        self.tutorSchedule = tutorSchedule
    }
    
    //MARK: Methods
    func enrollStudent(_ studentName: String) {
    
        print("\(studentName) has been successfully enrolled in the tutoring program.")
    }
    
    func assignTutor(_ tutorName: String, _ schedule: String) {
        
        print("\(tutorName) has been assigned the \(schedule) schedule.")
    }
    
    func provideAcademicSupport(_ studentName: String, _ subject: String) {
        
        print("\(studentName) is receiving academic support for \(subject).")
    }
    
    func provideEnrichmentActivities(_ activity: String) {
        
        print("\(activity) is being offered as an enrichment activity.")
    }
    
    func provideTutoringSchedule(_ dayOfTheWeek: String) -> String? {
        
        if let indexOfSchedule = tutorSchedule.firstIndex(where: {$0.contains(dayOfTheWeek)}) {
            
            return tutorSchedule[indexOfSchedule]
        }
        
        return nil
    }
    
    func removeStudent(_ studentName: String) {
        
        print("\(studentName) has been successfully removed from the tutoring program.")
    }
}

//MARK: Testing
let tutoringProgram = TutoringProgram(ageRange: "7 - 16 years old", academicSupport: "Math, Science, Reading, Writing", enrichmentActivities: "Arts & Crafts, Cooking, Music, Sports", tutorSchedule: ["Monday: 3:00 - 6:00 pm", "Wednesday: 2:00 - 5:00 pm", "Friday: 4:00 - 7:00 pm"])

let studentName = "John Smith"
tutoringProgram.enrollStudent(studentName)

let tutorName = "Jane Doe"
let schedule = "Monday"
tutoringProgram.assignTutor(tutorName, schedule)

tutoringProgram.provideAcademicSupport(studentName, "Math")
tutoringProgram.provideEnrichmentActivities("Cooking")

if let tutorSchedule = tutoringProgram.provideTutoringSchedule("Wednesday") {

    print("Tutoring schedule for Wednesday: \(tutorSchedule)")
}

tutoringProgram.removeStudent(studentName)