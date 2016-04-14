<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="assest/css/materialize.css"  media="screen,projection"/>
        <link rel="stylesheet" type="text/css" href="assest/css/style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>GDGJSS|feedback form</title>
        <link rel="shortcut icon" type="image/png" href="assest/images/favicon.png">
        <script>
	function data(x){
		if(x.action.value===""){
			alert("You have not filled this legend");
			return false;
		}
		{
			return true;
		}
	}
</script>
    </head>
    <!-- header starts here -->
    <body background="assest/images/backgroundsmall.jpg" >
        <div class="row">
            <div class="row">
                <div class="col s12 light-blue" style="display:inline-block"><h3 class="white-text center" style="font-weight:500"> Google Developers Group</h3>
                </div>
                <div class="col s12 light-blue" style="display:inline-block"><h5 class="white-text center" style="font-weight:500"> JSS NOIDA</h5>
                </div>
                <div class="col s12 light-blue" ><div class="col s6 m4"><h6 class="white-text left"><% String name; name=request.getParameter("event"); out.print(name); %> </h6></div><div class="col m4 hide-on-small-only"><h6 class="white-text center"> Feedback Form</h6></div><div class="col s6 m4"><h6><a class="white-text right hoverable" href="http://gdgjss.in">gdgjss.in</a></h6></div>
                </div>
            </div>
            <!-- header ends here -->
            <form action="home.jsp">
                <div class="col s12" style="display:inline-block;padding-left:17px"><button class="btn waves-effect waves-light light-blue darken-3 left hoverable left" type="submit" name="action">Home</button>
                </div>
            </form>
        </div>


        <!-- feedback form starts here -->
        <div class="row container green lighten-5 hoverable" >
            <form action="Feedback" class="col s12" style="padding-top:30px" method="post">
                <div class="row">
                    <div class="input-field col s12 m6 ">
                        <i class="material-icons prefix">account_circle</i>
                        <input id="icon_prefix" type="text" class="validate" name="name" required />
                        <label for="icon_prefix">Full Name</label>
                    </div>
                    <div class="input-field col m6 s12 ">
                        <i class="material-icons prefix">email</i>
                        <input id="icon_prefix" type="email" class="validate" name="email" required />
                        <label for="icon_prefix">Email Id</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12 m6 ">
                        <i class="material-icons prefix">school</i>
                        <input id="icon_prefix" type="text" class="validate" name="institute" required />
                        <label for="icon_prefix">Institute Name</label>
                    </div>

                    <div class="input-field col s12 m3"> 
                        <select class="browser-default light-blue lighten-3" name="trade" required />
                            <option value="" disabled selected>Choose your trade</option>
                            <option value="CSE">BTECH CSE</option>
                            <option value="IT">BTECH IT</option>
                            <option value="EC">BTECH EC</option>
                            <option value="EE">BTECH EE</option>
                            <option value="ME">BTECH ME</option>
                            <option value="CE">BTECH CE</option>
                            <option value="IC">BTECH IC</option>
                            <option value="EEE">BTECH EEE</option>
                            <option value="MT">BTECH MT</option>
                            <option value="MTECH">MTECH</option>
                            <option value="MCA">MCA</option>
                            <option value="OTHERS">OTHERS</option>
                        </select>
                    </div>
                    <div class="input-field col s12 m3">
                        <select class="browser-default  light-blue lighten-3" name="year" required />
                            <option value="" disabled selected>Year</option>
                            <option value="I">I</option>
                            <option value="II">II</option>
                            <option value="III">III</option>
                            <option value="IV">IV</option>
                            <option value="OTHER">OTHER</option>
                        </select>
                    </div>
                </div>
                </br>
                <div class="row">
                    <div class="col s12 m6 ">
                        <p class="black-text "><i class="material-icons prefix">swap_horiz</i>Score the presenter(s)/speaker(s) of the event :</p> 
                        <p class="range-field">
                            <input type="range" min="40" max="100" name="eval1" required />
                        </p> 
                    </div>
                    <div class="col s12 m6 ">
                        <p class="black-text"><i class="material-icons prefix">swap_horiz</i>Score the content (presentation/videos etc) used in event :</p> 
                        <p class="range-field">
                            <input type="range" min="40" max="100"name="eval2" required />
                        </p>
                    </div>
                </div>
                </br>
                <div class="row">
                    <div class="col s12 m6 ">
                        <p class="black-text"><i class="material-icons prefix">swap_horiz</i>Was the event intersting and informative :</p> 
                        <p class="range-field">
                            <input type="range" min="40" max="100" name="eval3" required/>
                        </p>
                    </div>
                    <div class="col s12 m6 ">
                        <p class="black-text"><i class="material-icons prefix">swap_horiz</i>Overall environment and experience of the event :</p>   

                        <p class="range-field">
                            <input type="range"  min="40" max="100" name="eval4" required />
                        </p>
                    </div>
                </div>

                <div class="row">
                    <div class="col s12 m4 ">
                        <p> <i class="material-icons prefix tiny">label</i>  Was the event well synchronised:</p>
                        <p>
                            <input class="with-gap" name="ques1" type="radio" id="test3" value="YES" /><label for="test3">Yes,It was well organized!</label></br>
                            <input class="with-gap" name="ques1" type="radio" id="test4"  value="NO"/><label for="test4">Sorry,It all messed up!</label></br>
                            <input class="with-gap" name="ques1" type="radio" id="test0"  value="MAYBE"/><label for="test0">Satisfactory.</label>
                        </p>
                    </div>

                    <div class="col s12 m4 ">
                        <p><i class="material-icons prefix tiny">label</i>  Will you participate in upcoming events:</p>
                        <p>
                            <input class="with-gap" name="ques2" type="radio" id="test146"  value="YES"/><label for="test146">Yes,I will. </label></br>
                            <input class="with-gap" name="ques2" type="radio" id="test14"   value="NO"/><label for="test14">Sorry,not interested. </label></br>
                            <input class="with-gap" name="ques2" type="radio" id="test10"   value="MAYBE"/><label for="test10">It depends on my schedule.</label>
                        </p>
                    </div>

                    <div class="col s12 m4 ">
                        <p> <i class="material-icons prefix tiny ">label</i>  Will you like to join GDG JSS Noida:</p>
                        <p>
                            <input class="with-gap" name="ques3" type="radio" id="test21"  value="YES"/><label for="test21">Yes,feeling excited about it!</label></br>
                            <input class="with-gap" name="ques3" type="radio" id="test141"  value="NO"/><label for="test141">Sorry,I have other plans!</label></br>
                            <input class="with-gap" name="ques3" type="radio" id="test15"  value="MAYBE"/><label for="test15">Still confused.</label>
                        </p>
                    </div>
                </div>
                </br>
                <div class="row">
                    <div class="input-field col s12 ">
                        <i class="material-icons prefix">mode_edit</i>
                        <textarea id="textarea1" class="materialize-textarea" name="suggestion" required ></textarea>
                        <label for="textarea1">Suggestions please..! This will help us improve our upcoming events:</label>
                    </div>
                </div>
            

        </div>
        <!-- feedback form ends here -->


        <% String name1; name1=request.getParameter("event"); request.setAttribute("name1", name1); %>
        <input type="hidden" name="event1" value="${name1}">
        <!-- footer starts here -->
        <footer class="page-footer light-blue darken-1">
            <div>
                <div class="row footer_row" style="margin-bottom: 0px">
                    <div class="col s12">
                        <h6 class="white-text center">Response to all fields is mandatory.</h6>
                        <div class="row container">
                            <div class="col s6 center">
                                <ul>
                                    <li></li>
                                     <button class="btn waves-effect waves-light light-blue darken-4 centre-align hoverable c" type="submit" name="action">Submit Form</button></li>
                                    </form>
                                </ul>
                            </div>
                            <div class="col s6 center">
                                <ul>
                                    <li></li>
                                    <form action="feedbackform.jsp"><li><button class="btn waves-effect waves-light light-blue darken-4 centre-align hoverable " type="submit" name="action">Reset Form</button></li></ul>
                                    <input type="hidden" name="event" value="${name1}">
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
