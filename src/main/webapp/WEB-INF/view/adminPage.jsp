<%@include file="tempates/header.jsp"%>


<div align="center">
            <sf:form action="saveProduct" modelAttribute="nullProduct" method="post">
                Album
                <br>
                <sf:input path="productName"></sf:input>
                <br>
                Artist
                <br>
                <sf:input path="artist"></sf:input>
                <br>
                Genre
                <br>
                <sf:input path="genre"></sf:input>
                <br>
                Year
                <br>
                <sf:input path="releaseYear"></sf:input>
                <br>
                Description
                <br>
                <sf:input path="description"></sf:input>
                <br>
                Price
                <br>
                <sf:input path="price"></sf:input>
                <br>
                <%--<br>--%>
                <%--Image--%>
                <%--<br>--%>
                <%--<sf:input path="image"></sf:input>--%>
                <input type="submit" value="Add">
            </sf:form>
</div>
</body>
</html>
