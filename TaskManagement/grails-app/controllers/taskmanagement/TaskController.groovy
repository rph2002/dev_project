package taskmanagement
import grails.gorm.transactions.Transactional
import java.time.LocalDateTime

class TaskController {

    // Displays a list of all tasks, ordered by creation data
    def index() {
        def tasks = Task.listOrderByDateCreated()
        [tasks: tasks, active: 'view']
    }

    // Displays a form to create a new task
    def create() {
        def task = params.task ?: new Task()
        [task: task, active: 'create']
    }

    // Creates a new task
    @Transactional
    def save() {
        def task = new Task(params)

        // Validate title and description fields to display appropriate messages
        if (!task.validate(["title"])) {
            flash.isError = true
            flash.message = "Title must be between 1-100 characters!"
            render(view: "create", model: [task: task, active: 'create'])
        } else if (!task.validate(["description"])) {
            flash.isError = true
            flash.message = "Description must be between 0-500 characters!"
            render(view: "create", model: [task: task, active: 'create'])
        } else {
            // If validate passes, save task
            if (task.save(flush: true)) {
                flash.isError = false
                flash.message = "Task created successfully!"
                redirect(action: "index")
            }
            // If save fails, display error message
            else {
                flash.isError = true
                flash.message = "Error creating task!"
                render(view: "create", model: [task: task, active: 'create'])
            }
        }
    }

    // Display a form to edit an existing task
    def edit() {
        // Check if id is given
        if (!params.id) {
            flash.isError = true
            flash.message = "Task ID is missing!"
            redirect(action: "index")
        }
        def task = Task.get(params.id)

        // Check if task exists
        if (!task) {
            flash.isError = true
            flash.message = "Task not found!"
            redirect(action: "index")
        }

        [task: task, active: 'view']
    }

    // Updates a given task
    @Transactional
    def update() {
        def task = Task.get(params.id)

        // Checks if task exists
        if (!task) {
            flash.isError = true
            flash.message = "Task not found!"
            redirect(action: "index")
        }

        // Updates task with matching params
        task.properties = params

        // Validate title and description fields to display appropriate messages
        if (!task.validate(["title"])) {
            flash.isError = true
            flash.message = "Title must be between 1-100 characters!"
            render(view: "edit", model: [task: task, active: 'view'])
        } else if (!task.validate(["description"])) {
            flash.isError = true
            flash.message = "Description must be between 0-500 characters!"
            render(view: "edit", model: [task: task, active: 'view'])
        } else {
            // Update lastUpdated value with current time
            task.lastUpdated = LocalDateTime.now()
            // If validate passes, save task
            if (task.save(flush: true)) {
                flash.message = "Task updated!"
                redirect(action: "index")
            } else {
                // If save fails, display error message
                flash.isError = true
                flash.message = "Error editing task!"
                render(view: "edit", model: [task: task, active: 'view'])
            }
        }
    }

    // Deletes a specific task
    @Transactional
    def delete() {
        def task = Task.get(params.id)

        // Checking if task exists
        if (task) {
            task.delete(flush: true)
            flash.isError = false
            flash.message = "Task deleted successfully!"
        } else {
            flash.isError = true
            flash.message = "Task not found!"
        }
        redirect(action: "index")
    }

    @Transactional
    def toggleComplete(Long id) {
        def task = Task.get(id)

        // Checking if task exists
        if (task) {
            // Checking for current status, and setting it to the opposite value
            if (task.isCompleted) {
                task.isCompleted = false
                // Saving new status
                if (task.save(flush: true)) {
                    flash.isError = false
                    flash.message = "Task marked incomplete!"
                } else {
                    flash.isError = true
                    flash.message = "An error occurred!"
                }
            } else {
                task.isCompleted = true
                // Saving new status
                if (task.save(flush: true)) {
                    flash.isError = false
                    flash.message = "Task completed!"
                } else {
                    flash.isError = true
                    flash.message = "An error occurred!"
                }
            }
        } else {
            flash.isError = true
            flash.message = "Task not found!"
        }
        redirect(action: "index")
    }
}