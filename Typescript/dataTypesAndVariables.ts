// TypeScript Basic Types Demo

// Primitive Data Types
let developerName: string = "Vaibhav Shendre";
let experienceYears: number = 3;
let isEmployed: boolean = true;

// Array Type
let programmingLanguages: string[] = ["JavaScript", "TypeScript", "Python", "Java"];

// Tuple Type - Fixed length array with specific types
let employeeRecord: [string, number, string] = ["Vaibhav", 101, "Software Developer"];

// Enumeration - Named constants
enum EmploymentType {
    FullTime = "FULL_TIME",
    PartTime = "PART_TIME",
    Contract = "CONTRACT",
    Intern = "INTERN"
}

let currentEmployment: EmploymentType = EmploymentType.FullTime;

// Union Type - Multiple possible types
let employeeId: number | string;
employeeId = 847562;
employeeId = "EMP847562";

// Custom Type Definition
type EmployeeProfile = {
    employeeName: string;
    employeeId: number;
    department: string;
    isActive: boolean;
};

let profileData: EmployeeProfile = {
    employeeName: "Vaibhav Shendre",
    employeeId: 847562,
    department: "Development",
    isActive: true
};

// Display all values
console.log("===== Employee Information System =====");
console.log("Developer Name:", developerName);
console.log("Years of Experience:", experienceYears);
console.log("Currently Employed:", isEmployed);
console.log("Programming Languages:", programmingLanguages);
console.log("Employee Record:", employeeRecord);
console.log("Employment Type:", EmploymentType[currentEmployment]);
console.log("Employee ID:", employeeId);
console.log("Employee Profile:", profileData);
console.log("=========================================");