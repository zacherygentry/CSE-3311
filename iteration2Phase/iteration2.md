#  edU: Iteration 2

# Use Cases: Main Success Scenarios and Extensions

* Use drawing pad
  * Main Success Scenario
    1. The user is prompted to draw an letter, number or shape for validation.
    2. The User draws the image on the drawing pad
  	 3. The User submits the drawing.
    4. The System takes a screenshot
    5. The System validates the image.
    6. The System displays a message:
       * Correct!
       * Incorrect! Try Again!
       * Congrats!
  * Extension
    1. User draws a incoherent image or draws nothing when submiting an image.
       * The System will display the "incorrect! Try Again!" message
       * The System will start back at step a.
       
* Update lesson list
  * Main Success Scenario
    1. The Team will add problems to a lesson
    2. The Team will add the audio to the lesson
    3. The team will submit the new lesson
  * Extension
    1. The Team adds an unwanted lesson
    2. The team adds audio not corresponding to the problem
    
* Audio
  * Main Success Scenario
    1. The User pushes a Lesson and is prompted to listen to the presented audio.
    2. The System plays the audio.
    3. The user listen to the presented audio.
  * Extension
    1. The User misses the Audio
       * The System will do nothing but the User will push the replay audio icon

* View lesson history
  * Main Success Scenario
    1. The User will push the View History button.
    2. The System will display the User lesson plan history.

* Difficulty level
  * Main Success Scenario
    1. The User will choose a difficulty level.
    2. The System will display the lessons according to difficulty.
    
# Emphasis on New Risk
  
* Risk: The team will be changing there platform from React Native to Native IOS. 
* Reason: React Native was becoming very difficult to manipulate. The system would crash with minor changes causing the team to have to delete the old cache just to have the app compile succesfully.  More time was spent getting the app to compile then actual coding, which significantly slowed down productivity and increased team 5's Risk Exposer of Risk 4 (Short duration to develop the full vision of the app).
* Risk Exposure: RE = 100% * 12hr = 12hr
* Solution: The team will split up the work among the members, fully commiting to a few aspects of the previous iteration, to increase the success of transferal.
    
# Exciting Features and Implementation

* Update lesson list
  * Description: User will have the option to view the updated master lesson list and 
choose which lesson set they would like to start/resume from there. The new lessons would be added from our backend, users would not be able to create their own lesson set to be added to the master one. 
  * Implementation start: 3

* View lesson history
  * Description: Users will be able to see their past complete lessons, each past 
lesson slot with display date of when the user ended and time it took to complete the lesson. 
  * Implementation start: 3

* Audio
  * Description: User will be able to hear, in each lesson, letters, shapes and words to be able to draw what he or she is just heard. 
  * Implementation start: 3

* Drawing pad
  * Description: User will be able to draw on the app what they heard in each lesson.
  * Implementation start: 1

* Shape recognition
  * Description: Application will be able to recognize shapes after user submits their drawing. 
  * Implementation start: ?

* Letter recognition
  * Description: Application will be able to recognize letters after user submits their drawing.
  * Implementation start: 1

* Number recognition
  * Description: Application will be able to recognize letters after user submits their drawing.
  * Implementation start: 1

* Difficulty levels
  * Description: User in each lesson set will be able to select which level, beginner, intermediate, or hard they would like to learn. Each user has the option to start off whatever they feel they would like to start on. The app doesn’t limit options for users based on grade level. 
  * Implementation start: 3

# Competitors and How edU Differs

* PocketPhonics
* Is a learning app, that encourages the child to explore the alphabet by tracing the image of the letter. They also have an option of choosing the letter after hearing the corresponding audio.
* Scribble Cards
* Scribble Cards is similar to PocketPhonics, but also incorporates numbers, as well as, the alphabet. Scribble Cards, on the other hand, does not include an audio learning feature.
* Trace It, Try It
* Is a handwriting app that teaches children to trace over pre-drawn alphabets, numbers (0-20), and simple three letter words.

How edU differs

* Reason 1: edU combines a greater range of exercises: numbers, letters, simple spelling, shapes and math. 
Which eliminates the need to download multiple apps and frees up space on the Users phone.

* Reason 2: edU uses Amazon Rekognition API to apply text and image recognition, eliminating the need for tracing over a preshown object. This allows creativity and the chance to execute their own unique writing styles.

* Reason 3: edU will allow the developer to upgrade lessons and increase the contents of the database. Unlike the other competitors, edU evolves over time, incorporating new and exciting features.

