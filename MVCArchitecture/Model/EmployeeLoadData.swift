//
//  EmployeeLoadData.swift
//  MVCArchitecture
//
//  Created by Anusha Raju on 11/27/24.
//
struct EmployeeLoadData{
    
    func loadEmployeeData() -> [Employee]{
    
        let employeeList = [
            Employee(id: 001, name: "Anusha", department: "IT", salary: 2000),
            Employee(id: 002, name: "Suresh", department: "HR", salary: 2500 ),
            Employee(id: 003, name: "Sai", department: "Finance", salary: 3000),
            Employee(id: 004, name: "Ravi", department: "Marketing", salary: 4000),
            Employee(id: 005, name: "Kumar", department: "Sales", salary: 5000),
            Employee(id: 006, name: "Ramesh", department: "Engineering", salary: 6000),
            Employee(id: 007, name: "Manisha", department: "HR", salary: 2500 ),
            Employee(id: 008, name: "Ash", department: "IT", salary: 3000)
        ]

        return employeeList
    }
    
}
