/// <reference types="cypress" />
import {
    Given,
    When,
    Then
} from 'cypress-cucumber-preprocessor/steps'

Given('sucessfully launch the to do web app', () => {

    cy.visit('https://todomvc.com/examples/angular2/')
})

When('enter the {string} list', (tasks) => {

    cy.get('.new-todo').type(tasks).type('{enter}')

})

When('the list of {string} should be visible', (tasks) => {

    cy.contains('.view', tasks).should('be.visible')

})