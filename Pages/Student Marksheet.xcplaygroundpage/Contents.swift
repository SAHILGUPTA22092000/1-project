//: [Previous](@previous)

import Foundation

struct Address{
    var buildingNumber : Int
    var buildingName : String?
    var street : String?
    var city : String
    var state : String
    var pincode: Int32
}
    
class Student {
   private var nameOfStudent : String
    var studentId : Int32
    var addressOfStudent : Address
    var phoneNo : String
    var emailId : String
   private var streamEnrolled : Stream? = nil
    var subjectsTaken : [Subject]=[]
    init(_ name : String,_ rollNo : Int32, _ address : Address,_ pNo : String, _ eId : String )
    {
        nameOfStudent = name
        studentId = rollNo
        addressOfStudent = address
        phoneNo = pNo
        emailId = eId
        
    }
    func displayStudent( )->(String,String?){
        return (nameOfStudent , streamEnrolled?.streamName)
    }
    func addStream(stream : Stream)
    {
        streamEnrolled=stream
    }
}

class Subject {
    var subjectId : String
    var subjectName : String
    var subjectDescription : String
    static var  xyz : String = ""
 //   var studentsEnrolled : [Int32]? = []
    init(_ subjectId : String ,_ subjectName: String, _ subjectDescription : String)
    {
        self.subjectId = subjectId
        self.subjectName = subjectName
        self.subjectDescription = subjectDescription
    }
       

}

class Stream {
    var streamId : String
    var streamName : String
    var subjectsEnvolved : [Subject] = []
    init(_ streamId: String, _ streamName : String)
    {
        self.streamId = streamId
        self.streamName = streamName
    }
}

class Details {
    var students : [Student] = []
    var subjects : [Subject] = []
    var streams : [Stream] = []
    
    func addStudent(name : String,rollNo : Int32,buildingnumeber:Int,buildingName : String?, street : String?, city: String, state : String, pincode : Int32,pNo : String,eId : String )
    {
        let a=Address(buildingNumber: buildingnumeber, buildingName: buildingName, street: street, city: city, state: state, pincode: pincode)
        
        let s = Student(name,rollNo,a,pNo,eId)
        
        students.append(s)
    }
    func addStudent(address: Address, name : String)
    {
        let s = Student(name, 1191, address, "3213", "2212")
        students.append(s)
    }
    func addSubject(subjectId : String ,subjectName: String, subjectDescription : String)
    {
        let s = Subject(subjectId,subjectName,subjectDescription)
        subjects.append(s)
    }
    
    func addStream(streamId: String,streamName : String)
    {
        streams.append(Stream(streamId, streamName))
    }
    
}

var collegeDb = Details()

collegeDb.addStudent(name: "A", rollNo: 11815001, buildingnumeber: 101,buildingName: nil, street: "1", city: "Faridabad", state: "Haryana", pincode: 121001, pNo: "9876543210", eId: "a@gmail.com")
collegeDb.addStudent(name: "B", rollNo: 11815002, buildingnumeber: 102,buildingName: nil, street: "14", city: "Noida", state: "Haryana", pincode: 121021, pNo: "9812345670", eId: "b@gmail.com")
collegeDb.addStream(streamId: "CS", streamName: "ComputerScience")
collegeDb.addStream(streamId: "EC", streamName: "Electronics")
collegeDb.addStream(streamId: "CV", streamName: "Civil")


var firstStudent = collegeDb.students.first
if let first = collegeDb.streams.first{
    firstStudent?.addStream(stream: first)
}

