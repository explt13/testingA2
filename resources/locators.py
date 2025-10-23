# Sign Up
signUpButton = '//*[@id="signin2"]'
signUpUsername = '//*[@id="sign-username"]'
signUpPassword = '//*[@id="sign-password"]'
signUpFormButton = '//*[@id="signInModal"]/div/div/div[3]/button[2]'



# Log in
logInButton = '//*[@id="login2"]'
loginUsernameField = '//*[@id="loginusername"]'
loginPasswordField = '//*[@id="loginpassword"]'
logInFormButton = '//*[@id="logInModal"]/div/div/div[3]/button[2]'


# Log out
logOutButton = '//*[@id="logout2"]'


# Cart
openProductPageButton = '//*[@id="tbodyid"]/div[3]/div/div/h4/a'
addToCartButton = '//*[@class="btn btn-success btn-lg"]'
removeFromCartButton = '//tbody[@id="tbodyid"]//a[text()="Delete"]'
removedElement = '//*[@id="tbodyid" and not (*)]'

cartButton = '//*[@id="cartur"]'
orderButton = '//*[@class="btn btn-success"]'
orderFormModal = '//*[@id="orderModal"]'

orderFormNameField = '//*[@id="name"]'
orderFormCountryField = '//*[@id="country"]'
orderFormCityField = '//*[@id="city"]'
orderFormCreditCardField = '//*[@id="card"]'
orderFormMonthField = '//*[@id="month"]'
orderFormYearField = '//*[@id="year"]'


orderFormNameValue = 'John'
orderFormCountryValue = 'New Zeland'
orderFormCityValue = 'Wellington'
orderFormCreditCardValue = '5130290000000009'
orderFormMonthValue = 'November'
orderFormYearValue = '2025'

purchaseButton = '//button[contains(text(), "Purchase")]'
purchaseSuccessButton = '//*[@class="sa-confirm-button-container"]/button'