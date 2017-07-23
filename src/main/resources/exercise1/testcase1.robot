*** Settings ***
Documentation  A resource file containing the application specific keywords
Library		Selenium2Library
Resource    keywords.txt
Variables   variables.yaml

*** Test Cases ***
Check out joe colantonio dot com
    Given user opens a browser and goes to address "http://www.joecolantonio.com"

	Enter user id from variables file for invalid email id
	#Read user id from excel  "C:\Python34\test1.xls"
	Close browser


***Keywords***
Enter user id from variables file for invalid email id
  ${length}=  Get Length  ${id}
  :FOR  ${index}  IN RANGE  ${length}
  \  User types user id "@{id}[${index}]"
  \  and Input Text  id=ck_emailField  somia#gmail.com
  \  and Click Element  id=ck_subscribe_button
 # \  Verify invalid login message

#Verify invalid login message
 # ${msg}=  Get Alert Message
  #Log  ${msg}

