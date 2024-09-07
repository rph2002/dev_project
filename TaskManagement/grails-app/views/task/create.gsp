<!doctype html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <title>Creating Task</title>
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

        <g:form name="task" action="save" controller="task">
            <h1>Create a task</h1>
            <div class="form-group">
                <label for="title">Title:</label>
                <g:textField name="title" value="${flash.task?.title}" required="true" maxlength="100" class="form-control" />
            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <g:textArea name="description" value="${flash.task?.description}" rows="2" maxlength="255" class="form-control"/>
            </div>
            <g:actionSubmit value="Save" action="save" class="btn btn-primary btn-lg"/>
        </g:form>
    </body>
</html>