Feature: Orders Test feature

#  SD-56
  @edi @edi3
  Scenario: 855 Validate 855 Drop ship standard with 1 product fulfilled out of TGOH
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                   |	Phone	  |Price   |PartnerLineItemID|
      |<placeholder>  |           |Keyser	    |Soze	    |11810 W Lake Rd  | 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL	|1	     |All Steel Construction Dog Platemail            |	2167122996|	100.11 |1        |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    TODO: Add automated checks for now check output manually

#  SD-57
  @edi @edi3
  Scenario: 855 Validate 855 Drop ship with 1 mirror product fulfilled out of TGOH
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                   |	Phone	  |Price   |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL-M	|1	     |All Steel Construction Dog Platemail (Mirror)   |	2167122996|	151.11 |1      |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    TODO: Add automated checks for now check output manually

#  SD-58
  @edi @edi3
  Scenario: 855 Validate 855 Drop ship with 1 product that is a kit fulfilled out of TGOH
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                      |	Phone	  |Price  |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-ROCKET-SET	|1	     |Set Of Self-Propelled Flight Tools For Winning WW2 |	2167122996|	42.11 |1     |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    TODO: Add automated checks for now check output manually

#  SD-59
  @edi @edi3
  Scenario: 855 Validate 855 Drop ship standard with 1 product quantity 10 fulfilled out of TGOH
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                   |	Phone	  |Price   |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL	|10	     |All Steel Construction Dog Platemail            |	2167122996|	100.11 |1       |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    TODO: Add automated checks for now check output manually

# SD-60
  @edi
  Scenario: 855 Validate 855 Drop ship with 5 mirror products fulfilled out of TGOH
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                   |	Phone	  |Price   |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL-M	|5	     |All Steel Construction Dog Platemail (Mirror)   |	2167122996|	151.11 |1      |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    TODO: Add automated checks for now check output manually

  #  SD-61
  @edi
  Scenario: 855 Validate 855 Drop ship with 6 kit products fulfilled out of TGOH
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                      |	Phone	  |Price  |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-ROCKET-SET	|6	     |Set Of Self-Propelled Flight Tools For Winning WW2 |	2167122996|	42.11 |1     |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    TODO: Add automated checks for now check output manually

#  SD-190
  @edi @edi2
  Scenario: 855 Validate 855 Drop ship standard with 1 product fulfilled out of RENO
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                   |	Phone	  |Price   |PartnerLineItemID|
      |<placeholder>  |           |Keyser	    |Soze	    |11810 W Lake Rd  | 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL	|1	     |All Steel Construction Dog Platemail            |	2167122996|	100.11 |1        |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    TODO: Add automated checks for now check output manually

#SD-191
  @edi
  Scenario: 855 Validate 855 Drop ship with 1 mirror product fulfilled out of RENO
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                   |	Phone	  |Price   |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL-M	|1	     |All Steel Construction Dog Platemail (Mirror)   |	2167122996|	151.11 |1      |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    TODO: Add automated checks for now check output manually

#SD-192
  @edi
  Scenario: 855 Validate 855 Drop ship with 1 product that is a kit fulfilled out of RENO
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                      |	Phone	  |Price  |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-ROCKET-SET	|1	     |Set Of Self-Propelled Flight Tools For Winning WW2 |	2167122996|	42.11 |1     |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    TODO: Add automated checks for now check output manually

#SD-193
  @edi
  Scenario: 855 Validate 855 Drop ship standard with 1 product quantity 10 fulfilled out of RENO
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                   |	Phone	  |Price   |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL	|10	     |All Steel Construction Dog Platemail            |	2167122996|	100.11 |1       |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    TODO: Add automated checks for now check output manually

# SD-194
  @edi
  Scenario: 855 Validate 855 Drop ship with 5 mirror products fulfilled out of RENO
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                   |	Phone	  |Price   |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL-M	|5	     |All Steel Construction Dog Platemail (Mirror)   |	2167122996|	151.11 |1      |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    TODO: Add automated checks for now check output manually

