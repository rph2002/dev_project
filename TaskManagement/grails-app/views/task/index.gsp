<!doctype html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <title>View Tasks</title>
    </head>
    <body>
        <h1>Current Tasks</h1>
        <div class="row row-cols-2">
            <g:if test="${tasks}">
                <g:each in="${tasks}" var="task">
                    <div class="col mb-3">
                        <div class="card shadow ${task.isCompleted ? 'border-success' : 'border-warning'}">
                            <div class="card-body">
                                <div class="dropdown mb-3">
                                    <button type="button" class="btn ${task.isCompleted ? 'btn-success' : 'btn-warning'} dropdown-toggle w-100 shadow-sm" data-toggle="dropdown">
                                        ${task.isCompleted ? 'Completed' : 'Incomplete'}
                                    </button>
                                    <div class="dropdown-menu w-100 ${!task.isCompleted ? 'bg-success' : 'bg-warning'}">
                                        <g:link controller="task" action="toggleComplete" params="[id: task.id]" class="btn text-white ${!task.isCompleted ? 'bg-success' : 'bg-warning'} dropdown-item text-center"><strong>${!task.isCompleted ? 'Completed' : 'Incomplete'}</strong></g:link>
                                    </div>
                                </div>
                                <h4 class="card-title text-center"><strong>${task.title}</strong></h4>
                                <p class="card-text">${task.description}</p>
                            </div>
                            <div class="d-flex justify-content-between mb-3">
                                <g:link class="btn btn-primary ml-4 w-25 shadow" action="edit" controller="task" params="[id: task.id]" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa-solid fa-pencil"></i></g:link>
                                <g:link class="btn btn-danger mr-4 w-25 shadow" action="delete" controller="task" params="[id: task.id]" data-toggle="tooltip" data-placement="top" title="Delete"><i class="fa-solid fa-trash-can"></i></g:link>
                            </div>
                            <div class="bg-light border d-flex justify-content-between">
                                <small class="text-muted ml-1"><em>Date Created: <g:formatDate format="MMM d, yyyy 'at' hh:mm a" date="${task.dateCreated}" /></em></small>
                                <small class="text-muted mr-2"><em>Last Modified: <g:formatDate format="MMM d, yyyy 'at' hh:mm a" date="${task.lastUpdated}" /></em></small>
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
