Feature: Orders Test feature


  @edi
  Scenario: Create Order with multiple products
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                   |	Phone	  |Price |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL-2	|2	     |All Steel Construction Dog Platemail (Set of 2) |	2167122996|	0.01 |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |''           |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGSWORD	|2	     |The Original Dog Sword                          |	2167122996|	2.01 |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    Then Navigates to the Edi find configurations like this page
  @edi
  Scenario: Create Order with multiple products
    Given Multiple orders with one product per order created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                   |	Phone	  |Price |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL-2	|2	     |All Steel Construction Dog Platemail (Set of 2) |	2167122996|	0.01 |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |''           |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGSWORD	|2	     |The Original Dog Sword                          |	2167122996|	2.01 |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |   |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified

# FAKEPROD-ART-C1624GG
  @edi
  Scenario: Create Order with Art product
    Given Multiple orders with one product per order created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	              |Quantity|	Description                                 |Phone	   |Price |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-ART-C1624GG  |2	   |All Steel Construction Dog Platemail (Set of 2) |2167122996|49.01 |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |   |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified

#  FAKEPROD-ART-SET
  @edi
  Scenario: Create Order with Art Set
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	              |Quantity|	Description                                 |Phone	   |Price |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-ART-SET      |2	   |All Steel Construction Dog Platemail (Set of 2) |2167122996|50.01 |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |   |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified

#  FAKEPROD-DOGMOR-SET
  @test
  Scenario: Create Order with product set
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	              |Quantity|	Description                                 |Phone	   |Price |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMOR-SET   |1	   |All Steel Construction Dog Platemail (Set of 2) |2167122996|99.01 |

#  FAKEPROD-DOGMAIL-M
  @test
  Scenario: Create Order with mirror product
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	              |Quantity|	Description                                 |Phone	   |Price |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL-M    |1	   |All Steel Construction Dog Platemail (Set of 2) |2167122996|99.01 |

#  FAKEPROD-DOGMOR-SET
#  FAKEPROD-ROCKET-SET
  @test
  Scenario: Create Order with multiple product sets
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	              |Quantity|	Description                                 |Phone	   |Price |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMOR-SET   |1	   |All Steel Construction Dog Platemail (Set of 2) |2167122996|99.01 |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-ROCKET-SET   |1	   |All Steel Construction Dog Platemail (Set of 2) |2167122996|99.01 |
