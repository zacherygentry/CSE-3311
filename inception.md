# edU

# Project Vision

We are creating a multi-platform mobile app which focuses on image recognition capabilities in an educational environment. Our app focuses both on text and drawn image recognition and being cross-platform for both iOS and Android. Our app's main feature is recognizing text and images from a drawn source. The app allows for users to go through exercises where they draw or write out a given word or shape and is then checked against our image recognition APIs to see if the user is correct.

# Top 3 Risks
* 1) Beginners to app development  
* 2) Short duration to develop the full vision of the application  
* 3) We want to use openCVL but we are not sure how well it will work cross-platforms

* How we will overcome each risk:
* 1) By having proper training through videos and lessons online
* 2) We can't do anything about the duration of the time we have but we can limit what our deliverable will be and limiting the features that makes it more realistic to finish 
* 3) By doing more research we can be more certain on how easy/hard it will be to implement on cross platform


# Competitors
* PocketPhonics
  	* Is a learning app, that encourages the child to explore the alphabet by tracing the image of the letter. They also have an option of choosing the letter after hearing the corresponding audio.
* Scribble Cards
	* Scribble Cards is similar to PocketPhonics, but also incorporates numbers, as well as, the alphabet. Scribble Cards, on the other hand, does not include an audio learning feature.
* Trace It, Try It
	* Is a handwriting app that teaches children to trace over pre-drawn alphabets, numbers (0-20), and simple three letter words. 

# Use Case and UI Layout

*Requirements 
1) 5 lesson plans  
	a) letters (a-z)  
	b) number (1-100)  
	c) shapes  
	d) words (school words)  
	e) math (add, subtract)  
2) SQLite database
3) Android and iOS
4) Produces audio
5) Capture screen images
6) Validates images for correctness

!['use case'](https://github.com/zacherygentry/CSE-3311/blob/master/edUUseCase.jpg "Use Case") 

!['ui layout'](https://github.com/zacherygentry/CSE-3311/blob/master/edU%20UI%20Layout.jpg?raw=true "UI Layout")


# Software Development Plan

## Iterations

### Iteration 1
* Testing tools (single word test)
	* able to draw images
	* audio works
	* successfully validate drawn words

### Iteration 2
* Create UI
* Setup database
	* populate database

### Iteration 3
* Create lessons based on data from database
* Test 5 lessons in app

### Iteration 4
* Final product
	* Future plans
* Polish application

## Tools
* React Native  
* Node.js
* SQLite
* openCVL

## People
Targets kids age 2+

## Education
* Beginners with app development  
* Upperclassmen software engineering students from UTA  
