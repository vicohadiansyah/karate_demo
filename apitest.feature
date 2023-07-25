Feature:

Scenario:
  * url 'https://jsonplaceholder.typicode.com/posts'
  Given path ''
  When method GET
  Then status 200

  # Match response properties
  And match each response == { id: '#number', title: '#string', body: '#string', userId: '#notnull' }
  

  # Generate HTML report
  * configure report = { showLog: true, showAllSteps: true }