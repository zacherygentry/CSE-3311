#  Iteration 1: edU

# Exciting Features and Implementation

* Update lesson list
 	* Description: User will have the option to view the updated master lesson list and 
choose which lesson set they would like to start/resume from there. The new lessons would be added from our backend, users would not be able to create their own lesson set to be added to the master one. 
 	* Implementation start: After iteration 3

* View lesson history
 	* Description: Users will be able to see their past complete lessons, each past 
lesson slot with display date of when the user ended and time it took to complete the lesson. 
 	* Implementation start: In iteration 3 

* Audio
	 * Description: User will be able to hear, in each lesson, letters, shapes and words to be able to draw what he or she is just heard. 
 	* Implementation start: In iteration 1

* Drawing pad
 	* Description: User will be able to draw on the app what they heard in each lesson.
 	* Implementation start: In iteration 1

* Shape recognition
	 * Description: Application will be able to recognize shapes after user submits their drawing. 
	 * Implementation start: In iteration 2
    
* Letter recognition
 	* Description: Application will be able to recognize letters after user submits their drawing.
 	* Implementation start: In iteration ?

* Number recognition
 	* Description: Application will be able to recognize letters after user submits their drawing.
 	* Implementation start: In iteration ?

* Difficulty levels
 	* Description: User in each lesson set will be able to select which level, easy, medium, or hard they would like to learn. Each user has the option to start off whatever they feel they would like to start on. The app doesn’t limit options for users based on grade level. 
 	* Implementation start: In iteration 3

# Compititors and How edU differs

* PocketPhonics
  	* Is a learning app, that encourages the child to explore the alphabet by tracing the image of the letter. They also have an option of choosing the letter after hearing the corresponding audio.
* Scribble Cards
	* Scribble Cards is similar to PocketPhonics, but also incorporates numbers, as well as, the alphabet. Scribble Cards, on the other hand, does not include an audio learning feature.
* Trace It, Try It
	* Is a handwriting app that teaches children to trace over pre-drawn alphabets, numbers (0-20), and simple three letter words.
  
How edU differs

* Reason 1: edU combines a greater range of exercises: numbers, letters, simple spelling, shapes and math. 
Which eliminates the need to download multiple apps and frees up space on the Users phone.

* Reason 2: edU uses Tesseract to apply text and image recognition, eliminating the need for tracing over a preshown object. This allows creativity and the chance to execute their own unique writing styles.

* Reason 3: edU will allow the developer to upgrade lessons and increase the contents of the database. Unlike the other competitors, edU evolves over time, incorporating new and exciting features.

* Reason 4: edU ranges in terms of difficulty levels. Other competitors have a smaller age range, whereas, edU ages range from 2 and up.

# The Five Top Risk

* Risk 1:    Each team member are beginners in App Development.
  * Risk Exposure: RE = 90% * 10hr = 9hr
  * Solution: The team will engage in intensive training and research to gain knowledge in app development. This will be implemented immediately prior to coding.

* Risk 2:    Making the app visually appealing to a younger audience.
  * Risk Exposure: RE = 90% * 9hr = 8.1hr
  * Solution: Since the app is geared towards a younger audience, the team will use fun, bright colors and images to keep the student captivated and engaged. This will be implemented after the major requirements have been implemented.

* Risk 3:    The team is not sure how openCVL and Tesseract will behave cross-platforms.
  * Risk Exposure: RE = 70% * 8hr = 5.6hr
  * Solution: The team will test the following software on both platforms to gauge it’s cross-platforming ability. This will be implemented simultaneously to Risk 1.

* Risk 4:    Short duration to develop the full vision of the app.
  * Risk Exposure: RE = 60% * 5hr = 3hr
  * Solution: The team will remove as many requirements as possible while still maintaining the integrity of the app. This will be implemented in iteration 3.

* Risk 5:    A few team members have busy schedules, making frequent meetings difficult.
  * Risk Exposure: 60% * 3hr = 1.8hr
  * Solution: The team will each write down their schedule to have a clear view of when every member is free to accurately schedule a meeting. The will be implemented immediately. 

# Input and Outputs

* Input 1: Choosing a Lesson Plan (User)
  
  Output: The screen displays Start New Lesson, Resume Lesson and View Lesson History buttons.

* Input 2: Pressing the View History button (User)
  
  Output: The screen displays the progress of the student with the date and time of completion.

* Input 3: Pressing the Start Lesson button (User)
  
  Output: The app will display the Back and Listen buttons and start a new lesson.

* Input 4: Pressing the Resume Lesson button (User)
  
  Output: The screen will display the Back and Listen buttons and continue the previous lesson.

* Input 5: Pressing the Update Lesson button (Developing Team)
  
  Output: The team will be able to add new Lessons the the Lessons Plans list, allowing the user to see the new lessons when they enter the app or refresh the page. 

* Input 6: Pressing the Listen button (User)
  
  Output: The app will play the audio and the screen will display the drawing pad as well as the Back and Submit button.

* Input 7: Pressing the Back button (User)
  
  Output: If pressed before the Listen Button, the screen displays Start New Lesson, Resume Lesson and View Lesson History buttons
    else, The app will display the Back and Listen buttons, allowing the User to replay the audio.

* Input 8: Drawing in the answer (User)
 
  Output: the app will wait for the user to press the Submit Button

* Input 9: Pressing the Submit button (User)
  
  Output: If the answer is correct but it is not the end of the lesson, the screen will display ”Correct”,  and return to the screen that will display the Back and Listen buttons to receive a new assignment.

 If the answer is incorrect but it is not the end of the lesson, the screen will display ”Incorrect”,  and return to the screen that will display the Back and Listen buttons to retry the assignment.

 If the answer is correct and is the end of the lesson, the screen will display ”Correct”, and then a congratulation message.

# Addressing Questions from the Review Team



