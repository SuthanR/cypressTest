/// <reference types="cypress" />
import {
    Given,
    When,
    Then
} from 'cypress-cucumber-preprocessor/steps'

Given('sucessfully launch the to do web app', () => {

    cy.visit('https://todomvc.com/examples/angular2/')
})

When('create the {string} list', (tasks) => {

    cy.get('.new-todo').type(tasks).type('{enter}')

})

When('the list of {string} should be visible', (tasks) => {

    cy.contains('.view', tasks).should('be.visible')

})

When('update the task Star with Wars', () => {

    cy.contains('.view', 'Star').dblclick()
    cy.get('.edit').type('Wars');

})
When('check the tasks complete', () => {

    cy.contains('.todo-list li', 'Complete').find('.toggle').check()

})

When('the task should be displayed as completed', () => {

    cy.contains('.todo-list li', 'Complete').should('have.class', 'completed')
})

When('the deleted task should not be visible in list', () => {
    cy.get('.view').should('not.have.value', 'Delete')

})

When('delete the task', () => {
    cy.contains('.todo-list li', 'Delete').within(el => {
        cy.get(".destroy").click({
            force: true
        });
    })
})

When('check the unlisted task', () => {
    cy.contains('.todo-list li', 'NotAva').find('.toggle').check()
})