# SD-195
  @edi
  Scenario: 855 Validate 855 Drop ship with 6 kit products fulfilled out of RENO
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                      |	Phone	  |Price  |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-ROCKET-SET	|6	     |Set Of Self-Propelled Flight Tools For Winning WW2 |	2167122996|	42.11 |1     |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    TODO: Add automated checks for now check output manually

# SD-196
  @edi @edi2
  Scenario: 855 Validate 855 Drop ship standard with 1 product fulfilled out of CLE2
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                   |	Phone	  |Price   |PartnerLineItemID|
      |<placeholder>  |           |Keyser	    |Soze	    |11810 W Lake Rd  | 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL	|1	     |All Steel Construction Dog Platemail            |	2167122996|	100.11 |1        |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    TODO: Add automated checks for now check output manually


#  SD-197
  @edi
  Scenario: 855 Validate 855 Drop ship with 1 mirror product fulfilled out of CLE2
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                   |	Phone	  |Price   |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL-M	|1	     |All Steel Construction Dog Platemail (Mirror)   |	2167122996|	151.11 |1      |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    TODO: Add automated checks for now check output manually

#  SD-198
  @edi
  Scenario: 855 Validate 855 Drop ship with 1 product that is a kit fulfilled out of CLE2
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                      |	Phone	  |Price  |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-ROCKET-SET	|1	     |Set Of Self-Propelled Flight Tools For Winning WW2 |	2167122996|	42.11 |1     |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    TODO: Add automated checks for now check output manually

#  SD-199
  @edi
  Scenario: 855 Validate 855 Drop ship standard with 1 product quantity 10 fulfilled out of CLE2
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                   |	Phone	  |Price   |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL	|10	     |All Steel Construction Dog Platemail            |	2167122996|	100.11 |1       |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    TODO: Add automated checks for now check output manually

#  SD-200
  @edi
  Scenario: 855 Validate 855 Drop ship with 5 mirror products fulfilled out of CLE2
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                   |	Phone	  |Price   |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL-M	|5	     |All Steel Construction Dog Platemail (Mirror)   |	2167122996|	151.11 |1      |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    TODO: Add automated checks for now check output manually

#  SD-201
  @edi1
  Scenario: 855 Validate 855 Drop ship with 6 kit products fulfilled out of CLE2
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                      |	Phone	  |Price  |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-ROCKET-SET	|6	     |Set Of Self-Propelled Flight Tools For Winning WW2 |	2167122996|	42.11 |1     |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    TODO: Add automated checks for now check output manually

  # SD-62
  @edi
  Scenario: 855 Validate 855 Drop ship 1 regular, kit and mirror product fulfilled out of TGOH
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                      |	Phone	  |Price   |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-ROCKET-SET	|1	     |Set Of Self-Propelled Flight Tools For Winning WW2 |	2167122996|	42.11  |1     |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL-M	|1	     |All Steel Construction Dog Platemail (Mirror)      |	2167122996|	151.11 |2     |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL	|1	     |All Steel Construction Dog Platemail               |	2167122996|	100.11 |3     |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    TODO: Add automated checks for now check output manually

   # SD-64
  @edi
  Scenario: 855 Validate 855 Drop ship 1 regular, kit and mirror product fulfilled out of CLE2
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                      |	Phone	  |Price   |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-ROCKET-SET	|1	     |Set Of Self-Propelled Flight Tools For Winning WW2 |	2167122996|	42.11  |1     |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL-M	|1	     |All Steel Construction Dog Platemail (Mirror)      |	2167122996|	151.11 |2     |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL	|1	     |All Steel Construction Dog Platemail               |	2167122996|	100.11 |3     |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    TODO: Add automated checks for now check output manually

   # SD-65
  @edi
  Scenario: 855 Validate 855 Drop ship 1 regular, kit and mirror product fulfilled out of RENO
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                      |	Phone	  |Price   |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-ROCKET-SET	|1	     |Set Of Self-Propelled Flight Tools For Winning WW2 |	2167122996|	42.11  |1     |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL-M	|1	     |All Steel Construction Dog Platemail (Mirror)      |	2167122996|	151.11 |2     |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL	|1	     |All Steel Construction Dog Platemail               |	2167122996|	100.11 |3     |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    TODO: Add automated checks for now check output manually

