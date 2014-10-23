function onHover(event){
  var node = event.target;
  node.style.color = 'green';
  // Modify the node here! (e.g. color)
}


function fade(elem){
  $elem.animate({
    opacity: 0.25
  }, 1000, 'linear');
}

       // newHeart.animate({
//       top: Math.floor(Math.random() * 200) - 50 + '%',
//       left: Math.floor(Math.random() * 200) - 50 + '%',
//       opacity: 0
//     }, 2000, 'linear');
//   }
// }

// function rainbow(elem){

//   var red = Math.floor(Math.random() * 255);
//   var green = Math.floor(Math.random() * 255);
//   var blue = Math.floor(Math.random() * 255);
//   var newColor = 'rgb(' + red + ', ' + green + ', ' + blue + ')';

//   $elem.animate({
//     color: newColor
//   }, 300, 'linear',)

// }

// replace `data-class-name` with html class you use for a row of your data
window.onload = function() {
  var rows = document.getElementsByClassName('boro');
  for (var i = 0; i < rows.length; i++) {
    rows[i].addEventListener('mouseover', onHover);
  }
}





$(function(){
  setInterval(function(){
    fade('h1');
  });
})


// function letThereBeHearts(numHearts) {

//   for (var i = 0; i < numHearts; i++) {
//     var newHeart = $('<h1 class="heart">&hearts;</h1>');
//     $('body').append(newHeart);

//   // optional
//     var red = Math.floor(Math.random() * 255);
//     var green = Math.floor(Math.random() * 255);
//     var blue = Math.floor(Math.random() * 255);
//     var newColor = 'rgb(' + red + ', ' + green + ', ' + blue + ')';
//     newHeart.css({color: newColor})

//     newHeart.animate({
//       top: Math.floor(Math.random() * 200) - 50 + '%',
//       left: Math.floor(Math.random() * 200) - 50 + '%',
//       opacity: 0
//     }, 2000, 'linear');
//   }
// }

// // Document Ready
// $(function(){
//   setInterval(function(){
//     letThereBeHearts(5);
//   }, 100);
// })


