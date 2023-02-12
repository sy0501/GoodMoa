function back() {
    history.back();
}

$(document).ready(function(){
    //메뉴 색 바뀌는 기능
    $('.gnb li').on('click', function(e){
        $('.gnb li').removeClass('on');
        $(this).addClass('on');
    });

    //카테고리 펴기 & 접기
    $('.category .cate').on('click', function(e){
        e.preventDefault();

        let d = $(this).siblings('.cateList').css('display');

        if(d == 'block') {
            $('.category .cateList').slideUp();
        } else {
            $('.category .cateList').slideUp();
            $(this).siblings('.cateList').slideDown();
        }
    });

});

//슬릭 슬라이드
$('.slideImg').slick({
    dots:true,
    autoplay:true,
    speed:300,
    autoplayspeed:1000,
    centerMode: true
});

$('.newList').slick({
    infinite: true,
    slidesToShow: 3,
    slidesToScroll: 3,
    dots: false,
    arrows:false,
    autoplay:true,
    speed:400,
    autoplayspeed:100,
    centerMode:true
});