#  SD-63
  @edi
  Scenario: 855 Validate 855 Drop ship 2 regular, 2 kit and 2 mirror product fulfilled out of TGOH
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                      |	Phone	  |Price   |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-ROCKET-SET	|2	     |Set Of Self-Propelled Flight Tools For Winning WW2 |	2167122996|	42.11  |1      |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL-M	|2	     |All Steel Construction Dog Platemail (Mirror)      |	2167122996|	151.11 |2      |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL	|2	     |All Steel Construction Dog Platemail               |	2167122996|	100.11 |3      |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    TODO: Add automated checks for now check output manually

#  SD-202
  @edi
  Scenario: 855 Validate 855 Drop ship 2 regular, 2 kit and 2 mirror product fulfilled out of CLE2
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                      |	Phone	  |Price   |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-ROCKET-SET	|2	     |Set Of Self-Propelled Flight Tools For Winning WW2 |	2167122996|	42.11  |1      |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL-M	|2	     |All Steel Construction Dog Platemail (Mirror)      |	2167122996|	151.11 |2      |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL	|2	     |All Steel Construction Dog Platemail               |	2167122996|	100.11 |3      |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    TODO: Add automated checks for now check output manually

#  SD-203
  @edi
  Scenario: 855 Validate 855 Drop ship 2 regular, 2 kit and 2 mirror product fulfilled out of RENO
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                      |	Phone	  |Price   |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-ROCKET-SET	|2	     |Set Of Self-Propelled Flight Tools For Winning WW2 |	2167122996|	42.11  |1      |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL-M	|2	     |All Steel Construction Dog Platemail (Mirror)      |	2167122996|	151.11 |2      |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL	|2	     |All Steel Construction Dog Platemail               |	2167122996|	100.11 |3      |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    TODO: Add automated checks for now check output manually

  #  SD-204
#  1 regular product, 1 mirror product, 1 kit product each product from different warehouse
  @edi
  Scenario: 855 Validate 855 Drop ship 1 regular, 1 kit and 1 mirror product each fulfilled from different warehouse RENO, CLE2, TGOH
    #  Each product needs to come from seprate warehouse RENO, CLE2, TGOH
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                      |	Phone	  |Price   |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-ROCKET-SET	|1	     |Set Of Self-Propelled Flight Tools For Winning WW2 |	2167122996|	42.11  |1      |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL-M	|1	     |All Steel Construction Dog Platemail (Mirror)      |	2167122996|	151.11 |2      |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL	|1	     |All Steel Construction Dog Platemail               |	2167122996|	100.11 |3      |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    TODO: Add automated checks for now check output manually

#  4 regular product, 4 mirror product, 4 kit product each set of products fulfilled from different warehouse
#  SD-207
  @edi
  Scenario: 855 Validate 855 Drop ship 4 regular, 4 kit and 4 mirror products each fulfilled from different warehouse RENO, CLE2, TGOH
    #  Each product needs to come from seprate warehouse RENO, CLE2, TGOH
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                      |	Phone	  |Price   |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-ROCKET-SET	|4	     |Set Of Self-Propelled Flight Tools For Winning WW2 |	2167122996|	42.11  |1      |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL-M	|4	     |All Steel Construction Dog Platemail (Mirror)      |	2167122996|	151.11 |2      |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL	|4	     |All Steel Construction Dog Platemail               |	2167122996|	100.11 |3      |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    TODO: Add automated checks for now check output manually

 #  Freight order - 50 regular product, 50 mirror product, 50 kit product fulfilled from one warehouse
