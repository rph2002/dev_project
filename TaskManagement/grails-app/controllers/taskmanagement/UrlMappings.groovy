package taskmanagement

class UrlMappings {

    static mappings = {
        "/"(controller: "task", action: "index")

        "/task"(controller: "task", action: "index")
        "/task/create"(controller: "task", action: "create")
        "/task/edit/$id"(controller: "task", action: "edit") {
            constraints {

            }
        }
        "/task/delete/$id"(controller: "task", action: "delete") {
            constraints {

            }
        }

        "/task/edit/$id"(controller: "task", action: "edit") {
            constraints {

            }
        }

        "/task/update"(controller: "task", action: "update") {
            constraints {

            }
        }

        "/task/toggleComplete/$id"(controller: "task", action: "toggleComplete") {
            constraints {

            }
        }

        "/task/$id"(controller: "task", action: "show") {
            constraints {
                // apply constraints here
            }
        }

        "500"(view:'/error')
        "404"(controller: "task", action: "index")
    }
}
