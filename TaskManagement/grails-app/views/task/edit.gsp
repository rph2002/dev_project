<!doctype html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <title>Editing Task</title>
    </head>
    <body>
        <g:form action="update" controller="task">
            <h1>Editing Task</h1>
            <div class="form-group">
                <label for="title">Title</label>
                <g:textField name="title" value="${task?.title}" required="true" maxlength="100" class="form-control" />
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <g:textArea name="description" value="${task?.description}" rows="4" maxlength="500" class="form-control"/>
            </div>
            <g:hiddenField name="id" value="${task.id}" />
            <button type="submit" class="btn btn-primary btn-lg">Update</button>
        </g:form>
    </body>
</html>