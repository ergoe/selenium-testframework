Feature: Orders Test feature



  Scenario: Create Order with multiple products
    Given Single Order with multiple products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                   |	Phone	  |Price |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL-2	|2	     |All Steel Construction Dog Platemail (Set of 2) |	2167122996|	0.01 |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |''           |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGSWORD	|2	     |The Original Dog Sword                          |	2167122996|	2.01 |

  @test
  Scenario: Create Order with multiple products
    Given Multiple orders with one product per order created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                   |	Phone	  |Price |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL-2	|2	     |All Steel Construction Dog Platemail (Set of 2) |	2167122996|	0.01 |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |''           |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGSWORD	|2	     |The Original Dog Sword                          |	2167122996|	2.01 |