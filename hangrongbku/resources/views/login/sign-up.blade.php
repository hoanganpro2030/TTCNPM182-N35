<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>Sign Up</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="{{url('login/fonts/material-icon/css/material-design-iconic-font.min.css')}}">
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css">
    <!-- Main css -->
    <link rel="stylesheet" href="{{url('login/css/style.css')}}">
</head>
<body>

    <div class="main">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign Up</h2>
                        @if (count($errors)>0)
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{$error}}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                        <form method="POST" action="{{route('signup.postSignUp')}}" class="register-form" id="register-form">
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="name" id="name" placeholder="Your Name" required="required" />
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="email" id="email" placeholder="Your Email" required="required"/>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="pass" id="pass" placeholder="Password" required="required"/>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password" required="required"/>
                            </div>
                            <div class="form-group">
                                <label for="phone"><i class="zmdi zmdi-phone"></i></label>
                                <input type="number" name="phone" id="phone" placeholder="Your Phone Number" required="required"/>
                            </div>
                            <div class="form-group">
                                <label for="address"><i class="zmdi zmdi-home"></i></label>
                                <input type="address" name="address" id="email" placeholder="Your Address" required="required"/>
                            </div>
                            <div class="form-group">
                                <select style="height: 30px;border-radius: 5px; padding: 5px" name ="sex">
                                    <option value="1">Gender</option>
                                    <option value="1">Male</option>
                                    <option value="0">Female</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="dob"><i class="zmdi zmdi-assignment-o"></i></label>
                                <input type="date" name="dateOfBirth" id="dob" placeholder="Your Birth Day" required="required"/>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" required="required"/>
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="Register" />
                            </div>
                            <input type="hidden" name="_token" id="csrf-token" value="{{ Session::token() }}" required="required"/>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="{{url('login/images/logo-hcmut.png')}}" alt="sing up image"></figure>
                        <a href="{{route('signin.getSignin')}}" class="signup-image-link">I am already member</a>
                    </div>
                </div>
            </div>
        </section>

        
    </div>

    <!-- JS -->
    <script src="{{url('login/vendor/jquery/jquery.min.js')}}"></script>
    <script src="{{url('login/js/main.js')}}"></script>
    <script>
        $("div.alert").delay(3000).slideUp();
    </script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>