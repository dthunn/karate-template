Feature: Tests

Background:
  * url 'https://www.videogamedb.uk/api/v2'

Scenario:
  Given path 'videogame'
  When method get
  Then status 200

  * def firstGame = response[0]

  Given path 'videogame', firstGame.id
  When method get
  Then status 200