document.addEventListener("DOMContentLoaded", function(){
  const mycanvas = document.getElementById("mycanvas");
  mycanvas.width = 500;
  mycanvas.height = 500;

  const ctx = mycanvas.getContext('2d');
  ctx.fillStyle = 'red';
  ctx.fillRect(0,0,500,500);

  ctx.beginPath();
  ctx.strokeStyle = 'blue';
  ctx.arc(50, 50, 30, 0, 360);
  ctx.lineWidth = 5;
  ctx.stroke();
  ctx.fillStyle = 'blue';
  ctx.fill();
});
