<!doctype html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <title>Creating Task</title>
    </head>
    <body>
        <g:form action="save" controller="task">
            <h1>Create a task</h1>
            <div class="form-group">
                <label for="title">Title</label>
                <g:textField name="title" value="${task?.title}" required="true" maxlength="100" class="form-control" />
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <g:textArea name="description" value="${task?.description}" rows="4" maxlength="500" class="form-control"/>
            </div>
            <g:actionSubmit value="Save" action="save" class="btn btn-primary btn-lg"/>
        </g:form>
    </body>
</html>