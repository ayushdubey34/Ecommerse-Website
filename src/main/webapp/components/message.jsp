<%

    String message = (String)session.getAttribute("message");
    String errorMessage = (String)session.getAttribute("error_message");
    if(message!=null){
        
        //out.print(message);
%>

<div class="alert alert-success alert-dismissible fade show" role="alert">
  <strong><%= message %></strong> 
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>

<%
            session.removeAttribute("message");
        }
         else{

%>
 <div class="alert alert-danger alert-dismissible fade show" role="alert">
   <strong><%= errorMessage %></strong>
   <button type="button" class="close" data-dismiss="alert" aria-label="Close">
     <span aria-hidden="true">&times;</span>
   </button>
 </div>
 <%
        session.removeAttribute("error_message");
    }
  %>