* Reason 4: edU ranges in terms of difficulty levels. Other competitors have a smaller age range, whereas, edU ages range from 2 and up.

# The Six Top Risk

* Risk 1:    Each team member are beginners in App Development.
  * Risk Exposure: RE = 90% * 10hr = 9hr
  * Solution: The team will engage in intensive training and research to gain knowledge in app development. This will be implemented immediately prior to coding.

* Risk 2:    Making the app visually appealing to a younger audience.
  * Risk Exposure: RE = 90% * 9hr = 8.1hr
  * Solution: Since the app is geared towards a younger audience, the team will use fun, bright colors and images to keep the student captivated and engaged. This will be implemented after the major requirements have been implemented.

* Risk 3:    The team is is switching platforms to Native IOS because React Native is unpredictable and crashes easily.
  * Risk Exposure: RE = 100% * 12hr = 12hr
  * Solution: The team will split up the work among the members to increase the success of transferal.
  
* Risk 4:    Short duration to develop the full vision of the app.
  * Risk Exposure: RE = 60% * 5hr = 3hr
  * Solution: The team will remove as many requirements as possible while still maintaining the integrity of the app. This will be implemented in iteration 3.

* Risk 5:    A few team members have busy schedules, making frequent meetings difficult.
  * Risk Exposure: 60% * 3hr = 1.8hr
  * Solution: The team will each write down their schedule to have a clear view of when every member is free to accurately schedule a meeting. The will be implemented immediately. 

* Risk 6:    The team will be using Xcode which is for Mac user only. One member of the team doesn’t own a MAC computer.
  * Risk Exposure: 25% * 6hr = 1.5hr
  * Solution: The team will allow that member to work alongside them, as well as, complete the design work and documentation.


# Planned Input and Outputs

* Input 1: Choosing a Lesson Plan (User)

Output: The screen displays Start New Lesson, Resume Lesson and View Lesson History buttons.

* Input 2: Pressing the View History button (User)

Output: The screen displays the progress of the student with the date and time of completion.

* Input 3: Pressing a Lesson Level (Beginner, Intermediate, Hard)  (User)

Output: The app will display the corresponding card set based on the level chosen.

* Input 4: Pressing the Start Lesson button (User)

Output: The app will display the Back and Listen buttons and start a new lesson.

* Input 5: Pressing the Resume Lesson button (User)

Output: The screen will display the Back and Listen buttons and continue the previous lesson.

* Input 6: Pressing the Update Lesson button (Developing Team)

Output: The team will be able to add new Lessons the the Lessons Plans list, allowing the user to see the new lessons when they enter the app or refresh the page. 

* Input 7: Pressing the Listen button (User)

Output: The app will play the audio and the screen will display the drawing pad as well as the Back and Submit button.

* Input 8: Pressing the Back button (User)

Output: If pressed before the Listen Button, the screen displays Start New Lesson, Resume Lesson and View Lesson History buttons
else, The app will display the Back and Listen buttons, allowing the User to replay the audio.

* Input 9: Drawing in the answer (User)

Output: the app will wait for the user to press the Submit Button

* Input 10: Pressing the Submit button (User)

Output: If the answer is correct but it is not the end of the lesson, the screen will display ”Correct”,  and return to the screen that will display the Back and Listen buttons to receive a new assignment.

If the answer is incorrect but it is not the end of the lesson, the screen will display ”Incorrect”,  and return to the screen that will display the Back and Listen buttons to retry the assignment.

If the answer is correct and is the end of the lesson, the screen will display ”Correct”, and then a congratulation message.

# Each Implemented Feature's Screenshot after Iteration 2

* Drawing pad



* Save Drawing for Submission



* Audio



* Letter/Number Recognition



# Code Screenshot



# Compiling app and Running

1. 

# Addressing Questions from the Review Team

* Question 1: I know login was stated to not be included but is there any type of way users to keep track of user data when first using the app? For example, what if user breaks phone and gets a replacement, would they have to start over?



* Question 2: It is stated that the user will hear the lesson plan to know what’s the goal, will the screen have a button to press to show it visually on screen in text in case user has phone speaker problems?



* Question 3: It seems the application relies heavily on network connectivity. What happen if user loses the connection while using the app. Will they be able to continue working on the drawing and save their progress data on local devices (caching)?



* Question 4: If you guys are deploying the app on app store/google play, how will the cost of the API will be handled ? Because after certain time amazon's free tier ends, and amazon charges money for the usage of AWS.


