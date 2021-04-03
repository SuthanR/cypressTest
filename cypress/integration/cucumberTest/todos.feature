Feature: As a user of to do list web app, I want to add the tasks , update, complete and delete the list.

Background: Background name

        Given sucessfully launch the to do web app

Scenario Outline: Login the webapp and validate create tasks with different input

        When create the '<tasks>' list
        Then the list of '<tasks>' should be visible
        
Examples:
            | tasks   |
            | Create  |
            | Edit    |
            | Complete| 
            | Delete  |

Scenario: Login the webapp then create , update , complete & delete tasks.

        When create the 'Complete' list
        When create the 'Delete' list
        When create the 'Star' list
        And update the task Star with Wars
        And check the tasks complete
        Then the task should be displayed as completed 
        And delete the task
        Then the deleted task should not be visible in list
    