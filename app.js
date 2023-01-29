$(window).on('scroll', function () {
	const y_scroll_pos = window.pageYOffset;
	const targetDiv = document.getElementById("cards").offsetTop - 500;
	if (y_scroll_pos > targetDiv) {
		$(".fadeUp").animate({ top: "0px", opacity: "1" }, 2000);
	}
});

$(window).on('scroll', function () {
	const y_scroll_pos = window.pageYOffset;
	const targetDiv = document.getElementById("aboutMe").offsetTop - 500;
	if (y_scroll_pos > targetDiv) {
		$("#aboutMe").animate({ left: '0px', opacity: "1" }, 2000);
	}
});

$(window).on('scroll', function () {
	const y_scroll_pos = window.pageYOffset;
	const targetDivB = document.getElementById("skills").offsetTop - 750;
	if (y_scroll_pos > targetDivB) {
		$(".fadeLeft").animate({ left: "0px", opacity: "1" }, 2000);
	}
});

//greys out screen for iframe
function screenCover() {
	$('#cover').css({
		'background-color': '#212529',
		'position': 'fixed',
		'width': '100%',
		'height': '100%',
		'top': '0',
		'opacity': '0.5'
	});
	$('#close').show();
}

//removes screen cover
function screenUncover() {
	$('#cover').css({
		'background-color': '#212529',
		'position': 'relative',
		'width': '0',
		'height': '0',
		'top': '0',
		'opacity': '0'
	});
	$('#close').hide();
}

$('#invLink').on('click', function () {
	screenCover();
	$('iframe').show().attr('src', 'http://inventory-project-ee.s3-website-us-east-1.amazonaws.com/');
});

$('#crmLink').on('click', function () {
	screenCover();
	$('iframe').show().attr('src', 'https://itseddies.com/crm');
});

$('#portLink').on('click', function () {
	screenCover();
	$('iframe').show().attr('src', '\\index.html');
});

$('#reactionLink').on('click', function () {
	screenCover();
	$('iframe').show().attr('src', "\\reaction-timer\\index.html");
});

$('#pixelLink').on('click', function () {
	screenCover();
	$('iframe').show().attr('src', "\\pixel-art\\index.html");
});

$('#bbcLink').on('click', function () {
	screenCover();
	$('iframe').show().attr('src', "\\news-clone\\index.html");
});

$('#cover').on('click', function () {
	screenUncover();
	$('iframe').hide();
});

$('#close').on('click', function () {
	screenUncover();
	$('iframe').hide();
});

const resizeTitle = () => {
	$(".card-text")[1].style.height = window.getComputedStyle($(".card-text")[0]).getPropertyValue("height");
}

document.onload(resizeTitle())