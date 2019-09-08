//
//  Practice.swift
//  Mathtivity
//
//  Created by Andrew Tran on 12/2/18.
//  Copyright © 2018 Andrew Tran. All rights reserved.
//

import Foundation
import UIKit

class Practice {
    var practiceTitle = ""
    var practiceQuestion = ""
    var practiceAnswer = ""
    
    init(practiceTitle: String, practiceQuestion: String, practiceAnswer: String) {
        self.practiceTitle = practiceTitle
        self.practiceQuestion = practiceQuestion
        self.practiceAnswer = practiceAnswer
    }
    
    static func fetchJavaPractice() -> [Practice] {
        return [
            Practice(practiceTitle: "Classes", practiceQuestion: "How would you declare a class named apples in an empty file?", practiceAnswer: "class apples { }"),
            Practice(practiceTitle: "Create a program", practiceQuestion: "What is the main method that the java compiler looks for?", practiceAnswer: "public static void main(String args[]) { }"),
            Practice(practiceTitle: "Lines of code", practiceQuestion: "What must you end every line of code with? (Hint: It is like the period of a sentence)", practiceAnswer: ";"),
            
            Practice(practiceTitle: "System print", practiceQuestion: "How do you print out the text \"Mathtivity\" in the logcat?", practiceAnswer: "System.out.println(\"Mathtivity\");"),
            Practice(practiceTitle: "Practice with variables", practiceQuestion: "How do you declar an int variable named \"mathtivity\" with the value of 2019?", practiceAnswer: "int mathtivity = 2019;"),
            Practice(practiceTitle: "Modulus", practiceQuestion: "What does the % operator do?", practiceAnswer: "Divides the two numbers and takes the remainder."),
            Practice(practiceTitle: "User input", practiceQuestion: "Which class in java is responsible for obtaining from users?", practiceAnswer: "Scanner"),
            Practice(practiceTitle: "More User Input", practiceQuestion: "How do you prompt the user for user input? (System.?????)", practiceAnswer: "System.in"),
            Practice(practiceTitle: "Equivalent expresisons", practiceQuestion: "Given int mathtivity = 1, what is another way for expressing mathtivity = mathtivity + 1", practiceAnswer: "mathtivity++"),
            Practice(practiceTitle: "Conditions", practiceQuestion: "How do you express the statement, \"if johnny is older than 10 AND if jake is younger than 12, print (\"it worked!\")\"?", practiceAnswer: "if(johnny > 10 && jake < 12) { System.out.println(\"it worked!\") }"),
            Practice(practiceTitle: "Conditions pt.2", practiceQuestion: "How do you express the statement, \"if johnny is older than 10 OR if jake is younger than 12, print (\"it worked!\")\"?", practiceAnswer: "if(johnny > 10 || jake < 12) { System.out.println(\"it worked!\") }"),
            Practice(practiceTitle: "Conditions pt.3", practiceQuestion: "What is the difference between \"else\" and \"else if\"?", practiceAnswer: "else accounts for all other conditions not listed and else if is equivalent to putting \"if\" twice."),
            Practice(practiceTitle: "Methods", practiceQuestion: "How do you declare a public method named mathtivity with no return type with a parameter of String name?", practiceAnswer: "public void mathtivity(String name) { }"),
            Practice(practiceTitle: "Basic for loops", practiceQuestion: "Create a for loop that prints out the numbers from 1 - 10.", practiceAnswer: "for(int num=1;number<=10;num++) { System.out.println(num) }"),
            Practice(practiceTitle: "Basic while loops", practiceQuestion: "Create a while loop that prints out numbers from 1 - 10 given an int mathtivity = 1.", practiceAnswer: "while(mathtivity<=10) { mathtivity++; (new line) System.out.println(mathtivity) }"),
            
            Practice(practiceTitle: "Inheritance", practiceQuestion: "Create a public class called mathtivity that inherits another class called java.", practiceAnswer: "public class tuna extends java"),
            Practice(practiceTitle: "Public and private variables", practiceQuestion: "What is the difference between a public and private variable?", practiceAnswer: "Public variables can be inherited and accessed everywhere, while privates cannot."),
            Practice(practiceTitle: "Accessing arrays index", practiceQuestion: "If I were to create an array called mathtivity with the values of [1,2,3,4,5,6,7,8,9,10], how do I access the value 3 by calling on the mathtivity array?", practiceAnswer: "mathtivity[2]")
        ]
    }
    static func fetchPythonPractice() -> [Practice] {
        return [
        Practice(practiceTitle: "Strings Practice", practiceQuestion: "Put the string \("This is an awesome program!") into a print function with double quotation marks. (make sure everything is case sensitive!)", practiceAnswer: "print(\("This is an awesome program!"))"),
        Practice(practiceTitle: "More Strings practice", practiceQuestion: "Which type of quotation mark would you use if you wanted to use the LEAST amount of data (double or single)?", practiceAnswer: "Single"),
        Practice(practiceTitle: "Int practice", practiceQuestion: "Show how to print 95 + 89 into the logcat (NOT 89 + 95).", practiceAnswer: "print(95 + 89))"),
        Practice(practiceTitle: "Practice with variables", practiceQuestion: "Declare a variable named \"HelloWorld\" and give it a value of 3", practiceAnswer: "HelloWorld = 3"),
        Practice(practiceTitle: "Working with while loops", practiceQuestion: "Show how you can print numbers from 1 to 10 using a while loop given a variable x = 0. Put answer in the form: while x < y :----, x += ?", practiceAnswer: "while x < 11 : print(x) x += 1}"),
        Practice(practiceTitle: "Working with for loops", practiceQuestion: "Show how you can print numbers from 1 to 10 using the word \"range\" in a for loop given a variable named \"number\" in the for loop.", practiceAnswer: "for number in range(1,11): (new line) print(number)"),
        Practice(practiceTitle: "If & else statement practice", practiceQuestion: "Given a variable x is equal to 0, create an if statement so that if a number x is less than 4, print \"This number is less than 4!,\" but if it is not less than 4, print \"This number is greater than 4!\"", practiceAnswer: "if x < 4: print(\"This number is less than 4!\" (new line) else: print(\"This number is greater than 4!\")"),
        Practice(practiceTitle: "Practice your function skills!", practiceQuestion: "Create a function called \"functionName\" and make it return the paramater value that is passed in give the paramater is called \"x\".", practiceAnswer: "def functionName(x): (new line) return x"),
        Practice(practiceTitle: "Work with user input!", practiceQuestion: "Create a user input statement called \"name\" and ask the user what their name is", practiceAnswer: "name = input(\"What is your name?: \")"),
        Practice(practiceTitle: "Dictionary practice", practiceQuestion: "Given a dictionary called \"companies\" with keys and values of \"company1\": \"Nike\", \"company2\": \"Adidas\", \"company3\": \"Under Armour\"], index the value of company2", practiceAnswer: "companies[\"company2\"]"),
        Practice(practiceTitle: "Lists Practice", practiceQuestion: "Giveb an array called \"companies\" with the values of ['nike', 'under armour', 'adidas', 'speedo'], index the speedo value.", practiceAnswer: "companies[3]")
        ]
    }
    static func fetchCPractice() -> [Practice] {
        return [
            Practice(practiceTitle: "If statements", practiceQuestion: "Identify the body of the if statement: if (boolean = true) { cout << \"The test is true!\"  << end1; }", practiceAnswer: "cout << \"The test is true!\"  << end1;"),
            Practice(practiceTitle: "Assignment operators", practiceQuestion: "How do you express \"is NOT equal to\"?", practiceAnswer: "!="),
            Practice(practiceTitle: "Functions", practiceQuestion: "How do you declare a a function with a nil return type named mathtivityFunction? Assume that there are no paramters to this function.", practiceAnswer: "void mathtivityFunction() { }"),
            Practice(practiceTitle: "System print", practiceQuestion: "How do you print out the text \"Mathtivity\" in the logcat?", practiceAnswer: "cout << \"Mathtivity\"  << end1;"),
            Practice(practiceTitle: "Functions with return & parameters", practiceQuestion: "Attempt to create a function with a paramater named integer that returns integer plus one. Assume that we are working with int and that the function will be called mathtivityFunction.", practiceAnswer: "int mathtivityFunction(int integer) { return integer + 1; }"),
            Practice(practiceTitle: "Equivalent expresisons", practiceQuestion: "Given int mathtivity = 1, what is another way for expressing mathtivity = mathtivity + 1", practiceAnswer: "mathtivity++"),
            Practice(practiceTitle: "Conditions", practiceQuestion: "Given int x = 12, how do you express the statement, \"if x is greater than 13, print (\"it worked!\")\"?", practiceAnswer: "if(x > 13) { cout << \"it worked!\" << end1;} "),
            
            Practice(practiceTitle: "Basic while loops", practiceQuestion: "Create a while loop that prints out numbers from 1 - 10 given an int mathtivity = 1.", practiceAnswer: "while(mathtivity<=10) { mathtivity++; (new line) cout << mathtivity << end1; }"),
            Practice(practiceTitle: "Basic for loops", practiceQuestion: "Create a for loop that prints out the numbers from 1 - 10.", practiceAnswer: "for(int num=1;number<=10;num++) { cout << num << end1; }"),
            Practice(practiceTitle: "Accessing arrays index", practiceQuestion: "Given an array called values with the values of [\"Andrew\", \"Math\", \"Name\", \"Mathtivity\", \"Johnny\"], how would I express \"if the first value in values is equal to the text \"Andrew,\" then print out \"the value is Andrew!\"", practiceAnswer: "if(values[0] == \"Andrew\") { cout << \"the value is Andrew!\" << end1; }")
        ]
    }
    static func fetchSwiftBPractice() -> [Practice] {
        return [
            
             Practice(practiceTitle: "If Statement Practice", practiceQuestion: "For a given variable \"money\" is equal to 100, write an if statement saying that if money is less than 50, print(\"Stop spending your money!\")", practiceAnswer: "if money < 50 {print(\"Stop spending your money!\")}"),
             Practice(practiceTitle: "Buttons", practiceQuestion: "What type of connection does a button have: an @IBOutlet or @IBAction?", practiceAnswer: "@IBAction because buttons do not change their text; they execute actions once clicked on."),
             Practice(practiceTitle: "Optionals Practice (!, ??)", practiceQuestion: "What is the purpose of the optional: !", practiceAnswer: "To force an object to unwrap a value of a certain type of class. For example, UIImage(named: \"Coding\") forces Swift to unwrap a UIImage even if the image \"Coding\" exists or not."),
             Practice(practiceTitle: "Identifying text", practiceQuestion: "Which UI element would you drag to your storyboard if you wanted to display text?", practiceAnswer: "Label"),
             Practice(practiceTitle: "Vars & Lets", practiceQuestion: "What is the differents between a var statement (var x = 12) and a let statement (let x = 12)?", practiceAnswer: "Var statements are subject to change while let statements cannot be changed."),
             Practice(practiceTitle: "Swift Files", practiceQuestion: "If one were to create a Swift File (not Cocoa Touch Class) to create a class called Model, what would they store inside of the file?", practiceAnswer: "Properties of the class model."),
             Practice(practiceTitle: "Expressions", practiceQuestion: "How would you express, \"if var error exists, print out error\"?", practiceAnswer: "if error != nil { print(error)}"),
             Practice(practiceTitle: "Unwrapping Optionals", practiceQuestion: "How do you unwrap the optional \"variable\" with a value x using an if statement?", practiceAnswer: "if let variable = x { ... }"),
             Practice(practiceTitle: "Some Objective-C", practiceQuestion: "What would you put in front of a func in order to make it an objective-c function?", practiceAnswer: "func turns into @objc func"),
             Practice(practiceTitle: "Import Libraries", practiceQuestion: "What would you write at the top of your program to import a library called UIKit?", practiceAnswer: "import UIKit"),
             Practice(practiceTitle: "Variable types", practiceQuestion: "How would you declare a variable called \"Mathtivity\" of type String?", practiceAnswer: "var mathtivity: String?"),
             Practice(practiceTitle: "Casting different classes", practiceQuestion: "If the dictionary \"values\" is currently string:int, how would you caste the \"values\" to type string to any?", practiceAnswer: "values as! [String:Any]"),
             Practice(practiceTitle: "Folders", practiceQuestion: "Commonly reffered to as \"packages\" in java, how would you call folders with different viewcontrollers and/or files in Xcode?", practiceAnswer: "Groups")
            
        ]
    }
    static func fetchHTMLPractice() -> [Practice] {
        return [
            Practice(practiceTitle: "Hyperlinks", practiceQuestion: "What attribute tells the webpage that the text is a hyperlink?", practiceAnswer: "href"),
            Practice(practiceTitle: "Bullet tags", practiceQuestion: "Which HTML tag will create a bulleted list?", practiceAnswer: "ul"),
            Practice(practiceTitle: "Title Tag", practiceQuestion: "Which HTML tag will create a title?", practiceAnswer: "<title>"),
            Practice(practiceTitle: "URLs", practiceQuestion: "What does http stand for?", practiceAnswer: "Hypertext transfer protocol"),
            Practice(practiceTitle: "HTML", practiceQuestion: "What does html stand for?", practiceAnswer: "Hypertext Markup Language"),
            Practice(practiceTitle: "CSS", practiceQuestion: "What does CSS stand for?",practiceAnswer: "Cascading Style Sheets"),
            Practice(practiceTitle: "Closing Tags", practiceQuestion: "What is the difference between an opening and closing tag?", practiceAnswer: "A closing tag has a / in front of it"),
            Practice(practiceTitle: "Identifying tags", practiceQuestion: "<title> is this an opening or closing tag?", practiceAnswer: "Opening."),
            Practice(practiceTitle: "Values", practiceQuestion: "What should values always be enclosed in?", practiceAnswer: "Quotation marks"),
            Practice(practiceTitle: "HREF", practiceQuestion: "If I had some text that said \"Click here\" and it led me to google.com, how would I express that in HTML?", practiceAnswer: "<a href=\"https://www.google.com\">Click here</a>"),
            Practice(practiceTitle: "More HREF", practiceQuestion: "If I had some text that said \"Here is the iOS website\" and it led me to iOSDeveloper.com, how would I express that in HTML?", practiceAnswer: "<a href=\"https://wwwiOSDeveloper.com\">Here is the iOS website</a>"),
            Practice(practiceTitle: "More HREF", practiceQuestion: "If I had some text that said \"Here is the iOS website\" and it led me to iOSDeveloper.com, how would I express that in HTML?", practiceAnswer: "<a href=\"https://wwwiOSDeveloper.com\">Here is the iOS website</a>"),
            Practice(practiceTitle: "Inspect", practiceQuestion: "If I was on a webpage and wanted to see the HTML behind it, what would I do?", practiceAnswer: "Right click -> Inspect Element"),
            Practice(practiceTitle: "Line Break Syntax", practiceQuestion: "What is correct XHTML for a line break?", practiceAnswer: "<br/>"),
            Practice(practiceTitle: "Comments", practiceQuestion: "If I wanted to write a comment (not outputted to the interface) in a CSS file, how would I do that?", practiceAnswer: "/* comment.... */"),
            Practice(practiceTitle: "Text sections", practiceQuestion: "Which section is used for text and tags that are shown directly on your web page?", practiceAnswer: "Body section"),
            Practice(practiceTitle: "Identifying Types", practiceQuestion: "jpg, png, and GIF are all types of...?", practiceAnswer: "Images"),
        ]
    }
    static func fetchGamePractice() -> [Practice] {
        return [
            Practice(practiceTitle: "N/A", practiceQuestion: "N/A", practiceAnswer: "N/A")
        ]
    }
    static func fetchAndroidPractice() -> [Practice] {
        return [
            Practice(practiceTitle: "Lines of code", practiceQuestion: "What must you end every line of code with? (Hint: It is like the period of a sentence)", practiceAnswer: ";"),
            Practice(practiceTitle: "Fragments", practiceQuestion: "What is the appropriate usage for a fragment and why would you use a fragment over an activity?", practiceAnswer: "A fragment is used in a flow of actions and it uses up less space than an activity."),
            Practice(practiceTitle: "Declaring UI components", practiceQuestion: "If a button had an XML id of \"email_sign_in_button,\" how would you connect the button to the Activity and assign it to a variable name mEmailSignInButton?", practiceAnswer: "Button mEmailSignInButton = (Button) findViewById(R.id.email_sign_in_button);"),
            Practice(practiceTitle: "Button Listeners", practiceQuestion: "How would you give the button \"mathButton\" the action of a function of \"attemptFunction();\"? (Hint: setOnClickListener)", practiceAnswer: "mathButton.setOnClickListener(new view.OnClickListener() { (new line)  @Override (new line)  public void onClick(View v) { (new line) attemptFunction() (new line) } (new line) });"),
            Practice(practiceTitle: "Main Function", practiceQuestion: "What is the main function that the compiler calls when it creates the Activity?", practiceAnswer: "onCreate()"),
            Practice(practiceTitle: "Sending data through activities", practiceQuestion: "Which class must you call on in order to send data from one activity to another?", practiceAnswer: "Intent"),
            Practice(practiceTitle: "Int and Integer", practiceQuestion: "What is the difference between int \"number\" and Integer \"number\"?", practiceAnswer: "Integer \"number\" is a class and therefore has functional properties to it."),
            Practice(practiceTitle: "Drawables", practiceQuestion: "How do you programatically call a drawable?", practiceAnswer: "R.drawable.<your drawable name>"),
            Practice(practiceTitle: "Error checking", practiceQuestion: "If I passed some arguements into another fragment and stored the arguements into a Bundle variable called \"bundle,\" how would I create an if statement to check there are values inside the bundle?", practiceAnswer: "if(bundle != null) {//items exist} else {//null bundle}"),
            Practice(practiceTitle: "User Interface", practiceQuestion: "Which language do you use to code the UI? (Hint: NOT JAVA)", practiceAnswer: "XML"),
            Practice(practiceTitle: "More on drawables", practiceQuestion: "Which package in the \"Android\" section are you supposed to store your drawables in?", practiceAnswer: "res/drawable"),
            Practice(practiceTitle: "Methods", practiceQuestion: "Create a private method named additionFunc that returns an int that has parameters of int \"one\" and int \"two\" and returns \"one\" + \"two\".", practiceAnswer: "private int additionFunc(int one, int two) { return one + two }"),
            Practice(practiceTitle: "Permissions", practiceQuestion: "If I wanted the user to be able to access the internet, which package would I have to write to in order to write the permission down?", practiceAnswer: "manifests -> AndroidManifest.xml"),
            Practice(practiceTitle: "Fragment pt.2", practiceQuestion: "What is the fragment equivalent of the Activity's onCreate() function?", practiceAnswer: "onCreateView()"),
            Practice(practiceTitle: "Conditions", practiceQuestion: "How do you express the statement, \"if johnny is older than 10 AND if jake is younger than 12, print (\"it worked!\")\"?", practiceAnswer: "if(johnny > 10 && jake < 12) { System.out.println(\"it worked!\") }"),
            Practice(practiceTitle: "Conditions pt.2", practiceQuestion: "How do you express the statement, \"if johnny is older than 10 OR if jake is younger than 12, print (\"it worked!\")\"?", practiceAnswer: "if(johnny > 10 || jake < 12) { System.out.println(\"it worked!\") }"),
            Practice(practiceTitle: "Conditions pt.3", practiceQuestion: "What is the difference between \"else\" and \"else if\"?", practiceAnswer: "else accounts for all other conditions not listed and else if is equivalent to putting \"if\" twice."),
            Practice(practiceTitle: "Public and private variables", practiceQuestion: "What is the difference between a public and private variable?", practiceAnswer: "Public variables can be inherited and accessed everywhere, while privates cannot."),
            Practice(practiceTitle: "Accessing arrays index", practiceQuestion: "If I were to create an array called mathtivity with the values of [1,2,3,4,5,6,7,8,9,10], how do I access the value 3 by calling on the mathtivity array?", practiceAnswer: "mathtivity[2]")
        ]
    }
    static func fetchDLPractice() -> [Practice] {
        return [
            Practice(practiceTitle: "Best Practice", practiceQuestion: "Which is a better tool for predicting the class of an observed data point, Linear or Logistic Regression?", practiceAnswer: "Logistic Regression"),
            Practice(practiceTitle: "Placeholders", practiceQuestion: "What should you do before a variable assignment in TensorFlow?", practiceAnswer: "Put a placeholder"),
            Practice(practiceTitle: "TensorFlow basics", practiceQuestion: "What is TensorFlow?", practiceAnswer: "TensorFlow is an open source software library made by Google"),
            Practice(practiceTitle: "DL Coding", practiceQuestion: "Which programming languages are commonly used in TensorFlow Deep Learning?", practiceAnswer: "Python & C++ (Python is used more commonlu)"),
            Practice(practiceTitle: "Data flow graphs", practiceQuestion: "What are the two main computation units of a data flow graph?", practiceAnswer: "Node (mathematical operator), Edge (multidimensional array/tensor)"),
            Practice(practiceTitle: "Tensors", practiceQuestion: "What is a tensor used for today?", practiceAnswer: "A multidimensional array"),
            Practice(practiceTitle: "Sequences", practiceQuestion: "When is a data set said to be sequential? Give an example of sequential data set.", practiceAnswer: "When data points in a data graph are dependent on other data points; Time series"),
            Practice(practiceTitle: "Language Models", practiceQuestion: "What is language modeling? (Hint: This is ____ data set.)", practiceAnswer: "The process of assinging probabilities to sequences of words."),
            Practice(practiceTitle: "Supervised/Unsupervised Learning 1", practiceQuestion: "Say I was training a model to recognize photos. If I trained this model by feeding the model with a bunch of other photos, what type of learning is this model doing?", practiceAnswer: "Supervised learning"),
            Practice(practiceTitle: "Supervised/Unsupervised Learning 2", practiceQuestion: "If I were playing poker with another person and the model that was playing against me wanted to find out which cards I had, which type of learning must the model do?", practiceAnswer: "Unsupervised Learning"),
            Practice(practiceTitle: "Supervised/Unsupervised Learning 3", practiceQuestion: "If I trained a model to recognize a drug by showing it a bunch of drugs, what type of learning is the model doing?", practiceAnswer: "Supervised Learning"),
        ]
    }
    static func fetchMLPractice() -> [Practice] {
        return [
            Practice(practiceTitle: "Start with the basics", practiceQuestion: "What is the definition of Machine Learning?", practiceAnswer: "An algorithm thant can learn form data without relying on standard programming practices."),
            Practice(practiceTitle: "Regression", practiceQuestion: "What is regression, and what does regression do?", practiceAnswer: "It is used to predict trends in models"),
            Practice(practiceTitle: "Clustering", practiceQuestion: "What are the three types of clustering models that you learneed in this course?", practiceAnswer: "K-means clustering, heirarchical clustering, density based clustering"),
            Practice(practiceTitle: "Supervised/Unsupervised Learning 1", practiceQuestion: "If my machine were looking at an image and was trying to process it, would that be unsupervised or supervised learning?", practiceAnswer: "Unsupervised learning"),
            Practice(practiceTitle: "Supervised/Unsupervised Learning 2", practiceQuestion: "If I were playing poker with another person and the model that was playing against me wanted to find out which cards I had, which type of learning must the model do?", practiceAnswer: "Unsupervised Learning"),
            Practice(practiceTitle: "Supervised/Unsupervised Learning 3", practiceQuestion: "If I trained a model to recognize a drug by showing it a bunch of drugs, what type of learning is the model doing?", practiceAnswer: "Supervised Learning"),
            Practice(practiceTitle: "Evaluating Models", practiceQuestion: "What are the three regression evaluation metrics? (Hint: They all start with \"mean\")", practiceAnswer: "Mean Absolute Error, Mean Squared Error, and Root Mean Square Error"),
        ]
    }
    static func fetchNLPPractice() -> [Practice] {
        return [
            Practice(practiceTitle: "Coming Soon!", practiceQuestion: "Practice for Natural Language Processing is currenetly unavailable. An update will come soon!", practiceAnswer: "N/A")
        ]
    }
    static func fetchAMC12Practice() -> [Practice] {
        return [
            Practice(practiceTitle: "Exponent Arithmetic", practiceQuestion: "If (3^96) - (3^93) can be expressed as (a)(3^k), what is a+ k?", practiceAnswer: "119"),
            Practice(practiceTitle: "Visualize the Problem", practiceQuestion: "A small circle is drawn inside of a larger circle to create a doughnut shape. If a chord of length 2 is drawn tangent to the smaller circle, what is the area of the doughnut?", practiceAnswer: "Pi; 3.1415926..."),
            Practice(practiceTitle: "More Exponent Practice", practiceQuestion: "If the value of 3x-y=12, then what is the value of (8^x) divided by (2^y)?", practiceAnswer: "2^12"),
            Practice(practiceTitle: "2018 AMC 10 Problem", practiceQuestion: "Right triangle ABC has leg lengths AB=20 and BC=21. Including AB and BC, how many line segments with integer length can be drawn from vertex B to a point on hypotenuse AC? (Problem via artofproblemsolving 2018 AMC 10 A Problems)", practiceAnswer: "13"),
            Practice(practiceTitle: "Imaginary Numbers", practiceQuestion: "It is given that a, b, and c are integers. Furthermore, (a+ bi)^3 - 107i = c. What is the value of b?", practiceAnswer: "1"),
            Practice(practiceTitle: "Potential Trig Problem", practiceQuestion: "Given that sin(x) + cos(x) = 1/5 and that 0 ≤ x ≤ π, find tan(x)", practiceAnswer: "(-4/3) or (3/4)"),
            Practice(practiceTitle: "Can you Find the Length?", practiceQuestion: "A rhombus has an area of 50 cm and an internal angle of size 63 degrees. Find the length of its sides.", practiceAnswer: "√(50/sin(63))"),
            Practice(practiceTitle: "Sequences", practiceQuestion: "Given a geometric sequence of n, n+2, n+6, solve for n.", practiceAnswer: "2"),
            Practice(practiceTitle: "Weird Numbers", practiceQuestion: "When a nymber is multipled by 100, it is equal to its reciprocal. What is the number?", practiceAnswer: "1/10"),
            Practice(practiceTitle: "Geometry Practice", practiceQuestion: "If a circle of area 4π is inscribed in an equilateral triangle with 3 points of the triangle tangent to the circle, what is the area of the triangle?", practiceAnswer: "12√3"),
            Practice(practiceTitle: "Circles", practiceQuestion: "A circle crosses the points (3,5) and (2,8) and has a diameter of √10. What is the equation of this circle?", practiceAnswer: "(x-2.5)^2 - (y-6.5)^2 = 2.5"),
            Practice(practiceTitle: "Think outside the box Riddle", practiceQuestion: "I have two coins that amount to 15 cents. One of them is not a nickle. What are coins?", practiceAnswer: "A dime and nickle. ONE of them isn't a nickle but the other is!"),
            Practice(practiceTitle: "Easier way to do things", practiceQuestion: "What is the positive difference of the squares of 546,231,336 and 546,231,335?", practiceAnswer: "1,092,462,671"),
            Practice(practiceTitle: "Infinite Exponents", practiceQuestion: "If x^x^x^x^x... = 2, what is the value of x?", practiceAnswer: "√2, via MindYourDecisions https://www.youtube.com/watch?v=JrOG1tKAatg"),
            Practice(practiceTitle: "Draw It Out!", practiceQuestion: "If Jack picks a number from 0-1, and Timmy picks a nuymber from 0-1, what is the probability that 10 times Jack's number plus 2 times Timmy's number is greater than 1?", practiceAnswer: "97.5%"),
            Practice(practiceTitle: "Recognizing Patterns", practiceQuestion: "Sequence A is defined as 2,4,6,8,10..., What is the remained when the 19831th term is divided by 4?", practiceAnswer: "2"),
            Practice(practiceTitle: "Imaginary Numbers", practiceQuestion: "It is given that a, b, and c are integers. Furthermore, (a+ bi)^3 - 107i = c. What is the value of b?", practiceAnswer: "1"),
            Practice(practiceTitle: "Complex Arithmetic", practiceQuestion: "If complex number z1 = (2i + 7) and complex number z2 = (5i - 8), what is z1 + z2?", practiceAnswer: "7i - 1"),
            Practice(practiceTitle: "Complpex Multiplication", practiceQuestion: "If complex number z1 = (10i + 4) and complex number z2 = (-6i + 2), what is z1 * z2?", practiceAnswer: "-4i + 68"),
            Practice(practiceTitle: "Finding roots", practiceQuestion: "What are the roots of the expression (x^2) + 16", practiceAnswer: "4i")
            
        ]
    }
    static func fetchAMC10Practice() -> [Practice] {
        return [
            Practice(practiceTitle: "Exponent Arithmetic", practiceQuestion: "If (3^96) - (3^93) can be expressed as (a)(3^k), what is a+ k?", practiceAnswer: "119"),
            Practice(practiceTitle: "Visualize the Problem", practiceQuestion: "A small circle is drawn inside of a larger circle to create a doughnut shape. If a chord of length 2 is drawn tangent to the smaller circle, what is the area of the doughnut?", practiceAnswer: "Pi; 3.1415926..."),
            Practice(practiceTitle: "More Exponent Practice", practiceQuestion: "If the value of 3x-y=12, then what is the value of (8^x) divided by (2^y)?", practiceAnswer: "2^12"),
            Practice(practiceTitle: "2018 AMC 10 Problem", practiceQuestion: "Right triangle ABC has leg lengths AB=20 and BC=21. Including AB and BC, how many line segments with integer length can be drawn from vertex B to a point on hypotenuse AC? (Problem via artofproblemsolving 2018 AMC 10 A Problems)", practiceAnswer: "13"),
            Practice(practiceTitle: "Imaginary Numbers", practiceQuestion: "It is given that a, b, and c are integers. Furthermore, (a+ bi)^3 - 107i = c. What is the value of b?", practiceAnswer: "1"),
            Practice(practiceTitle: "Potential Trig Problem", practiceQuestion: "Given that sin(x) + cos(x) = 1/5 and that 0 ≤ x ≤ π, find tan(x)", practiceAnswer: "(-4/3) or (3/4)"),
            Practice(practiceTitle: "Can you Find the Length?", practiceQuestion: "A rhombus has an area of 50 cm and an internal angle of size 63 degrees. Find the length of its sides.", practiceAnswer: "√(50/sin(63))"),
            Practice(practiceTitle: "Sequences", practiceQuestion: "Given a geometric sequence of n, n+2, n+6, solve for n.", practiceAnswer: "2"),
            Practice(practiceTitle: "Weird Numbers", practiceQuestion: "When a nymber is multipled by 100, it is equal to its reciprocal. What is the number?", practiceAnswer: "1/10"),
            Practice(practiceTitle: "Geometry Practice", practiceQuestion: "If a circle of area 4π is inscribed in an equilateral triangle with 3 points of the triangle tangent to the circle, what is the area of the triangle?", practiceAnswer: "12√3"),
            Practice(practiceTitle: "Circles", practiceQuestion: "A circle crosses the points (3,5) and (2,8) and has a diameter of √10. What is the equation of this circle?", practiceAnswer: "(x-2.5)^2 - (y-6.5)^2 = 2.5"),
            Practice(practiceTitle: "Think outside the box Riddle", practiceQuestion: "I have two coins that amount to 15 cents. One of them is not a nickle. What are coins?", practiceAnswer: "A dime and nickle. ONE of them isn't a nickle but the other is!"),
            Practice(practiceTitle: "Easier way to do things", practiceQuestion: "What is the positive difference of the squares of 546,231,336 and 546,231,335?", practiceAnswer: "1,092,462,671"),
            Practice(practiceTitle: "Infinite Exponents", practiceQuestion: "If x^x^x^x^x... = 2, what is the value of x?", practiceAnswer: "√2, via MindYourDecisions https://www.youtube.com/watch?v=JrOG1tKAatg"),
            Practice(practiceTitle: "Draw It Out!", practiceQuestion: "If Jack picks a number from 0-1, and Timmy picks a nuymber from 0-1, what is the probability that 10 times Jack's number plus 2 times Timmy's number is greater than 1?", practiceAnswer: "97.5%"),
            Practice(practiceTitle: "Recognizing Patterns", practiceQuestion: "Sequence A is defined as 2,4,6,8,10..., What is the remained when the 19831th term is divided by 4?", practiceAnswer: "2"),
            Practice(practiceTitle: "Imaginary Numbers", practiceQuestion: "It is given that a, b, and c are integers. Furthermore, (a+ bi)^3 - 107i = c. What is the value of b?", practiceAnswer: "1"),
            Practice(practiceTitle: "Complex Arithmetic", practiceQuestion: "If complex number z1 = (2i + 7) and complex number z2 = (5i - 8), what is z1 + z2?", practiceAnswer: "7i - 1"),
            Practice(practiceTitle: "Complpex Multiplication", practiceQuestion: "If complex number z1 = (10i + 4) and complex number z2 = (-6i + 2), what is z1 * z2?", practiceAnswer: "-4i + 68"),
            Practice(practiceTitle: "Finding roots", practiceQuestion: "What are the roots of the expression (x^2) + 16", practiceAnswer: "4i")
        ]
    }
    static func fetchMathStrategiesPractice() -> [Practice] {
        return [
            Practice(practiceTitle: "Draw It Out!", practiceQuestion: "If Jack picks a number from 0-1, and Timmy picks a nuymber from 0-1, what is the probability that 10 times Jack's number plus 2 times Timmy's number is greater than 1?", practiceAnswer: "97.5%"),
            Practice(practiceTitle: "Store in \"e\"!", practiceQuestion: "Given that (e^x)^2 = (e)^2x, what is the product of the values of e^x in the equation (e^4x) - 5(e^2x) + 6?", practiceAnswer: "√6"),
            Practice(practiceTitle: "Simplify the numbers", practiceQuestion: "What does (3^x) multiplied by (27^2x) equal? - (3^5x), (3^6x), (3^7x), (3^8x)", practiceAnswer: "(3^7x)"),
            Practice(practiceTitle: "Do Something!!", practiceQuestion: "A right triangle ABC has an inscribed circle that touches a point on each side of the triangle. If AB = 6, and the circle has an area of 4π, what is the area of the triangle?", practiceAnswer: "24"),
            Practice(practiceTitle: "Engage in Successful Flailing!", practiceQuestion: "If a and b are integers between 1-50 such that (a^2) - (b^2) = 100, what is the greatest possible value of a?", practiceAnswer: "26"),
            Practice(practiceTitle: "Avoid Hard Work w/ Patterns", practiceQuestion: "Sequence A is defined as 2,4,6,8,10..., What is the remained when the 19831th term is divided by 4?", practiceAnswer: "2"),
            Practice(practiceTitle: "More on Patterns", practiceQuestion: "What is the value of (1-2+3-4+5...-1000)?", practiceAnswer: "-500"),
            Practice(practiceTitle: "Second Guess the author", practiceQuestion: "What is the value of (20+12)^2 - (20-12)^2 given that 12 times 20 is 240?", practiceAnswer: "960, didn't the 12 & 20 look strange?"),
            Practice(practiceTitle: "Persist!!", practiceQuestion: "If a # b = (a^2)(7-b), what is the value of (2 # 5) # 3?", practiceAnswer: "256"),
            Practice(practiceTitle: "Answer Elimination", practiceQuestion: "Which answer choice would you eliminate: a) 200, b) 300, c) 53, d) 40, e) 70?", practiceAnswer: "C, because it is the only non factor of 10. BUT BE CAREFUL!!"),
            Practice(practiceTitle: "Can you solve this?", practiceQuestion: "In a right triangle, dropping an altitude to the hypotenuse divides into two segments of length 2, and 3 respectively. What is the area of the triangle? (Problem via John Hopkins Ex Numera math sample problems)", practiceAnswer: "(5√6) / 2"),
            Practice(practiceTitle: "You decide which strategy to use...", practiceQuestion: "What is the value of x+y given the equation ((5^x * 5^y) / 5) = (125 / (5^x * 5^y * 5))?", practiceAnswer: "3/2 or 1.5")
        ]
    }
    static func fetchSATPractice() -> [Practice] {
        return [
            Practice(practiceTitle: "Knowing Quadratic Equations", practiceQuestion: "For a polynomial f(x) = (x^2) - bx - 18, f(9) is equal to 0. What is the value of b?", practiceAnswer: "-7"),
            Practice(practiceTitle: "SOE substitution", practiceQuestion: "Solve for x and y in the systems of equations with the equations of x+5y=30 and 2y+5x=58.", practiceAnswer: "x=10, y=4"),
            Practice(practiceTitle: "SOE elimination", practiceQuestion: "Solve for x and y in the systems of equations with the equations of 4x+5y=32 and 4x+4y=20.", practiceAnswer: "x=-7; y=12"),
            Practice(practiceTitle: "Linear Word Problem", practiceQuestion: "Jack pays D dollars for his entire cell phone bill every month. Jack's monthly bill only goes up when he makes a call for M minutes. Anything else he uses his phone for is free. Jack's monthly bill can be represented as D=50.99+23.99M. What does the 23.99 represent?", practiceAnswer: "The amount of money it costs per minute on a phone call."),
            Practice(practiceTitle: "Guessing Trick", practiceQuestion: "When given 5 answer choices of a) 1/3, b) 3, c) 30, d) √3, e) 509, which answer choice should you pick?", practiceAnswer: "B, because every other answer choice is a variation of the number 3. 509 can be ruled out automatically."),
            Practice(practiceTitle: "Non Linear Word Problem", practiceQuestion: "Terry is a Quarterback and is working on his throwing skills. Terry's throws can be modeled with a certain formula. The distance from the ground Terry throws the football can be modeled in the equation h = -3(x^2)+10x. What is the maximum height from the ground the football will reach?", practiceAnswer: "8 & 1/3"),
            Practice(practiceTitle: "Exponent Manipulation", practiceQuestion: "If (3^x) times (81^2x) times (9^4x) timees (729^.5x) is equal to 3, what is the value of x?", practiceAnswer: "1/20 or .05"),
            Practice(practiceTitle: "Circles No.1", practiceQuestion: "Given the equation(x^2) + 4x + 4 +(y^2) = 32, what is the center of this circle?", practiceAnswer: "(-2,0); Couldn't solve it? Try adding 4 on both sides."),
            Practice(practiceTitle: "Circles No.2", practiceQuestion: "Given the equation(x^2) + 4x + 4 +(y^2) = 32, what is the radius of this circle?", practiceAnswer: "r = 6; Couldn't solve it? Try adding 4 on both sides."),
            Practice(practiceTitle: "Interpreting Word Problems", practiceQuestion: "Joseph is at a fancy restaurant. Joseph is in luck, because the meal is 40% off the original price, P. However, Joseph still has to pay a 6% tax on the new price and a 10% tip on the new price. Which expression models the total cost in terms of P? Put your answer in SIMPLEST DECIMAL form.", practiceAnswer: "Total = .696P"),
            Practice(practiceTitle: "Units", practiceQuestion: "1,000mm = 1m, and 1,000m = 1km. Jerry is hosting a 5km run this year in the park. However, Jerry only has a mm tape measure. How many mm does he have to measure in order to reach 5km?", practiceAnswer: "5,000,000mm"),
            Practice(practiceTitle: "Quadratic Equations", practiceQuestion: "How many real solutions exist in the equation (x^2) + x + 1 = 0?", practiceAnswer: "No Solutions"),
            Practice(practiceTitle: "1 Info, 2 Problems (Pt.1) ", practiceQuestion: "Athletic performance decreases linearly for a distance runner. The formula L = 1,500 + 13X shows the relationship between the amount of lactic acid in the body, L, and the amount of minutes, X, a runner has ran. Find the number of minutes a runner has ran in terms of the amount of lactic acid they have.", practiceAnswer: "X = (L-1500) / 13"),
            Practice(practiceTitle: "1 Info, 2 Problems (Pt.2)", practiceQuestion: "Athletic performance decreases linearly for a distance runner. The formula L = 1,500 + 13X shows the relationship between the amount of lactic acid in the body, L, and the amount of minutes, X, a runner has ran. How many minutes did the runner run if there is if there is 1877 lactic acid in the runner's body?", practiceAnswer: "29 minutes"),
            Practice(practiceTitle: "Trig without knowing Trig", practiceQuestion: "Given that sin(53) = .8, find sin(37). (HINT: .8 = 4/5; SOH CAH TOA)", practiceAnswer: "3/5"),
            Practice(practiceTitle: "Trig (Pt.2)", practiceQuestion: "What is the value of cos(x) if (cos(x))^2 + 2cos(x) + 1 = 0? (HINT: Make cos(x) = y)", practiceAnswer: "cos(x) = -1; Contact Support for more info on this problem."),
            Practice(practiceTitle: "SOE Word Problem", practiceQuestion: "A certain CA tech store's most profitable items are TV's and Computers. Yesterday, the store made $1225.00 off of 9 TV's and 5 computers. The day before that, they sold 5 TV's and 12 Computers and made $810.00. How much would they make if they only sold 2 TV's and 2 computers?", practiceAnswer: "$330"),
            Practice(practiceTitle: "Answer Elimination", practiceQuestion: "Which answer choice would you eliminate: a) 200, b) 300, c) 53, d) 40, e) 70?", practiceAnswer: "C, because it is the only non factor of 10. BUT BE CAREFUL!!"),
            Practice(practiceTitle: "Recognizing Patterns", practiceQuestion: "Find the pattern given the first 10 terms of the sequence 0, 2, 6, 12, 20, 30, 42, 56, 72, 90.", practiceAnswer: "n(n-1)"),
            Practice(practiceTitle: "Inequality Word Problem", practiceQuestion: "A certain elevator can hold up to 10,000 lbs. If a construction worker that weighs 250 lbs walks into the elevator carrying x boxes of tools (each weighing the 23 lbs), what is the maximum amount of boxes he can bring in?", practiceAnswer: "423 boxes (He can't bring in 0.9 of a box!)"),
            Practice(practiceTitle: "Implied Truths", practiceQuestion: "If 0,0 is a solution in the inequalities of y > f + x & y ≤ h - x, what must be true about h and f?", practiceAnswer: "h > f"),
            Practice(practiceTitle: "Exponent Arithmetic", practiceQuestion: "If (3^96) - (3^93) can be expressed as (a)(3^k), what is a+ k?", practiceAnswer: "119"),
            Practice(practiceTitle: "More Exponent Practice", practiceQuestion: "If the value of 3x-y=12, then what is the value of (8^x) divided by (2^y)?", practiceAnswer: "2^12"),
            Practice(practiceTitle: "Imaginary Numbers", practiceQuestion: "It is given that a, b, and c are integers. Furthermore, (a+ bi)^3 - 107i = c. What is the value of b?", practiceAnswer: "1"),
            Practice(practiceTitle: "Complex Arithmetic", practiceQuestion: "If complex number z1 = (2i + 7) and complex number z2 = (5i - 8), what is z1 + z2?", practiceAnswer: "7i - 1"),
            Practice(practiceTitle: "Complpex Multiplication", practiceQuestion: "If complex number z1 = (10i + 4) and complex number z2 = (-6i + 2), what is z1 * z2?", practiceAnswer: "-4i + 68"),
            
        ]
    }
    static func fetchWeirdPractice() -> [Practice] {
        return [
          Practice(practiceTitle: "N/A", practiceQuestion: "N/A", practiceAnswer: "N/A")
        ]
    }
    static func fetchHistoryPractice() -> [Practice] {
        return [
            Practice(practiceTitle: "N/A", practiceQuestion: "N/A", practiceAnswer: "N/A")
        ]
    }
    static func fetchRRPractice() -> [Practice] {
        return [
            Practice(practiceTitle: "Course???", practiceQuestion: "What is this course about?", practiceAnswer: "Reusable Rockets"),
            Practice(practiceTitle: "Early History", practiceQuestion: "Why was Buran cancelled?", practiceAnswer: "Buran was cancelled becaused the Soviet Union had collapsed."),
            Practice(practiceTitle: "Naming Rockets", practiceQuestion: "What country is the Proton Rocket from?", practiceAnswer: "Russia"),
            Practice(practiceTitle: "Fuel Type", practiceQuestion: "What type of fuel does the Delta IV rocket use? (Not including the oxidizer)", practiceAnswer: "Hydrogen"),
            Practice(practiceTitle: "Janus Shuttle", practiceQuestion: "What unique aspect of the Janus Shuttle made it different?", practiceAnswer: "There are two Janus Shuttles!"),
            Practice(practiceTitle: "SpaceX Falcon 9", practiceQuestion: "How many ignition sources does SpaceX's falcon 9 have?", practiceAnswer: "4"),
            Practice(practiceTitle: "Mars & SpaceX", practiceQuestion: "How many people does SpaceX want to land on Mars?", practiceAnswer: "1,000,000"),
            Practice(practiceTitle: "Engine Ignition", practiceQuestion: "What causes the green flash of light before SpaceX's engine ignition?", practiceAnswer: "A combination of Triethylborane and Triethylaluminum. Aka TEA-TEB"),
            Practice(practiceTitle: "More on Rockets", practiceQuestion: "Which rocket is powered by the Raptor engine?", practiceAnswer: "the Super Heavy Rocket or BFR"),
            Practice(practiceTitle: "SpaceX's Reusability", practiceQuestion: "How much time does SpaceX want between each rocket launch?", practiceAnswer: "24 hours"),
            Practice(practiceTitle: "Janus Orbiter", practiceQuestion: "Why wasn't the Janus Orbiter vehicle able to fly?", practiceAnswer: "The systems were to complex and were not \"real\""),
            Practice(practiceTitle: "Liquid rocket engines", practiceQuestion: "What are the two parts of a liquid rocket engine in a modern rocket?", practiceAnswer: "The fuel and oxidizer"),
            Practice(practiceTitle: "Engine requirements", practiceQuestion: "What are the four main components/requirements for SpaceX reusable engines?", practiceAnswer: "1. Powerful, 2. Reliable, 3. Efficient, 4. At least 4 ignitions"),
            Practice(practiceTitle: "Standard fuel", practiceQuestion: "What is the common fuel and common oxidizer in liquid rocket engines?", practiceAnswer: "Kerosene and liquid oxygen")
        ]
    }
    static func fetchProofPractice() -> [Practice] {
        return [
            Practice(practiceTitle: "N/A", practiceQuestion: "N/A", practiceAnswer: "N/A")
        ]
    }
    static func fetchImaginaryPractice() -> [Practice] {
        return [
            Practice(practiceTitle: "Imaginary Numbers", practiceQuestion: "It is given that a, b, and c are integers. Furthermore, (a+ bi)^3 - 107i = c. What is the value of b?", practiceAnswer: "1"),
            Practice(practiceTitle: "Complex Arithmetic", practiceQuestion: "If complex number z1 = (2i + 7) and complex number z2 = (5i - 8), what is z1 + z2?", practiceAnswer: "7i - 1"),
            Practice(practiceTitle: "Complpex Multiplication", practiceQuestion: "If complex number z1 = (10i + 4) and complex number z2 = (-6i + 2), what is z1 * z2?", practiceAnswer: "-4i + 68"),
            Practice(practiceTitle: "Finding roots", practiceQuestion: "What are the roots of the expression (x^2) + 16", practiceAnswer: "4i"),
            Practice(practiceTitle: "Definition of \"i\"", practiceQuestion: "What is the formal definition of an imaginary number in terms of 1?", practiceAnswer: "√-1"),
            Practice(practiceTitle: "Right Triangles", practiceQuestion: "Given a right triangle with the sides of (i+2) and (i+3), what is the hypotenuse of this triangle?", practiceAnswer: "√(10i + 11)"),
            Practice(practiceTitle: "Squares", practiceQuestion: "What is the area of a square that has a side length of (3i + 4)", practiceAnswer: "24i + 7"),
            Practice(practiceTitle: "Simplest Form", practiceQuestion: "If the fraction (81i + 8) / (5i -4) were put in its simplest form, what would the denominator be?", practiceAnswer: "-41"),
            Practice(practiceTitle: "Division", practiceQuestion: "What is 10i + 2 divided by (1 / (10i + 2))?", practiceAnswer: "-96 + 40i"),
            Practice(practiceTitle: "Sketching out imaginary numbers", practiceQuestion: "What would the imaginary part of the complex number be if the angle was 45 degrees and the real part was 4?", practiceAnswer: "4i"),
            Practice(practiceTitle: "More Sketching out imaginary numbers", practiceQuestion: "What would the imaginary part of the complex number be if the angle was 60 degrees and the real part was 12?", practiceAnswer: "12i√3"),
            Practice(practiceTitle: "More Sketching out imaginary numbers", practiceQuestion: "What would the imaginary part of the complex number be if the angle was 30 degrees and the real part was 2√3?", practiceAnswer: "2i"),
            Practice(practiceTitle: "Imaginary Polynomials", practiceQuestion: "If one root of the polynomial (x^3 - 5x^2 + x - 5) is i, what are the other 2 roots?", practiceAnswer: "-i, 5"),
            Practice(practiceTitle: "i raised to a power", practiceQuestion: "What is the value of i raised to the power of 2019?", practiceAnswer: "-i"),
            Practice(practiceTitle: "i Division", practiceQuestion: "What is (i^50 - i^49) divided by (i^49 - i^48)?", practiceAnswer: "i"),
            
            Practice(practiceTitle: "Random Operations", practiceQuestion: "If the operation x # y = 3x + 2y, what is the value of 2 # (5i # 3i)?", practiceAnswer: "6 + 42i")
            
            
        ]
    }
    static func fetchCryptographyPractice() -> [Practice] {
        return [
            Practice(practiceTitle: "What is Cryptography?", practiceQuestion: "What are the 2 core parts to Cryptography?", practiceAnswer: "Secure Key Establishment & Secure Communication"),
            Practice(practiceTitle: "Discrete Probability", practiceQuestion: "What does Point Distribution do as opposed to Uniform Distribution?", practiceAnswer: "Uniform Distribution sets the probabilirt UNIFORM across all points; point does the opposite."),
            Practice(practiceTitle: "Cryptography Basics", practiceQuestion: "Is the Encyption Algorithm public or private?", practiceAnswer: "Public"),
            Practice(practiceTitle: "Cipher", practiceQuestion: "What two algorithms does a Cipher consist of?", practiceAnswer: "Encryption & Decryption algorithms"),
            Practice(practiceTitle: "PRG Unpredictability", practiceQuestion: "Why must a Stream Cipher be unpredictable?", practiceAnswer: "If a hacker intercepted a cipher text, then the hacker will know the initial point of the message and will know the prefix of the psuedo random sequence."),
            Practice(practiceTitle: "RC4 Stream Cipher", practiceQuestion: "What is the first thing that the RC4 Stream Cipher does with its seed key size?", practiceAnswer: "It expands it and uses the expanded size for the internal state of the generator."),
            Practice(practiceTitle: "Semantic Security", practiceQuestion: "What happens if a Cipher is completely Semantically Secure?", practiceAnswer: "No bit of information is revealed to an adversary."),
            Practice(practiceTitle: "Block Cipher Attacks", practiceQuestion: "What does a fault attack do in a block cipher?", practiceAnswer: "It causes the processor to malfunction and output different results."),
            Practice(practiceTitle: "Block Cipher examples", practiceQuestion: "Name two examples of Block Ciphers.", practiceAnswer: "AES and 3DES (and more)"),
            Practice(practiceTitle: "AES", practiceQuestion: "What are the standard bit sizes that AES comes in?", practiceAnswer: "128, 192, and 256 bits"),
            Practice(practiceTitle: "Many Time Key", practiceQuestion: "Why should we not use the same key more than once?", practiceAnswer: "The adversary will see many cipher texts with the same key if the adversary encrypts it."),
            Practice(practiceTitle: "CBC", practiceQuestion: "What does CBC stand for?", practiceAnswer: "Cipher Block Chaining"),
            Practice(practiceTitle: "CTR & CBC", practiceQuestion: "What is the main difference between CBC and Random CTR mode?", practiceAnswer: "A CTR uses a secure PRF"),
            Practice(practiceTitle: "MAC", practiceQuestion: "What are the two algorithms that a MAC consist of?", practiceAnswer: "A signing and verification algorithm"),
            Practice(practiceTitle: "PMAC and CBC", practiceQuestion: "Why would a PMC PRF be more efficent than a CBC PRF?", practiceAnswer: "A PMAC can converts PRFs in a parallel way, which makes a multiprocessor system more efficient."),
            Practice(practiceTitle: "Verification TIming Attacks", practiceQuestion: "Which language is the Keyzcar Crypto Library written in?", practiceAnswer: "Python"),
            Practice(practiceTitle: "Authenticated Encryption", practiceQuestion: "What makes the decryption algorithm in authenticated encryption different?", practiceAnswer: "The decryption algorithm can reject a cyphertext and declare it as invalid."),
            Practice(practiceTitle: "Lesson to Learn", practiceQuestion: "Why shouldn't one explain why decryption fails?", practiceAnswer: "If the attacker learns why the decryption has failed, it will often lead to an attack. Simply output \"bottom\""),
            Practice(practiceTitle: "Deterministic Encryption", practiceQuestion: "What is a negative of Deterministic Encryption?", practiceAnswer: "\"Deterministic Encryption cannot be secured against a general plaintext attack\""),
            Practice(practiceTitle: "Protection from attacks", practiceQuestion: "Which protocol, that is easy to use, can protect you from man in the middle attacks?", practiceAnswer: "Diffie Hellman Protocol"),
            Practice(practiceTitle: "Diffie Hellman", practiceQuestion: "What is the goal of a Diffie Hellman Protocol?", practiceAnswer: "The goal is to allow two people (Ex. Alice and Bob) to share a secret key without the use of a trusted third party."),
            Practice(practiceTitle: "Fermat & Euler", practiceQuestion: "Did Fermat or Euler make a more efficient theorem regarding primes?", practiceAnswer: "Euler"),
            Practice(practiceTitle: "Inversion Algorithms", practiceQuestion: "What is the general inversion algorithm given a linear equation of (ax) + b = 0?", practiceAnswer: "x = -b(a^-1)"),
            Practice(practiceTitle: "Trapdoor Functions", practiceQuestion: "Which three algorithms are Trapdoor Functions made of?", practiceAnswer: "Key Generation Algorithm, The function itself, inverse of the function"),
            Practice(practiceTitle: "RSA Encryption", practiceQuestion: "How are keys encrypted in an RSA sytste? (Hint: Step 1) msg key is given as an input)", practiceAnswer: "First a msg key is given as an input, then the msg key is expanded to its full modulo size, then the RSA function is applied, then the key is turned into ciphertext"),
            Practice(practiceTitle: "RSA speed", practiceQuestion: "What is the recommended value for the RSA encryption exponent \"e\"", practiceAnswer: "65537, (2^16) + 1"),
            Practice(practiceTitle: "One way Functions", practiceQuestion: "What are two examples of functions that are NOT one way?", practiceAnswer: "f(x) = x; f(x) = 0"),
            Practice(practiceTitle: "More on One Way Functions", practiceQuestion: "Given the information in video 65, are one way functions easy or difficult to compute given some inputs?", practiceAnswer: "Easy, because there is an efficient algorithm to compute f(x).")
        ]
    }
    static func fetchAlgorithmPractice() -> [Practice] {
        return [
            
            Practice(practiceTitle: "First and Foremost", practiceQuestion: "To recieve comprehensive practice, visit https://algs4.cs.princeton.edu", practiceAnswer: "N/A"),
            Practice(practiceTitle: "Basics", practiceQuestion: "What is the difference between an algorithm and a data structure?", practiceAnswer: "An algorithm is a method to solve a problem, a data structure is a method to store info."),
            Practice(practiceTitle: "Algorithm Applications", practiceQuestion: "Which algorithm, that is famous to computers, can solve mazes?", practiceAnswer: "The Tremaux Maze Algorithm"),
            Practice(practiceTitle: "Depth First Search", practiceQuestion: "The Depth First Search algorithm solves the shortest path problem. What is the shortest path problem?", practiceAnswer: "It is the shortest path from point a to b that uses the least number of edges"),
            Practice(practiceTitle: "Bipartite Graphs", practiceQuestion: "In the 7th lecture, Sedgewick talks about a Bipartite Graph. What makes a graph bipartite?", practiceAnswer: "If the verticies of the graph can be divided into two subsets, with the property that every edge connects every vertex of one subset to another"),
            Practice(practiceTitle: "Digraphs", practiceQuestion: "What does Sidgewick say a Digraph is. Furthermore, what is a Digraph short for?", practiceAnswer: "A Digraph, or Directed Graph, is a set of vertices that are connected pairwise by directed edges. (44 secs into video 8)")
        ]
    }
}












 
