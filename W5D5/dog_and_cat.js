function Cat () {
  this.name = 'Markov';
  this.age = 3;
}

function Dog () {
  this.name = 'Noodles';
  this.age = 4;
}

Dog.prototype.chase = function (cat) {
  console.log(`My name is ${this.name} and I'm chasing ${cat.name}!`);
};

const Marko = new Cat ();
const Noodles = new Dog();


Noodles.chase(Marko)
Noodles.chase.call(Noodles, Marko)
