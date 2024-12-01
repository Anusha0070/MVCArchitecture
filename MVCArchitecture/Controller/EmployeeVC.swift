//
//  EmployeeVC.swift
//  MVCArchitecture
//
//  Created by Anusha Raju on 11/27/24.
//

import UIKit

class EmployeeVC: UIViewController {

    
    
    @IBOutlet weak var customTableView: UITableView!
    
//    var employee : Employee?
    
    var loadData = EmployeeLoadData()
    
   
    var employeeList : [Employee] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadEmployeeData()
        customTableView.dataSource = self
        customTableView.delegate = self
    }

}

extension EmployeeVC{
    
    func loadEmployeeData(){
        
        employeeList = loadData.loadEmployeeData()
    }
    
}

extension EmployeeVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employeeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? MyCustomCell else {
            return UITableViewCell()}
        
        let employee = employeeList[indexPath.row]
        
        cell.department.text = "Department: " + employee.department
        cell.id.text = "(ID: " + String(employee.id) + ")"
        cell.name.text = employee.name
        cell.salary.text = "Salary: " + String(employee.salary)
        
        
        return cell
    }
    
    
        
         
        
}
    
