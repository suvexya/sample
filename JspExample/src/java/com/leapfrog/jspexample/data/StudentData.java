/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.jspexample.data;

import com.leapfrog.jspexample.entity.Student;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author User
 */
public class StudentData {
    
    //private List<Student> studentList;
    
    public List<Student> getAllStudents(){
        List<Student> studentList=new ArrayList<Student>();
        studentList.add(new Student(1, "Suvekshya"));
        studentList.add(new Student(2, "Marjina"));
        studentList.add(new Student(3, "Anuj"));
        studentList.add(new Student(4, "Kshitiz"));
        studentList.add(new Student(5, "Jay"));
        
        return studentList;
    }
    
}
