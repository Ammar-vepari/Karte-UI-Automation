Feature: Getting user 2

    Background: Set URl
        * url "https://reqres.in/api/"
    
    Scenario: get User with id 2
        Given path "users/2"
        When method GET
        Then status 200

    Scenario: Add a person
        Given path "users"
        And request
        """
            {
                "name": "Ammar",
                "job": "Manager"


            }   
        """
        When method POST
        Then status 201
        Then match response.name == "Ammar"        