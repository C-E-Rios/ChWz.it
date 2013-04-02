require "rubygems"
require "sinatra"

enable :sessions

def login_signup_form action
	<<-HTML
					<div class="loginContainer">
						<form method="post" action='#{action}' class="loginForm">
				      <input type="text" name="name" id="login" class="loginInput" placeholder="UserName / e-mail">
				      <input type="password" name="password" id="password" class="loginPassword" placeholder="Password">
				      <button type="submit" id="loginButton" class="hideButton">Login</button>
						</form>
					</div>
				</div>
			</div>
		</header>
	HTML
end

def logged_in
	<<-HTML
					<div class="loggedInContainer">
						<h3 class="userGreeting">Hi #{current_user()}</h3>
						<form action="/sessions" method="post">
								<button type=submit class="logoutButton">Logout</button>
								<input type=hidden name=_method value=delete />
						</form>
					</div>
				</div>
			</div>
		</header>
	HTML
end

def layout content
  <<-HTML
		<head>
			<meta charset="utf-8">
			<title>CHWz.it</title>
			<meta name="description" content="Today's trending videos">
			<link rel="stylesheet" href="/css/global.css">
			<link href='http://fonts.googleapis.com/css?family=Lato:400|Amaranth:700|Oswald' rel='stylesheet' type='text/css'>
		</head>
		<body class="home">
	    #{content}
	  </body>
  HTML
end

def header
	<<-HTML
		<header>
			<div class="headerContainer group">
				<div class="logo">CHWz.it</div>
				<div class="userPane userPaneWidth group">
			    <div class="searchContainer">
						<span class="iconSize search-icon" data-icon="&#xe007;"></span>
				    <form class="searchForm">
				    	<input type="text" name="search" id="searchInput" placeholder="Search">
				    	<button type="submit" class="goSearch">Go</button>
				    </form>
					</div>
	HTML
end



