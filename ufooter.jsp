
<%@ page  import="java.util.*" import="com.ct.*" %>
<%@ page  import="java.sql.*" import="databaseconnection.*" %>

<div class="clearfix"> </div>
					</div>
			</div>
			

			</div>
		</div>
		<!-- technology-right -->
		<div class="col-md-3 technology-right">
				
				
				<div class="blo-top1">
							
					<div class="tech-btm">
						<div class="blog-grids">

								<a href="#"><img src="view1.jsp?id=<%=session.getAttribute("email")%>" " WIDTH="250" alt="" /></a></a>
							</div>
							<div class="clearfix"> </div>
					
						<div class="blog-grids">
							<div class="blog-grid-left">


												

							
							</div>
							<div class="blog-grid-right">
								
																			<h2 class="major"><span><%=session.getAttribute("name")%></span></h2>
							</div>
							<div class="clearfix"> </div>

						</div>
									<form method="post" action="usearch.jsp">
									
										<h4><span>Friend Search</span>
															
											<input type="text" name="email" required>	
											<br>
						


								
													<% 
					int i23=Details.getFriendsCount((String)session.getAttribute("email"));
					%>
					

<br><br>
											<div class="notification_header">
												<h6> <b><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i><span class="badge">&nbsp;<%=i23%> Friend Requests </span>
											</div>
									
				<%Vector<String> v=Details.getFriends((String)session.getAttribute("email"));%> 
					<%
					for(String vv:v){
					%>

										  <img src="view1.jsp?id=<%=vv%>" alt=" " width="90" height="60"alt=""><br>
										  <%=Details.getName(vv)%><br>


												<a href="accept.jsp?mail=<%=vv%>">Accept</a>&nbsp;&nbsp;&nbsp;
												
												<a href="reject.jsp?mail=<%=vv%>">Reject</a></span></p>
								



										<%}%>






								
													<% 
					 i23=Details.tagCount((String)session.getAttribute("email"));
					%>
					

									<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-tag"></i><span class="badge">&nbsp;<%=i23%> Tag Requests</span></a>
									<ul class="dropdown-menu anti-dropdown-menu">
										<li>
											<div class="notification_header">
											
											</div>
										</li>
	
				<%v=Details.tags((String)session.getAttribute("email"));%> 
					<%
					for(String vv:v){
					%>

										<li><a href="#">
										   <div class="user_img">
										   
										   </div>
										   <div class="notification_desc">
											<p><a href="taging.jsp?id=<%=vv%>"><img src="view3.jsp?id=<%=vv%>" alt=" " width="150" height="50"alt=""></a> </span> </P>
											</div>
										   <div class="clearfix"></div>	
										</a>
										<li>


										<%}%>
						
				

							<div class="clearfix"> </div>
						</div>
					

					
					
					
				</div>
				
			
		</div>
		<div class="clearfix"></div>
		<!-- technology-right -->
	</div>
</div>
<div class="footer">
		<div class="container">
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="copyright wow fadeInDown"  data-wow-duration=".8s" data-wow-delay=".2s">
				<div class="container">
					<p>© TBPSS. All rights reserved.</p>
				</div>
			</div>
</body>
</html>