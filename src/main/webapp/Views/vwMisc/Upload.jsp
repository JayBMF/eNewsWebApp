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
  <jsp:attribute name="css">
    <link href="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.2.5/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css" />
  </jsp:attribute>
    <jsp:attribute name="js">
    <script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.2.5/js/fileinput.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/5.2.5/themes/fa/theme.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/5.2.5/js/locales/vi.min.js"></script>
    <script>
        $('#fuMain').fileinput({
            theme: 'fa',
            language: 'vi',
            dropZoneEnabled: false,
            allowedFileExtensions: ['jpg', 'png', 'gif']
        });
        $('#txtInf').height(
            350
        );
        $('#menu').width(
            1448
        )
    </script>
  </jsp:attribute>
    <jsp:body>
        <form method="post" enctype="multipart/form-data">
            <div class="card">
                <h4 class="card-header">
                    Upload
                </h4>
                <div class="card-body">
                    <div class="form-group">
                        <label for="txtProName">Tiêu đề</label>
                        <input type="text" class="form-control" id="txtProName" name="ProName" autofocus>
                    </div>
                    <div class="form-group">
                        <label for="txtProName">Chủ đề</label>

                        <select id="menu" name="nemu">
                            <option value="xa_hoi">XÃ HỘI</option>
                            <option value="the_gioi">THẾ GIỚI</option>
                            <option value="kinh_doanh">KINH DOANH</option>
                            <option value="bat_dong_san">BẤT ĐỘNG SẢN</option>
                            <option value="the_thao">THỂ THAO</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="txtProName">Nội dung</label>
                        <input type="text" class="form-control" id="txtInf" name="Inf" autofocus>
                    </div>
                    <div class="form-group">
                        <input id="fuMain" name="fuMain" type="file" />
                    </div>
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
