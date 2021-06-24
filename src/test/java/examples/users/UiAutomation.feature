Feature:Google Search

Scenario:searching karate ui automation
    Given driver "https://www.google.com/"
    And waitFor("input[title='Search']")
    And input("input[title='Search']","Karate UI Automation")
    And waitFor(".FPdoLc input[value='Google Search']")
    When click(".FPdoLc input[value='Google Search']")
    Then waitFor("//h3[text()='Karate UI - Karate - Intuit']")



Scenario: Amazon automation
    * configure driver = {type:'chrome'}
    Given driver "https://www.amazon.in/"
    And driver.maximize();
    #And waitFor("{a}Mobiles")
    #* leftOf("{a}Mobiles").find('a').click()
    And waitFor("#twotabsearchtextbox")
    And input("#twotabsearchtextbox","Oppo A31")
    And waitFor("#nav-search-submit-button")
    And click("#nav-search-submit-button")
    And waitFor("#search > div.s-desktop-width-max.s-opposite-dir > div > div.s-matching-dir.sg-col-16-of-20.sg-col.sg-col-8-of-12.sg-col-12-of-16 > div > span:nth-child(4) > div.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-child(1) > div > span > div > div > div > div > div:nth-child(2) > div.sg-col.sg-col-4-of-12.sg-col-8-of-16.sg-col-12-of-20 > div > div:nth-child(1) > h2 > a")
    And click("#search > div.s-desktop-width-max.s-opposite-dir > div > div.s-matching-dir.sg-col-16-of-20.sg-col.sg-col-8-of-12.sg-col-12-of-16 > div > span:nth-child(4) > div.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-child(1) > div > span > div > div > div > div > div:nth-child(2) > div.sg-col.sg-col-4-of-12.sg-col-8-of-16.sg-col-12-of-20 > div > div:nth-child(1) > h2 > a")
    * delay(10000)



Scenario:Automating instagram
    * configure driver = {type:'chrome'}
    Given driver "https://www.instagram.com/"
    And driver.maximize();
    And waitFor("{a/span}Sign up")
    And click("{a/span}Sign up")
    And waitFor(".f0n8F input[name='emailOrPhone']")
    And input(".f0n8F input[name='emailOrPhone']","automatinginstagram@gmail.com")
    And waitFor(".f0n8F input[name='fullName']")
    And input(".f0n8F input[name='fullName']","Automation")
    And waitFor(".f0n8F input[name='username']")
    And input(".f0n8F input[name='username']","auto_Insta_456")
    And waitFor(".f0n8F input[name='password']")
    And input(".f0n8F input[name='password']","Ammar@12345")
    And waitFor("#react-root > section > main > div > div > div:nth-child(1) > div > form > div:nth-child(8) > div > button")
    And click("#react-root > section > main > div > div > div:nth-child(1) > div > form > div:nth-child(8) > div > button")
    And waitFor(".h144Z option[title='March']")
    And select("select[title='Month:']",'{^}March')
    And waitFor("select[title='Day:']")
    And select("select[title='Day:']",'{^}28')
    And waitFor("select[title='Year:']")
    And select("select[title='Year:']",'{^}2000')
    * screenshot()
    And waitFor("//button[text()='Next']")
    And click("//button[text()='Next']")
    * screenshot()
    * delay(3000)


@debug
Scenario:UI Automation Shoping cart
    * configure driver = {type:'chrome'}
    Given driver "http://automationpractice.com/index.php"
    And driver.maximize()
    And waitFor("//a[@title='T-shirts']")
    And click("//a[@title='T-shirts']")
    * delay(5000)
    * screenshot()
    And waitFor("//a[@title='Faded Short Sleeve T-shirts']")
    And scroll("//a[@title='Faded Short Sleeve T-shirts']").click()
    #And scroll("//a[@title='Faded Short Sleeve T-shirts']").mouse().move("//a[@title='Faded Short Sleeve T-shirts']").go()
    * screenshot()
    And waitFor("//button[@name='Submit']")
    And scroll("//button[@name='Submit']").click()
    * screenshot()
    And waitFor("//a[@title='Proceed to checkout']")
    And click("//a[@title='Proceed to checkout']")
    And waitFor(".cart_navigation a[title='Proceed to checkout']")
    And scroll(".cart_navigation a[title='Proceed to checkout']").click()
    * screenshot()
    And waitFor('#email')
    And input('#email',"rahulsharmaa044@gmail.com")
    And waitFor('#passwd')
    And input('#passwd',"Ammar@12345")
    And click('#SubmitLogin')
    * screenshot()
    And waitFor("button[name='processAddress']")
    And scroll("//button[@name='processAddress']").click()
    * screenshot()
    And waitFor("//input[@type='checkbox']").click()
    And waitFor("//button[@name='processCarrier']").click()
    * screenshot()
    And waitFor("//a[@title='Pay by bank wire']").click()
    And waitFor("{button/span}I confirm my order").click()
    * screenshot()
    And waitFor("//a[@title='Back to orders']").click()
    And waitFor("{a/span}Home")
    * screenshot()
    * delay(5000)
