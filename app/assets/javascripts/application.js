// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .
//= require turbolinks


jQuery(document).ready(function() {

	$('ul li.dropdown').hover(function () {
	            $(this).find('.dropdown-menu').stop(true, true).delay(150).fadeIn();
	        }, function () {
	            $(this).find('.dropdown-menu').stop(true, true).delay(150).fadeOut();
	});

	 /*
	    Mobile navigation
	    =========================== */
	    //build dropdown
	    $("<select />").appendTo(".navbar .nav-collapse .nav");
	 
	    //Default option "Voir les rubriques…"
	    $("<option />", {
	       "selected": "selected",
	       "value"   : "",
	       "text"    : "Ouvrir le menu"
	    }).appendTo(".navbar .nav-collapse .nav select"); 
	 
	    //Menu items
	    $(".navbar .nav-collapse .nav li a").each(function() {
	        var el = $(this);
	        $("<option />", {
	            "value"   : el.attr("href"),
	            "text"    : el.text()
	        }).appendTo(".navbar .nav-collapse .nav select");

	        if (el.text() == "Derniere Offres" ) {

			    $("<option />", {
			            "value"   : '/employeur/nouvelle_offre',
			            "text"    : 'Je suis Employeur'
			    	}).appendTo(".navbar .nav-collapse .nav select"); 
			    $("<option />", {
			            "value"   : '/candidat/nouvelle_candidature',
			            "text"    : 'Je suis Candidat'
			    	}).appendTo(".navbar .nav-collapse .nav select");

	        };
	    });


	   
	 
	    //Link
	    $(".navbar .nav-collapse .nav select").change(function() {
	        window.location = $(this).find("option:selected").val();
	    });

	}
)();