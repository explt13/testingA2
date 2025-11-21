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
    Sleep    0.5s
    Input Password    ${signUpPassword}    ${password}
    Sleep    0.5s
    Click Element    ${signUpFormButton}
    Sleep    2s
    Handle Alert    action=ACCEPT
    Sleep    1s

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
    Sleep    2s



Log Out
    Wait Until Page Contains Element    ${logOutButton}    timeout=80    error=logOutButtonNotFound
    Sleep    5s
    Click Element    ${logOutButton}
    Sleep    2s

# CART
Add To Cart 
    Wait Until Page Contains Element    ${openProductPageButton}    timeout=80     error=openProductPageButtonNotFound
    Sleep    1s
    Click Element    ${openProductPageButton}
    Sleep    2s
    Click Element    ${addToCartButton}
    Sleep    2s
    Handle Alert    action=ACCEPT
    Sleep    1s

Remove From Cart
    Open Cart Page
    Wait Until Page Contains Element    ${removeFromCartButton}    timeout=80     error=removeButtonNotFound
    Sleep    1s
    Click Element    ${removeFromCartButton}
    Sleep    2s
    Page Should Contain Element    ${removedElement}
    Sleep    2s

Open Cart Page
    Wait Until Page Contains Element    ${cartButton}    timeout=80    error=openCartPageButtonNotFound
    Sleep    1s
    Click Element    ${cartButton}
    Sleep    2s

Buy Product
    Wait Until Page Contains Element    ${orderButton}    timeout=80    error=orderButtonNotFound
    Click Element    ${orderButton}
    Sleep    2s
    Wait Until Page Contains Element    ${orderFormModal}    timeout=80    error=orderFormModalNotFound
    Sleep    1s
    Input Text    ${orderFormNameField}    ${orderFormNameValue}
    Sleep    0.25s
    Input Text    ${orderFormCountryField}    ${orderFormCountryValue}
    Sleep    0.25s
    Input Text    ${orderFormCityField}    ${orderFormCityValue}
    Sleep    0.25s
    Input Text    ${orderFormCreditCardField}    ${orderFormCreditCardValue}
    Sleep    0.25s
    Input Text    ${orderFormMonthField}    ${orderFormMonthValue}
    Sleep    0.25s
    Input Text    ${orderFormYearField}    ${orderFormYearValue}
    Sleep    0.25s
    
    Wait Until Element Is Visible    ${purchaseButton}    timeout=5s
    Sleep    1s
    Click Element    ${purchaseButton}

    Wait Until Page Contains Element    ${purchaseSuccessButton}    timeout=80    error=purchaseFormIsNotValid
    Sleep    1s
    Click Element    ${purchaseSuccessButton}
    Sleep    2s

Open Browser And Maximize
    ${caps}=    Evaluate    {}
    Create WebDriver    Remote    command_executor=http://localhost:4444/wd/hub    desired_capabilities=${caps}
    Go To    ${baseUrl}
    Maximize Browser Window

Close Browser Custom
    Close All Browsers