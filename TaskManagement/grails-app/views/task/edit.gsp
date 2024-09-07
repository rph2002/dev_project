<!doctype html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <title>Editing Task</title>
    </head>
    <body>
        <g:if test="${flash.message}">
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <strong>Error!</strong> ${flash.message}
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        </g:if>

        <g:form name="task" action="update" controller="task">
            <h1>Editing Task</h1>
            <div class="form-group">
                <label for="title">Title:</label>
                <g:textField name="title" value="${task?.title}" required="true" maxlength="100" class="form-control" />
            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <g:textArea name="description" value="${task?.description}" rows="2" maxlength="255" class="form-control"/>
            </div>
            <g:link controller="task" action="update" params="[id: task?.id]" class="btn btn-primary btn-lg">Update</g:link>
        </g:form>
    </body>
</html>