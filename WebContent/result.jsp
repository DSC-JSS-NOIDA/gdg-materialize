<%@page import="org.hibernate.criterion.Order"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List"%>
<%@page import="org.gdgjss.model.Responses"%>
<%@page import="org.gdgjss.model.HibernateUtil"%>
<% Session s = HibernateUtil.getSessionFactory().openSession();
String name1; name1=request.getParameter("event");
String sort="name"; sort=request.getParameter("sort"); 
//request.setAttribute("sort", sort) under observation
List<Responses> es = s.createCriteria(Responses.class).addOrder(Order.asc(sort)).add(Restrictions.eq("event", name1)).list(); %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="assest/css/materialize.css"  media="screen,projection"/>
        <link rel="stylesheet" type="text/css" href="assest/css/style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>GDGJSS|View feedback</title>
       <link rel="shortcut icon" type="image/png" href="assest/images/favicon.png">
    </head>
    <!-- header starts here -->
    <body background="assest/images/backgroundsmall.jpg" >
        
    
            <div class="row">
                <div class="col s12 light-blue" style="display:inline-block"><h3 class="white-text center" style="font-weight:500"> Google Developers Group</h3>
                </div>
                <div class="col s12 light-blue" style="display:inline-block"><h5 class="white-text center" style="font-weight:500"> JSS NOIDA</h5>
                </div>
                <div class="col s12 light-blue" ><div class="col s6 m4"><h6 class="white-text left"><% String name; name=request.getParameter("event"); out.print(name);request.setAttribute("name", name); %> </h6></div><div class="col m4 hide-on-small-only"><h6 class="white-text center"> Feedback Form</h6></div><div class="col s6 m4"><h6><a class="white-text right hoverable" href="http://gdgjss.in">gdgjss.in</a></h6></div>
                </div>
            </div>
            <!-- header ends here -->
      

          <div class="row">
          
              <div class="input-field col s12 m6 ">
                  <form action="result.jsp" method="post">
                   <select name="sort" class="browser-default  light-blue lighten-3 hoverable" required />
                   <option value="" disabled selected>sort option</option>
                   <option value="name">Name</option>
                   <option value="email">Email</option>
                   <option value="institute">Institute</option>
                   <option value="trade">Trade</option>
                   <option value="year">Year</option>
                    
               </select>
               <input type="hidden" name="event" value="${name}">
            </div>
           </br>
               <button class=" s12 m6 offset-m6 btn waves-effect waves-light indigo accent-4 centre-align hoverable" type="submit" name="result.jsp">
               Sort
               </button>
               </form> </div>       
                
        <!-- feedback form starts here -->
        <div class="row   lime lighten-4 hoverable " >
            <table class="highlight centered responsive-table">
        <thead>
          <tr>
              <th data-field="id">Name</th>
              <th data-field="name">Email</th>
              <th data-field="price">Institute</th>
              <th data-field="price">Trade</th>
              <th data-field="price">Year</th>
              <th data-field="price">Eval1</th>
              <th data-field="price">Eval2</th>
              <th data-field="price">Eval3</th>
              <th data-field="price">Eval4</th>
              <th data-field="price">Ques1</th>
              <th data-field="price">Ques2</th>
              <th data-field="price">Ques3</th>
              <th data-field="price">Suggestions</th>
          </tr>
        </thead>

        <tbody>
            <% for (Responses e : es) { %>
          <tr>
              <td><% out.print(e.getName()); %> </td>
            <td><% out.print(e.getEmail()); %></td>
            <td><% out.print(e.getInstitute()); %></td>
            <td><% out.print(e.getTrade()); %></td>
            <td><% out.print(e.getYear()); %></td>
            <td><% out.print(e.getEval1()); %></td>
            <td><% out.print(e.getEval2()); %></td>
            <td><% out.print(e.getEval3()); %></td>
            <td><% out.print(e.getEval4()); %></td>
            <td><% out.print(e.getQues1()); %></td>
            <td><% out.print(e.getQues2()); %></td>
            <td><% out.print(e.getQues3()); %></td>
            <td><% out.print(e.getSuggestion()); %></td>
          </tr>
                   <% } %>
        </tbody>
      </table>
        </div>
        <!-- feedback form ends here -->


        <!-- footer starts here -->
        <footer class="page-footer light-blue darken-1">
            <div>
                <div class="row footer_row" style="margin-bottom: 0px">
                    <div class="col s12">
                        <h6 class="white-text center">Responses are only of specified event.</h6>
                        <div class="row container">
                            <div class="col s6 center">
                                <ul>
                                    <li></li>
                                     <button class="btn waves-effect waves-light light-blue darken-4 centre-align hoverable c" type="submit" name="action">Home Page</button></li>
                                    
                                </ul>
                            </div>
                            <div class="col s6 center">
                                <ul>
                                    <li></li>
                                    <% String name2; name2=request.getParameter("event");  %>
                                    <form action="result.jsp"><input type="hidden" name="event" value="${name}"><li><button class="btn waves-effect waves-light light-blue darken-4 centre-align hoverable " type="submit" name="action">Refresh Page</button></li></ul>
                                    
                                </form> </div>
                        </div>
                    </div>
                </div>
        </footer>
        <!-- footer ends here -->

        <script src="assest/js/jQuery.js"></script>
        <script src="assest/js/materialize.js"></script> 

    </body>
</html>
