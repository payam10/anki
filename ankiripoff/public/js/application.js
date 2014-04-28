$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them


  $('.answer').hide();

  $('#flip').click(function(e)	{
    e.preventDefault();
  $('.question').hide();
  $('.answer').show();

  });
  

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});


$(document).keypress(function(event){

  var keycode = (event.keyCode ? event.keyCode : event.which);
  
  if(keycode == '114'){
    window.location.href='/register';
  }
  if(keycode == '112'){
    window.location.href='/play';
  }
  if(keycode == '101'){
    window.location.href='/';
    }
  if(keycode == '103'){
    window.location.href='/play';
    }
 	if(keycode == '98'){
   window.location.href='/play';
   }
});