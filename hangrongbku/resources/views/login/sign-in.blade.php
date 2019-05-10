<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign In</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="{{url('login/fonts/material-icon/css/material-design-iconic-font.min.css')}}">
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css">
    <!-- Main css -->
    <link rel="stylesheet" href="{{url('login/css/style.css')}}">
</head>
<body>

    <div class="main">

        <!-- Sign in  Form -->
        <section class="sign-in">
            <div class="container">
                
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="{{url('login/images/logo-hcmut.png')}}" alt="sing up image"></figure>
                        <a href="{{route('signup.postSignUp')}}" class="signup-image-link">Create an account</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Sign in</h2>
                        <form method="POST" action="{{route('signin.postSignin')}}" class="register-form" id="login-form">
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="email" name="email" id="email" placeholder="Your Email"/>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="pass" id="pass" placeholder="Password"/>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                                <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
                            </div>
                            <input type="hidden" name="_token" id="csrf-token" value="{{ Session::token() }}" required="required"/>
                            @if(Session::has('signup'))
                            <div class="alert alert-success">{{Session::get('signup')}}</div>
                            @endif
                            @if(Session::has('error'))
                            <div class="alert alert-danger">{{Session::get('error')}}</div>
                            @endif
                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>
                            </div>

                        </form>
                        <div class="social-login">
                            <span class="social-label">Or login with</span>
                            <ul class="socials">
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="{{url('vendor/jquery/jquery.min.js')}}"></script>
    <script src="{{url('js/main.js')}}"></script>
    <script>
        $("div.alert").delay(3000).slideUp();
    </script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>