*** Settings ***
Library    SeleniumLibrary
Resource  ../resources/resources.robot
Suite Setup    Open Browser And Maximize
Suite Teardown    Close Browser Custom


*** Test Cases ***
LOGIN_TEST
    Sign Up
    Log in

LOGOUT_TEST
    Log out

BUY_PRODUCT_TEST
    Add To Cart
    Open Cart Page
    Buy Product

REMOVE_FROM_CART_TEST
    Add To Cart
    Remove From Cart

