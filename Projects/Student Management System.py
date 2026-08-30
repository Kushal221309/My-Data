import json
import os

FILE_NAME = "students.json"

# Load Data
def load_students():
    if os.path.exists(FILE_NAME):
        with open(FILE_NAME, "r") as file:
            return json.load(file)
    return []

# Save Data
def save_students(students):
    with open(FILE_NAME, "w") as file:
        json.dump(students, file, indent=4)

# Add Student
def add_student():
    students = load_students()

    roll_no = input("Enter Roll Number: ")
    name = input("Enter Name: ")
    age = input("Enter Age: ")
    course = input("Enter Course: ")

    student = {
        "roll_no": roll_no,
        "name": name,
        "age": age,
        "course": course
    }

    students.append(student)
    save_students(students)

    print("Student Added Successfully!")

# View Students
def view_students():
    students = load_students()

    if not students:
        print("No Students Found!")
        return

    print("\n--- Student Records ---")
    for student in students:
        print(f"Roll No: {student['roll_no']}")
        print(f"Name: {student['name']}")
        print(f"Age: {student['age']}")
        print(f"Course: {student['course']}")
        print("-" * 25)

# Search Student
def search_student():
    students = load_students()

    roll_no = input("Enter Roll Number to Search: ")

    for student in students:
        if student["roll_no"] == roll_no:
            print("\nStudent Found")
            print(student)
            return

    print("Student Not Found!")

# Update Student
def update_student():
    students = load_students()

    roll_no = input("Enter Roll Number to Update: ")

    for student in students:
        if student["roll_no"] == roll_no:
            student["name"] = input("Enter New Name: ")
            student["age"] = input("Enter New Age: ")
            student["course"] = input("Enter New Course: ")

            save_students(students)
            print("Student Updated Successfully!")
            return

    print("Student Not Found!")

# Delete Student
def delete_student():
    students = load_students()

    roll_no = input("Enter Roll Number to Delete: ")

    for student in students:
        if student["roll_no"] == roll_no:
            students.remove(student)
            save_students(students)
            print("Student Deleted Successfully!")
            return

    print("Student Not Found!")

# Main Menu
while True:
    print("\n===== Student Management System =====")
    print("1. Add Student")
    print("2. View Students")
    print("3. Search Student")
    print("4. Update Student")
    print("5. Delete Student")
    print("6. Exit")

    choice = input("Enter Choice: ")

    if choice == "1":
        add_student()
    elif choice == "2":
        view_students()
    elif choice == "3":
        search_student()
    elif choice == "4":
        update_student()
    elif choice == "5":
        delete_student()
    elif choice == "6":
        print("Thank You!")
        break
    else:
        print("Invalid Choice!")

        