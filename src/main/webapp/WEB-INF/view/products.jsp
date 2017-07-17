<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tempates/header.jsp"%>


<div class="container" style="margin-top: 10px">
    <div class="row">
        <div class="col-md-1 middle"></div>
        <div class="col-md-3">
            <article>
                <div class="panel-group" id="collapse-group">
                    <div class="panel">
                        <div class="panel-heading">
                            <a href="#edm" data-toggle="collapse" data-parent="#collapse-group">Genres</a>
                        </div>
                        <div class="collapse in " id="edm" >
                            <div class="panel-body " id="styleScroll">
                                  <a href="genre/alternative">Alternative</a>
                                        <hr>
                                   <a href="genre/blues">Blues</a>
                                <hr>
                                   <a href="genre/electronic">Electronic</a>
                                <hr>
                                   <a href="genre/experimental">Experimental</a>
                                <hr>
                                   <a href="genre/indie">Indie</a>
                                <hr>
                                   <a href="genre/hiphop">Hip-Hop</a>
                                <hr>
                                   <a href="genre/rock">Rock</a>
                                <hr>
                                   <a href="genre/chillout">Chillout</a>
                                <hr>
                                   <a href="genre/minimal">Minimal</a>
                                <hr>
                                   <a href="genre/techno">Techno</a>
                                <hr>
                                   <a href="genre/edm">EDM</a>
                                <hr>
                                   <a href="genre/drum">Drum</a>
                                <hr>
                                   <a href="genre/pop">Pop</a>
                            </div>
                        </div>

                    </div>

                </div>
            </article>
        </div>
        <div class="col-md-1 middle"></div>
        <div class="col-md-7">
            <%--ASIDE--%>
            <div class="container mainContainer">
                <div class="row">
            <aside>
                <c:forEach var="product" items="${page.content}" varStatus="count" step="3">
                    <div class="container mainContainer ">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="divProduct">
                                    <div class=" container insideProduct">
                                        <div class="row">
                                            <div class="col-md-10">
                                                <img src="${product.image}" style="width: 200px; height: 165px">
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row rowPadding">
                                                <b>Artist:</b> <td>${product.artist}</td><br>
                                                <b>Album:</b> <td>${product.productName}</td><br>
                                                <b>Genre:</b> <td>${product.genre}</td><br>
                                                <%--<b>Release year:</b> <td>${product.releaseYear}</td><br>--%>
                                                <b>Price:</b> <td>${product.price}</td>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2">
                                                <a href="details-${product.id}">
                                                    <i class="fa fa-info" aria-hidden="true"></i>
                                                </a>
                                            </div>
                                            <div class="col-md-2">
                                                <a href="#"><i class="fa fa-lastfm-square" aria-hidden="true"></i></a>
                                            </div>
                                            <div class="col-md-3 col-md-offset-4">
                                                <a href="${pageContext.request.contextPath}/addToCart?id=${product.id}">
                                                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <c:choose>
                                <c:when test="${page.content[count.index+1] == null}">

                                </c:when>
                                <c:otherwise>
                                    <div class="col-md-4">
                                        <div class="divProduct">
                                            <div class=" container insideProduct">
                                                <div class="row">
                                                    <div class="col-md-10">
                                                        <img src="${page.content[count.index+1].image}" style="width: 200px; height: 165px">
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="row rowPadding">
                                                    <b>Artist:</b> <td>${page.content[count.index+1].artist}</td><br>
                                                    <b>Album:</b> <td>${page.content[count.index+1].productName}</td><br>
                                                    <b>Genre:</b> <td>${page.content[count.index+1].genre}</td><br>
                                                    <%--<b>Release year:</b> <td>${page.content[count.index+1].releaseYear}</td><br>--%>
                                                    <b>Price:</b> <td>${page.content[count.index+1].price}</td>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-2">
                                                        <a href="details-${page.content[count.index+1].id}">
                                                            <i class="fa fa-info" aria-hidden="true"></i>
                                                        </a>
                                                    </div>
                                                    <div class="col-md-2">
                                                        <a href="#"><i class="fa fa-lastfm-square" aria-hidden="true"></i></a>
                                                    </div>
                                                    <div class="col-md-3 col-md-offset-4">
                                                        <a href="${pageContext.request.contextPath}/addToCart?id=${product.id}">
                                                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                            <c:choose>
                                <c:when test="${page.content[count.index+2] == null}">

                                </c:when>
                                <c:otherwise>
                                    <div class="col-md-4">
                                        <div class="divProduct">
                                            <div class=" container insideProduct">
                                                <div class="row">
                                                    <div class="col-md-10">
                                                        <img src="${page.content[count.index+2].image}" style="width: 200px; height: 165px">
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="row rowPadding">
                                                    <b>Artist:</b> <td>${page.content[count.index+2].artist}</td><br>
                                                    <b>Album:</b> <td>${page.content[count.index+2].productName}</td><br>
                                                    <b>Genre:</b> <td>${page.content[count.index+2].genre}</td><br>
                                                    <%--<b>Release year:</b> <td>${page.content[count.index+2].releaseYear}</td><br>--%>
                                                    <b>Price:</b> <td>${page.content[count.index+2].price}</td>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-2">
                                                        <a href="details-${page.content[count.index+2].id}">
                                                            <i class="fa fa-info" aria-hidden="true"></i>
                                                        </a>
                                                    </div>
                                                    <div class="col-md-2">
                                                        <a href="#"><i class="fa fa-lastfm-square" aria-hidden="true"></i></a>
                                                    </div>
                                                    <div class="col-md-3 col-md-offset-4">
                                                        <a href="${pageContext.request.contextPath}/addToCart?id=${product.id}">
                                                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                </c:forEach>
            </aside>
                </div>
            </div>
            <%--ASIDE--%>
        </div>
    </div>
</div>
<div align="center"><h3>Viewing page ${page.number + 1} of ${page.totalPages}</h3></div>
<div class="pageCounter">
    <h3 align="center"><c:forEach var="i" begin="1" end="${page.totalPages}">
        <c:choose>
            <c:when test="${i == page.number + 1}">${i}</c:when>
            <c:otherwise><a href="?page=${i - 1}">${i}</a></c:otherwise>
        </c:choose>
    </c:forEach>
    </h3>
</div>

<%@include file="tempates/footer.jsp"%>