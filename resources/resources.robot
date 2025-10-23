*** Settings ***
Library  SeleniumLibrary
Variables   ./locators.py
Variables   ./testData.py
*** Keywords ***


Sign Up
    wait until page contains element    ${signUpButton}    timeout=80      error=logInButtonNotFound
    sleep   1s
    click element   ${signUpButton}
    wait until page contains element     ${signUpUsername}    timeout=80      error=logInButtonNotFound
    sleep   1s
    Input Text    ${signUpUsername}    ${login}
    Sleep    2s
    Input Password    ${signUpPassword}    ${password}
    Sleep    2s
    Click Element    ${signUpFormButton}
    Sleep    3s
    Handle Alert    action=ACCEPT

Log in
    wait until page contains element    ${logInButton}    timeout=80     error=logInButtonNotFound
    sleep   1s
    click element   ${logInButton}
    wait until page contains element     ${loginUsernameField}    timeout=80      error=logInButtonNotFound
    sleep   1s
    input text      ${loginUsernameField}      ${login}
    Input Password    ${loginPasswordField}      ${password}
    Sleep    1s
    Click Element    ${logInFormButton}
    Sleep    4s



Log Out
    Wait Until Page Contains Element    ${logOutButton}    timeout=80    error=logOutButtonNotFound
    Click Element    ${logOutButton}
    Sleep    2s

# CART
Add To Cart 
    Wait Until Page Contains Element    ${openProductPageButton}    timeout=80     error=openProductPageButtonNotFound
    Sleep    1s
    Click Element    ${openProductPageButton}
    Sleep    2s
    Click Element    ${addToCartButton}
    Sleep    1s
    Handle Alert    action=ACCEPT

Remove From Cart
    Open Cart Page
    Wait Until Page Contains Element    ${removeFromCartButton}    timeout=80     error=removeButtonNotFound
    Click Element    ${removeFromCartButton}
    Sleep    1s
    Page Should Contain Element    ${removedElement}
    Sleep    2s

Open Cart Page
    Click Element    ${cartButton}
    Sleep    2s

Buy Product
    Wait Until Page Contains Element    ${orderButton}    timeout=80    error=orderButtonNotFound
    Click Element    ${orderButton}
    Sleep    2s
    Wait Until Page Contains Element    ${orderFormModal}    timeout=80    error=orderFormModalNotFound
    Sleep    1s
    Input Text    ${orderFormNameField}    ${orderFormNameValue}
    Input Text    ${orderFormCountryField}    ${orderFormCountryValue}
    Input Text    ${orderFormCityField}    ${orderFormCityValue}
    Input Text    ${orderFormCreditCardField}    ${orderFormCreditCardValue}
    Input Text    ${orderFormMonthField}    ${orderFormMonthValue}
    Input Text    ${orderFormYearField}    ${orderFormYearValue}

    Wait Until Element Is Visible    ${purchaseButton}    timeout=5s
    Click Element    ${purchaseButton}

    Wait Until Page Contains Element    ${purchaseSuccessButton}    timeout=80    error=purchaseFormIsNotValid
    Sleep    1s
    Click Element    ${purchaseSuccessButton}
    Sleep    2s

Open Browser And Maximize
    Open Browser    ${baseUrl}      Chrome
    Maximize Browser Window

Close Browser Custom
    Close All Browsers