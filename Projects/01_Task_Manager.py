

def load_tasks():

    tasks = []

    try:
        with open("tasks.txt","r")as file:

            for line in file:
                title, description, priority, due_date = line.strip().split("|")

                task = {
                    "title": title,
                    "description":description,
                    "priority": priority,
                    "due_date": due_date
                }

                tasks.append(task)

    except FileNotFoundError:
        pass 

    return tasks 


def add_tasks(tasks):

    title = input("Enter task title : ")
    description = input("Enter task description : ")
    priority = input("Enter task priority : ")
    due_date = input("Enter task due_date : ")

    task = {
        'title' : title,
        'description' : description,
        'priority' : priority,
        'due_date'  :due_date
    }

    tasks.append(task)
    print("Task Added Successfully!!")

def save_tasks(tasks):

    with open("tasks.txt","w")as file:
        for task in tasks:
            line = (
                f"{task['title']}|"
                f"{task['description']}|"
                f"{task['priority']}|"
                f"{task['due_date']}\n"
            )

            file.write(line)


def view_tasks(tasks):
    if len(tasks) == 0:
        print("No Task Found!")
        return 


    for index, task in enumerate(tasks, start=1):
        print(f"\nTask{index}")
        print(f"title : {task['title']}")
        print(f"Description: {task['description']}")
        print(f"Priority: {task['priority']}")
        print(f"Due Date: {task['due_date']}")






def main():
    tasks = load_tasks()
    while True: 
        

        print("Welcome to Task Manager!!")

        

        print("1. Add Task")
        print("2. View Task")
        print("3. Exit")


        choice = input("choose an option : ")


        if choice == "1":
            add_tasks(tasks)
            save_tasks(tasks)

        elif choice == "2":
            view_tasks(tasks)

        elif choice == "3":
            print("goodbye")

            break 


main()














