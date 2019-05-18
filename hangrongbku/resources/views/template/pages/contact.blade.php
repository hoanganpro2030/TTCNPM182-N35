@extends('template.master')
@section('content')
    <div class="container">
        <div id="content" class="space-top-none">
            
            <div class="space50">&nbsp;</div>
            <div class="row">
                <div class="col-sm-8">
                    <h2 style ="color: yellow">Form liên hệ</h2>
                    <div class="space20">&nbsp;</div>
                    <p>Nếu có bất kì thắc mắc hay phản hồi gì, hãy để lại lời nhắn cho chúng tôi biết.</p>
                    <div class="space20">&nbsp;</div>
                    <form action="#" method="post" class="contact-form">	
                        <div class="form-block">
                            <input name="your-name" type="text" placeholder="Họ và tên của bạn (bắt buộc)" style ="color:black"> 
                        </div>
                        <div class="form-block">
                            <input name="your-email" type="email" placeholder="Địa chỉ email (bắt buộc)" style ="color:black">
                        </div>
                        <div class="form-block">
                            <input name="your-subject" type="text" placeholder="Tiêu đề" style ="color:black">
                        </div>
                        <div class="form-block">
                            <textarea name="your-message" placeholder="Nhập nội dung" style ="color:black"></textarea>
                        </div>
                        <div class="form-block">
                            <button type="submit" class="beta-btn primary" style ="color: black">Gửi tin nhắn <i class="fa fa-chevron-right"></i></button>
                        </div>
                    </form>
                </div>
                <div class="col-sm-4">
                    <h2 style ="color: yellow">Thông tin liên hệ</h2>
                    <div class="space20">&nbsp;</div>

                    <h6 class="contact-title" style ="color: yellow">Địa chỉ</h6>
                    <p>
                        268 Lý Thường Kiệt, Phường 14, Quận 10, Hồ Chí Minh.<br>
                        Email: hangrongbku@gmail.com. <br>
                        Số điện thoại: 19008198
                    </p>
                    <div class="space20">&nbsp;</div>
                    <h6 class="contact-title" style ="color: yellow">Liên lạc</h6>
                    <p>
                        Liên lạc với chúng tôi qua địa chỉ email dưới đây<br>
        
                        <a href="mailto:biz@betadesign.com" style ="color: yellow">hangrongbku@gmail.com</a>
                    </p>
                    <div class="space20">&nbsp;</div>
                    <h6 class="contact-title" style ="color: yellow">Tuyển dụng</h6>
                    <p>
                        Chúng tôi đang tìm kiếm các nhân sự tài tăng <br>
                        Nộp CV tại đây. <br>
                        <a href="hr@betadesign.com" style ="color: yellow">hr@betadesign.com</a>
                    </p>
                </div>
            </div>
        </div> <!-- #content -->
    </div> <!-- .container -->
@endsection