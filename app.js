function centerJobTitle() {
	//Centers 'software engineer' on video. 

	let navHeight = $('nav').css('height');
	navHeight = parseInt(navHeight.replace(/px/g, ''));

	let heroHeight = $('.hero-image').css('height');
	heroHeight = parseInt(heroHeight.replace(/px/g, ''));

	let titleHeight = $('#jobTitle').css('height');
	titleHeight = parseInt(titleHeight.replace(/px/g, ''));

	const adjustment = (navHeight + heroHeight) / 2 - titleHeight / 2;

	$('.banner').css({ top: adjustment, opacity: 1 });
}

$(window).on('load', centerJobTitle);

$(window).on('scroll', centerJobTitle);

$(window).resize(centerJobTitle);

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
	const targetDivB = document.getElementById("2").offsetTop - 750;
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

$('#crmLink').on('click', function () {
	screenCover();
	$('iframe').show().attr('src', 'http://itseddies.com/crm');
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