#  SD-208
  @edi
  Scenario: 855 Validate 855 Freight order 50 regular, 50 kit and 50 mirror products each fulfilled from RENO
   Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                      |	Phone	  |Price   |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |308	       |FAKEPROD-ROCKET-SET	|50	     |Set Of Self-Propelled Flight Tools For Winning WW2 |	2167122996|	42.11  |1      |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |308	       |FAKEPROD-DOGMAIL-M	|50	     |All Steel Construction Dog Platemail (Mirror)      |	2167122996|	151.11 |2      |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |308	       |FAKEPROD-DOGMAIL	|50	     |All Steel Construction Dog Platemail               |	2167122996|	100.11 |3      |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    TODO: Add automated checks for now check output manually



  Scenario: Create Order with multiple products
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                   |	Phone	  |Price   |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL-2	|2	     |All Steel Construction Dog Platemail (Set of 2) |	2167122996|	211.11 |1      |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |''           |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGSWORD	|2	     |The Original Dog Sword                          |	2167122996|	33.11  |2      |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified
#    Then Navigates to the Edi find configurations like this page


  Scenario: Create Order with multiple products
    Given Multiple orders with one product per order created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	            |Quantity|	Description                                   |	Phone	  |Price   |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMAIL-2	|2	     |All Steel Construction Dog Platemail (Set of 2) |	2167122996|	211.11 |1      |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |''           |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGSWORD	|2	     |The Original Dog Sword                          |	2167122996|	33.11  |2      |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |   |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified

# FAKEPROD-ART-C1624GG

  Scenario: Create Order with Art product
    Given Multiple orders with one product per order created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	              |Quantity|	Description        |Phone	   |Price  |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-ART-C1624GG  |2	   |Fake Decorative Art    |2167122996 |20.11  |1      |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |   |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified

#  FAKEPROD-ART-SET

  Scenario: Create Order with Art Set
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	              |Quantity|	Description                  |Phone	    |Price  |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-ART-SET      |2	   |Regular And Large Fake Art Set   |2167122996|50.11 |1      |
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
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	              |Quantity|	Description                |Phone	   |Price  |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMOR-SET   |1	   |Fantasy Dog Equipment Set      |2167122996 |26.11  | 1     |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |   |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified

#  FAKEPROD-DOGMAIL-M
  @newprod
  Scenario: Create Order with mirror product
    Given Single Order with multiple one or more products created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	              |Address 2	|City   |State|	Country|ZipCode|Ship Method|Part	              |Quantity|	Description                                 |Phone	   |Price  |PartnerLineItemID|
      |<placeholder>  |''         |John	        |Soze	    |2026 S. Silverstone Way  |'' 	        |Boise	| ID  |	US	   |83687  |95	       |FAKEPROD-CATSHIRT     |1	   |Cat shirt with building block cat image         |2167122996|3.33   |1      |
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   |   |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the Edi Page
    Then Enter Edi configuration to search for
    Then Run the configuration specified

#  FAKEPROD-DOGMOR-SET
#  FAKEPROD-ROCKET-SET
  @test
  Scenario: Create Order with multiple product sets
    Given Multiple orders with one product per order created with following parameters
      |Order	      |Company	  |First Name	|Last Name	|Address 1	      |Address 2	|City	    |State|	Country|ZipCode|Ship Method|Part	              |Quantity|	Description                                    |Phone	    |Price |PartnerLineItemID|
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-DOGMOR-SET   |1	   |Fantasy Dog Equipment Set                          |2167122996  |99.01 |1      |
      |<placeholder>  |''           |Keyser	    |Soze	    |11810 W Lake Rd  |'' 	        |Vermilion	| OH  |	US	   |44089  |95	       |FAKEPROD-ROCKET-SET   |1	   |Set Of Self-Propelled Flight Tools For Winning WW2 |2167122996  |99.01 |2      |