def main_container
	<<-HTML
		<div class="bodyContainer group">
			<div class="grid-container">
				<div class="grid-1-3">
					<nav class="leftSidebarContainer">
						<ul>
						  <li><a href="/index.html">Home</a></li>
						  <li><a href="/peculiar.html">Peculiar</a></li>
						  <li><a href="/news.html">News</a></li>
						  <li><a href="/funny.html">Funny</a></li>
						  <li><a href="/music.html">Music</a></li>
						</ul>
					</nav>
				</div>
				<div class="main-container grid-2-3">
					<div class="mainStory">
						<article class="group">
							<span class="iconSize news-icon" data-icon="&#xe003;"></span>
							<h1>Meteor Strikes Russia</h1>
							<figure>
								<img src="images/rus-meteor.png" alt="Russian Meteor"/>
							</figure>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
							<div class="post-author">
								<address>Shared by SpiderManx1. 15th Jan, 2013.</address>
							</div>
						</article>
						<div class="mainStory-galleryContainer">
							<div class="mainStory-gallery">
								<div class="mainStory-gallery-img-container">
								  <div class="imgHolder">
								    <img src="images/ch-locker-bedroom.png" />
								    <figcaption class="funny"><h3>Bedroom lockers</h3></figcaption>
								  </div>
								</div>
								<div class="mainStory-gallery-img-container">
								  <div class="imgHolder">
								    <img src="images/redbull-skydive.png" />
								    <figcaption class="news"><h3>24 Mile Sky Dive</h3></figcaption>
								  </div>
								</div>
								<div class="mainStory-gallery-img-container">
								  <div class="imgHolder">
								    <img src="images/rt-politics.png" />
								    <figcaption class="news"><h3>Bradley Manning to Receive Life in Prison</h3></figcaption>
								  </div>
								</div>
								<div class="mainStory-gallery-img-container">
								  <div class="imgHolder">
								    <img src="images/uk-amir-khan.png" />
								    <figcaption class="peculiar"><h3>Amir’s attackers on what happened…</h3></figcaption>
								  </div>
								</div>
								<div class="mainStory-gallery-img-container">
								  <div class="imgHolder">
								    <img src="images/uk-kendra.png" />
								    <figcaption class="music"><h3>Kendra Morris – Pow</h3></figcaption>
								  </div>
								</div>
								<div class="mainStory-gallery-img-container">
								  <div class="imgHolder">
								    <img src="images/us-dr-dre-snoop-dogg.png" />
								    <figcaption class="music"><h3>Dr. Dre & Snoop Dogg - PSA</h3></figcaption>
								  </div>
								</div>
							</div>
						</div>
					</div>
					<div class="widget group">
						<div class="widget-topUsers">
							<h2>Top Users</h2>
							<table>
								<thead>
									<tr>
										<th>Username</th>
										<th>Posts</th>
										<th><span class="iconSize userCup-icon" data-icon="&#xe008;"></span></th>
										<th>Points</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><a href="#">Falcao</a></td>
										<td>320</td>
										<td>12</td>
										<td>4334</td>
									</tr>
									<tr>
										<td><a href="#">Gutierrez</a></td>
										<td>165</td>
										<td>5</td>
										<td>3857</td>
									</tr>
									<tr>
										<td><a href="#">SpiderManx1</a></td>
										<td>159</td>
										<td>4</td>
										<td>3463</td>
									</tr>
									<tr>
										<td><a href="#">jack_mullen</a></td>
										<td>128</td>
										<td>2</td>
										<td>2563</td>
									</tr>																	
								</tbody>
							</table>
						</div>
						<div class="widget-topComments group">
							<h2>Top Comments</h2>	
							<div class="topCommentsWrap group">
								<div class="eachCommentWrap group">
									<div class="topCommentTxt"><a href="#"><p class="topCommentP">"Yes let's go to﻿ mars."</p></a></div>
									<div class="topCommentIMG"><img src="images/thumb-ch-locker-bedroom.png"/></div>
								</div>
								<div class="topCommentAuthorDIV"><span class="topCommentAuthor">cgreen102 - 2 hours ago </span></div>
								<div class="eachCommentWrap group">
									<div class="topCommentTxt"><a class="widerComment" href="#"><p class="topCommentP">"Health warnings should could with a health warning because they can..."</p></a></div>							
									<div class="topCommentIMG"><img src="images/thumb-redbull-skydive.png"/></div>
								</div>
								<div class="topCommentAuthorDIV"><span class="topCommentAuthor">jsonshi - 5 hours ago </span></div>
								<div class="eachCommentWrap group">
									<div class="topCommentTxt"><a href="#"><p class="topCommentP">"This﻿ makes me wanna get a goat."</p></a></div>
									<div class="topCommentIMG"><img src="images/thumb-us-dr-dre-snoop-dogg.png"/></div>
								</div>
								<div class="topCommentAuthorDIV"><span class="topCommentAuthor">jack_mullen - 1 day ago </span></div>
							</div>							
						</div>				
					</div>
				</div>
				<div class="grid-3-3">
					<div class="rightSidebar">
						<a href="#">
							<h2 class="joinUsH2">Join us?</h2>
							<span class="iconSize" data-icon="&#xe006;"></span>
						</a>
						<!-- Form reveals iteself when users click on the above -->
							<p>Contribute anonymously, or tell us your name and e-mail address to post as yourself.</p>
						<div class="postVideo">
							<h2>Post New Video</h2>
							<p class="singleLineTxt">You don't have to join to contribute.</p>
							<form action="#">
							  	<select name="userName" id="userName">
							  		<option value="Log-In">Log-in</option>
							  		<option value="Anon001">Register</option>
							  		<option value="Anonymous">Anonymous</option>
							  	</select>
							  <input type="url" name="url" placeholder="URL">
							  <select name="category">
								  <option value="Peculiar">Peculiar</option>
								  <option value="News">News</option>
								  <option value="Funny">Funny</option>
								  <option value="Music" selected>Music</option>
								</select>
							  <textarea name="description" placeholder="Video description"></textarea>
							  <button type="submit" class="postVideo">Post</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<footer>
			<div class="footerContainer">
				<div class="footer-left">
					<h4><a href="#">hello@CHWz.it</a></h3>
				</div>
				<div class="footer-mid">
					<a class="facebook" href="#"></a>
					<a class="twitter" href="#"></a>
					<a class="pinterest" href="#"></a>
				</div>
				<div class="footer-right">
					<h4>CR Design &copy; 2013</h3>
				</div>
			<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
			<script src="js/js.js"></script>
			</div>
		</footer>
	HTML
end



def valid_signup? name
	name_pattern = / 
		\A         		# start of string
		[a-z]				  # starts with a letter
		[a-z ]{0,60}  # then 0-60 letters or spaces
		[a-z]         # finishes with a letter ( so in all, shortest possible name is two letters )
		\Z       	    # end of string
	/xi 
	name_pattern =~ name
end

def message(msg)
	session["message"] = msg
end

def woops(msg)
	session["woops"] = msg
end

def info_boxes
  class_name = { "message" => "", "woops" => "alert" }
	output = ""
	for key in ["message","woops"] do
		val = session.delete(key)
		if val == nil
			output += ""
		else
			output += <<-HTML
				<p class="alert-box #{class_name[key]}">#{val}</p>
			HTML
		end
	end
	output
end

def login user
	session["user_id"] = user["_id"]
end
def current_user
	session["user_id"]
end
def logged_in?
	current_user != nil
end
def logout
	session.delete("user_id")
end



# our routes and handlers

get "/" do
  if logged_in?
		layout <<-HTML
			#{header}
			#{logged_in}
			#{main_container}
  	HTML
  else
		layout <<-HTML
			#{header}
			#{info_boxes()}
			#{login_signup_form("/users")}
			#{main_container}
  	HTML
	end
end


get "/login" do
  mainbody <<-HTML
  HTML
end

post "/sessions" do
  login({"_id" => "you"})
  redirect("/")
end

post "/users" do
	if valid_signup?(params["name"])
    user = {"_id" => params["name"]}
		login(user)
		redirect("/")
	else
		woops("Invalid login - Please try again")
		redirect('/')
	end
end

delete "/sessions" do
	logout()
	message("See you next time!")
	redirect("/")
end






