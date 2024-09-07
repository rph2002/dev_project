<html>
    <head>
        <title><g:layoutTitle default="Task Management" /></title>
        <link rel="stylesheet" href="${resource(dir: 'stylesheets/', file: 'bootstrap.min.css')}" type="text/css" />
        <link rel="stylesheet" href="${resource(dir: 'stylesheets/', file: 'styles.css')}" type="text/css" />
        <g:layoutHead />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    </head>
    <body>
        <main>
            <div class="container-fluid bg-dark sticky-top shadow-sm mb-3">
                <nav class="navbar navbar-expand-lg">
                    <a class="navbar-brand d-flex align-items-center text-decoration-none" href="#">
                        <g:link action="index" controller="task">
                            <img src="${resource(dir: 'assets/images/', file: 'Zelifcam.png')}" alt="Zelifcam">
                        </g:link>
                    </a>
                </nav>
            </div>
            <div class="container shadow bg-light rounded p-3 border min-vh-100">
                <nav class="nav nav-pills nav-fill bg-white shadow-sm rounded mb-3 border">
                    <g:link action="index" controller="task" class="navbar-text nav-link ${active == 'view' ? 'active' : ''}"><i class="fa-solid fa-list"></i> View Tasks</g:link>
                    <g:link action="create" controller="task" class="navbar-text nav-link ${active == 'create' ? 'active' : ''}"><i class="fa-solid fa-plus"></i> Create Task</g:link>
                </nav>
                <g:if test="${flash.message}">
                    <div class="alert ${flash.isError ? 'alert-danger' : 'alert-success'} alert-dismissible fade show" role="alert">
                        <strong>${flash.isError ? 'Error!' : 'Success!'}</strong> ${flash.message}
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </g:if>
                <g:layoutBody />
            </div>
        </main>
        <footer class="bg-dark text-center py-3">
            <img src="${resource(dir: 'assets/images/', file: 'Zelifcam.png')}" alt="Zelifcam">
        </footer>

        <script src="${resource(dir: 'javascripts/', file: 'jquery-3.5.1.min.js')}"></script>
        <script src="${resource(dir: 'javascripts/', file: 'popper.min.js')}"></script>
        <script src="${resource(dir: 'javascripts/', file: 'bootstrap.min.js')}"></script>
        <script>
            $(function () {
                $('[data-toggle="tooltip"]').tooltip()
            })
        </script>
    </body>
</html>