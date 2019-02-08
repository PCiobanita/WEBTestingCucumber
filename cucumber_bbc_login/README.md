# WEBTestingCucumber
## Description
In this project I automated the steps to automate a user going on BBC website and input different usernames and passowrds that results in different errors that the bbc supports such as: password not matching email, passowrd beeing to short, email not beeing recognized and so on. I have written scenarios using Gherkin syntax and ysed cucumber to run scripts. This project was done using POM(page object model) so that the project is easily scalble if simulation on other pages are wanted.

## Languages Used
1. Ruby
2. Cucumber
3. Gherkin Syntax

# How to download
1. In you terminal change directory to where you would like to save the project to
2. Follow the link ```https://github.com/PCiobanita/WEBTestingCucumber``` click on clone or download
3. in console type git clone and paste the url ```https://github.com/PCiobanita/WEBTestingCucumber.git```


# How to use
1. In terminal whilist in the directory where the project is located type ```bundle install``` to install all gem dependencies
2. For this project to work you will need chrome browser installed aswell as chromdriver
* you can download chrome from ```https://www.google.com/chrome/```
* you can download chrome driver from ```https://chromedriver.storage.googleapis.com/index.html?path=73.0.3683.20/``` chose the operating system that you use on your machine
* In terminal if you type cucumber you will see the automation that satisfy the scenarios in ```bbc_login.feature```

##Challanges
* At first understanding the interaction between ```.feature``` file and ```env.rb``` was a bit hard to understand.

#Learning points
1. Writting specifiction in gherking syntax
2. Using cucumber to write scripts that will automatically run website features