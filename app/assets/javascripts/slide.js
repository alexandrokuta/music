$(function() {
    $('.slide__images').slick({
        autoplay: true,
        dots: true,
        centerMode: true,
        centerPadding: '20%',
        slideToShow: 1,
        focusOnSelect: true,
        speed: 1000,
        responsive: [
            {
                breakpoint: 768,
                settings: {
                    centerMode: false
                }
            }
        ]
    });
});
