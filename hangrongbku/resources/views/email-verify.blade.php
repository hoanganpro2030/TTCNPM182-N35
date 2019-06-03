<!DOCTYPE html>
<html lang="en-US">
    <head>
        <meta charset="utf-8">
    </head>
    <body>
        <h2>Xác nhận địa chỉ email</h2>

        <div>
            Cảm ơn vì đã sử dụng dịch vụ của chúng 
            Vui lòng theo link sau để xác nhận tài khoản email liên kết
            {{ URL::to('register/verify/' . $confirmation_code) }}.<br/>

        </div>

    </body>
</html>