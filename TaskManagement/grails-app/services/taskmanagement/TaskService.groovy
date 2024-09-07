package taskmanagement

import grails.gorm.transactions.Transactional

@Transactional
class TaskService {
    TaskService taskService

    def getOrderedTasks() {
        def results = taskService.findAll()
        return results
    }

    def serviceMethod() {

    }
}
