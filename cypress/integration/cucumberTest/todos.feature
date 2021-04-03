Feature: As a user of to do list web app, I want to test create, update, complete and delete functionality.

Background: Background name

        Given sucessfully launch the to do web app

Scenario Outline: Login the webapp to create the tasks with different inputs

        When create the '<tasks>' list
        Then the list of '<tasks>' should be visible
        
Examples:
            | tasks   |
            | Create  |
            | Edit    |
            | Complete| 
            | Delete  |

Scenario: Login the webapp then test postive scenarios create , update , complete & delete tasks.

        When create the 'Complete' list
        When create the 'Delete' list
        When create the 'Star' list
        And update the task Star with Wars
        And check the tasks complete
        Then the task should be displayed as completed 
        And delete the task
        Then the deleted task should not be visible in list
    
Scenario: Login the webapp then test negative scenarios as part of this webapp

        When create the 'Neg       TC1' list
        When create the '<p>Neg TC2</p>|' list
        When create the 'Neg&!#$%^&(TC3' list
        When create the '        ' list
        And check the unlisted task
        
Scenario: Login the webapp to test the negative scenario

        When create the 'NegTC6' list
        When create the 'NegTC7' list
        And delete all the list sametime