<%-- 
    Document   : tourform
    Created on : Apr 29, 2019, 8:07:34 PM
    Author     : anarx
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>



        <!-- Include external CSS. -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/codemirror.min.css">

        <!-- Include Editor style. -->
        <link href="https://cdn.jsdelivr.net/npm/froala-editor@2.5.1/css/froala_editor.pkgd.min.css" rel="stylesheet" type="text/css" />
        <link href="https://cdn.jsdelivr.net/npm/froala-editor@2.5.1/css/froala_style.min.css" rel="stylesheet" type="text/css" />


    </head>

    <body>
        <!-- Include external JS libs. -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/codemirror.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/mode/xml/xml.min.js"></script>

        <!-- Include Editor JS files. -->
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/froala-editor@2.5.1//js/froala_editor.pkgd.min.js"></script>
        <div class="container">
            <div class="row">
                <jsp:include page="menu.jsp"></jsp:include>
                </div>
                <div class="row">




                    <form class="form-horizontal" 

                          action='<c:out value="${pageContext.servletContext.contextPath}/admin/add"></c:out>' 


                          method="POST" 
                          enctype="multipart/form-data"
                          accept-charset="UTF-8">
                        <div class="row">
                            <div class="col-sm-1">
                            </div>
                            <div class="col-sm-5">

                            <c:if test="${tour.getId()!=0  ||tour.getId()!=null }">

                                <div class="form-group">
                                    <label for="id">Tour ID</label>
                                    <input type="text" class="form-control  col-xs-3" 
                                           id="id" name="id" value="${tour.getId()}" readonly="">
                                </div>
                            </c:if>
                            <div class="form-group">
                                <label for="usr">Name:</label>
                                <input type="text" class="form-control  col-xs-3" 
                                       id="usr" name="name" value="${tour.getName()}">
                            </div>


                            <div class="form-group">
                                <label for="img">Image</label>
                                <input type="file" class="form-control  col-xs-3"
                                       id="img" name="img">
                            </div>
                          
                            
                            
                            <div class="form-group">
                                <label for="tip">Tour Type</label>
                                <select name="tip" id ="tip" class="form-control">
                                    <option value="D">Domestic tour</option>
                                    <option value="I">International tour</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="lang">Language</label>
                                <select name="lang" id ="lang" class="form-control">
                                    <option value="AZE">Azərbaycan</option>
                                    <option value="ENG">English</option>
                                </select>
                            </div>
                        </div>


                        <div class="col-sm-6">

                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-1">
                        </div>
                        <div class="col-sm-10">
                            <div class="form-group">
                                <label for="">Content</label>
                                <textarea id="edit" name="content">
                                    ${tour.getContent()}

                                </textarea>
                            </div>

                        </div>
                        <div class="col-sm-1">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-1">
                        </div>
                        <div class="col-sm-10">
                            <div class="form-group">

                                <input class="btn btn-success col-xs-3" type="submit" value="Add" >
                            </div>

                        </div>
                        <div class="col-sm-1">
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <!-- Initialize the editor. -->
        <script>
            $(function () {
                $('#edit').froalaEditor({
                    // Set the image upload URL.
                    imageUploadURL: '/upload_image',
                    imageUploadParams: {
                        id: 'my_editor'
                    }
                })
            });
        </script>
    </body>
</html>