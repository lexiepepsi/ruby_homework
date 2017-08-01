# Problem 4

# What is the difference between an HTTP GET request and a POST request?

# GET and POST requests are both HTTP requests which tell a server information a client would like. However, GET requests are idempotent and not secure whereas POST requests are non-idempotent and secure.

# GET requests try to retrieve information from a server by asking for a resource located at a specific spot indicated by the URL. GET requests try to read data from the server and do not typically attempt to change data. Thus they are idempotent because these requests can be applied multiple times with the same results. GET requests transmit the request through the URL so they are not secure and only a limited amount of information can be sent.

# POST requests send content to a server and often create a new record. POST requests are non-idempotent because they typically change something on the server and cannot be repeated with the exact same results. POST request data is sent in the body of the request, is secure, and can handle a larger amount of data.