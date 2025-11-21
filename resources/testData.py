import random
import string

baseUrl = 'https://www.demoblaze.com/'

random_chars = ''.join(random.choices(string.ascii_lowercase + string.digits, k=6))

login  = f'testing1996_r2s1_{random_chars}'
password = 'qwerty123'


orderFormNameValue = 'John'
orderFormCountryValue = 'New Zeland'
orderFormCityValue = 'Wellington'
orderFormCreditCardValue = '5130290000000009'
orderFormMonthValue = 'November'
orderFormYearValue = '2025'