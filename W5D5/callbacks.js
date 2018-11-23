//Simple callback
window.setTimeout(function() {
  alert("Hammertime");
}, 3000);


//callback with closure
function hammerTime(time) {
  window.setTimeout(function() {
    alert(`${time} is hammertime!`);
  }, time)
}
