<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 1/4/2023
  Time: 8:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<t:main>
    <jsp:attribute name="js">
        <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
        <script>
            tinymce.init({
                selector: '#mytextarea'
            });
        </script>
    </jsp:attribute>
    <jsp:body>
        <form action="" method="post">
            <div class="card">
                <h4 class="card-header">
                    Chỉnh sửa
                </h4>
                <div class="card-body">
                    <textarea id="mytextarea">Hello, World!</textarea>
                </div>
                <div class="card-footer">

                    <button type="submit" class="btn btn-primary">
                        <i class="fa fa-check" aria-hidden="true"></i>
                        Save
                    </button>
                </div>
            </div>
        </form>
    </jsp:body>
</t:main>

</body>
</html>
