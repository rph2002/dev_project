package taskmanagement

import java.time.LocalDateTime

class Task {
    String title
    String description
    boolean isCompleted = false
    LocalDateTime dateCreated = LocalDateTime.now()
    LocalDateTime lastUpdated = LocalDateTime.now()

    static constraints = {
        title size: 1..100
        description size: 0..500, nullable: true
    }

    static mapping = {
        title type: 'string', length: 100
        description type: 'string', length: 500
    }
}
