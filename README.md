# cypressTest
cypress e2e test for to do web app

How to Start

1. Clone the project https://github.com/SuthanR/cypressTest.git
2. npm i - Install all the dependencies
3. Run "npx cypress open" in your directory to execute the tests in Test Runner 
4. Run "npx cypress run" to execute the tests in CLI headless | Run "npx cypress run --browser chrome" to execute in browser

Folder and config:

Conf.js: The files defines in integration folder will pick for execution based the cypress.json config.As I used cucumber BDD sytle, the config is define in plugin index.js

The folder(cucumberTest) in integration folder contains the feature files that will be executed as part of test and the step defination or .js files has the cypress commands to execute.
