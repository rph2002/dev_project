<!doctype html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <title>View Tasks</title>
    </head>
    <body>
        <g:if test="${flash.message}">
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <strong>Success!</strong> ${flash.message}
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        </g:if>
        <h1>Current Tasks</h1>
        <div class="row row-cols-2">
            <g:if test="${tasks}">
                <g:each in="${tasks}" var="task">
                    <div class="col mb-3">
                        <g:if test="${task.isCompleted}">
                            <div class="card shadow border-success">
                        </g:if>
                        <g:else>
                            <div class="card shadow border-warning">
                        </g:else>
                            <div class="card-body">
                                <div class="dropdown mb-3">
                                    <g:if test="${task.isCompleted}">
                                        <button type="button" class="btn btn-success dropdown-toggle w-100 shadow-sm" data-toggle="dropdown">
                                            Completed
                                        </button>
                                        <div class="dropdown-menu w-100 bg-warning">
                                            <g:link controller="task" action="toggleComplete" params="[id: task.id]" class="btn text-white bg-warning dropdown-item text-center"><strong>Incomplete</strong></g:link>
                                        </div>
                                    </g:if>
                                    <g:else>
                                        <button type="button" class="btn btn-warning dropdown-toggle w-100 shadow-sm" data-toggle="dropdown">
                                            Incomplete
                                        </button>
                                        <div class="dropdown-menu w-100 bg-success">
                                            <g:link controller="task" action="toggleComplete" params="[id: task.id]" class="btn text-white bg-success dropdown-item text-center"><strong>Complete</strong></g:link>
                                        </div>
                                    </g:else>
                                </div>


                                <h4 class="card-title text-center"><strong>${task.title}</strong></h4>
                                <p class="card-text">${task.description}</p>


                            </div>

                            <div class="d-flex justify-content-between mb-3">
                                <g:link class="btn btn-primary ml-4 w-25 shadow" action="edit" controller="task" params="[id: task.id]" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa-solid fa-pencil"></i></g:link>
                                <g:link class="btn btn-danger mr-4 w-25 shadow" action="delete" controller="task" params="[id: task.id]" data-toggle="tooltip" data-placement="top" title="Delete"><i class="fa-solid fa-trash-can"></i></g:link>
                            </div>


                            <div class="bg-light border">
                                <div class="ml-1">
                                    <small class="text-muted"><em>Date Created:</em></small>
                                    <small class="text-muted"><em><g:formatDate format="MMM d, yyyy 'at' hh:mm a" date="${task.dateCreated}" /></em></small>
                                </div>
                                <div class="ml-1">
                                    <small class="text-muted"><em>Last Modified:</em></small>
                                    <small class="text-muted"><em><g:formatDate format="MMM d, yyyy 'at' hh:mm a" date="${task.lastUpdated}" /></em></small>
                                </div>
                            </div>
                        </div>
                    </div>
                </g:each>
            </g:if>
            <g:else>
                <p>No tasks</p>
            </g:else>
        </div>

    </body>
</html>
