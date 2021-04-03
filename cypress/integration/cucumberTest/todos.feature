Feature: As a user of to do list web app, I want to add the tasks , update, complete and delete the list.

Background: Background name

        Given sucessfully launch the to do web app

Scenario Outline: Login the webapp and validate create tasks with different input

        When enter the '<tasks>' list
        Then the list of '<tasks>' should be visible
        
Examples:
            | tasks   |
            | Create  |
            | Edit    |
            | Complete| 
            | Delete  |
    