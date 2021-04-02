/// <reference types="cypress" />
import {
    Given,
    When,
    Then
} from 'cypress-cucumber-preprocessor/steps'

Given('sucessfully launch the to do web app', () => {

    cy.visit('https://todomvc.com/examples/angular2/')
})
