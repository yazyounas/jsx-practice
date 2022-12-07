import { animals } from './animals';
import React from 'react'
import ReactDOM from 'react-dom';

const title = 'Different Value';
const showBackground = true;
const background = (
  <img
  className='background'
  alt='ocean'
  src='/images/ocean.jpg' />
)
const images=[];

for (const animal in animals){
images.push(
  <img
    key={animal}
    className= 'animal'
    alt={animal}
    src={animals[animal].image}
    aria-label={animal}
    role='button'
    onClick={displayFact}
  />
  )
}

function displayFact(e) {
  const selectedAnimal = e.target.alt;
  const animalInfo =animals[selectedAnimal];
  const optionIndex = Math.floor(Math.random() * animalInfo.facts.length);
  const funFact = animalInfo.facts[optionIndex];
document.getElementById('fact').innerHTML = funFact;

}

const animalFacts = (
  <div>
  <h1>{title === '' ? 'Click an animal for fun fact' : title}</h1>
  {showBackground && background}
  <p id='fact'></p>
  <div className='animals'>
  {images}
  </div>
  </div>
)

ReactDOM.render(animalFacts, document.getElementById('root'));
/*
import React from 'react';
import ReactDOM from 'react-dom';
//ONCLICK FUNCTION IN JSX
import React from 'react';
import ReactDOM from 'react-dom';

function makeDoggy(e) {
  // Call this extremely useful function on an <img>.
  // The <img> will become a picture of a doggy.
  e.target.setAttribute('src', 'https://content.codecademy.com/courses/React/react_photo-puppy.jpeg');
  e.target.setAttribute('alt', 'doggy');
}

const kitty = (
	<img onClick={makeDoggy}
		src="https://content.codecademy.com/courses/React/react_photo-kitty.jpg" 
		alt="kitty" />
);

ReactDOM.render(kitty, document.getElementById('app'));*/
/*
// Write code here:
ReactDOM.render(
  <h1>{2 + 3}</h1>,
  document.getElementById('app')
);
const sideLength = "200px";
 
const panda = (
  <img 
    src="images/panda.jpg" 
    alt="panda" 
    height={sideLength} 
    width={sideLength} />
);
rn
ADVANCED JSX
Variable Attributes in JSX
When writing JSX, it’s common to use variables to set attributes.

Here’s an example of how that might work:

// Use a variable to set the `height` and `width` attributes:
 
const sideLength = "200px";
 
const panda = (
  <img 
    src="images/panda.jpg" 
    alt="panda" 
    height={sideLength} 
    width={sideLength} />
);
Notice how in this example, the <img />‘s attributes each get their own line. This can make your code more readable if you have a lot of attributes on one element.

Object properties are also often used to set attributes:

const pics = {
  panda: "http://bit.ly/1Tqltv5",
  owl: "http://bit.ly/1XGtkM3",
  owlCat: "http://bit.ly/1Upbczi"
}; 
 
const panda = (
  <img 
    src={pics.panda} 
    alt="Lazy Panda" />
);
 
const owl = (
  <img 
    src={pics.owl} 
    alt="Unimpressed Owl" />
);
 
const owlCat = (
  <img 
    src={pics.owlCat} 
    alt="Ghastly Abomination" />
); 
const goose = 'https://content.codecademy.com/courses/React/react_photo-goose.jpg';

// Declare new variable here:
const gooseImg = (
  <img
  src={goose}/>
  
);
ReactDOM.render(gooseImg, document.getElementById('app'));
*/

//UNIQUE KEY GENRATOR
/*
import React from 'react';
import ReactDOM from 'react-dom';

const people = ['Rowe', 'Prevost', 'Gare'];

const peopleLis = people.map((person, i) =>
  // expression goes here:
<li key={'person_' + i}>{person}</li>);


// ReactDOM.render goes here:
ReactDOM.render(<ul>{peopleLis}</ul>, document.getElementById('app'));
*/