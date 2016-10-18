# What is Phalcon?

![phalcon](https://static.phalconphp.com/www/images/phalcon1.png)

Phalcon is an open source, full stack framework for PHP written as a C-extension, optimized for high performance.   
You don’t need to learn or use the C language, since the functionality is exposed as PHP classes ready for you to use.   
Phalcon also is loosely coupled, allowing you to use its objects as glue components based on the needs of your application.  
Phalcon is not only about performance, our goal is to make it robust, rich in features and easy to use!  

https://phalconphp.com/

# What is this image?
This image is which designed to launch Phalcon applications.
* Phalcon version: 3.0.0
* PHP: 7.0.11
* Redis: 2.8.12
* MariaDB: 10.2.1
* Apache: 2.4.20
* OS: CentOS-6.7

# Run your app
Your Phalcon app has to be mounted in the container in the /var/www/html directory.  
Should you want to publish your app port to the host, you must use the -p argument.  
Here is an example of a docker run command:
```shell
docker run -d \
  -v /path/to/your/app:/var/www/html/:rw \
  -p 80:80 \
  -p 443:443 \
  -p 3306:3306 \
  -p 6379:6379
```
You can also package your app, in order to do that, create a Dockerfile like it:   
```docker
FROM matsnow/php7-phalcon:latest
MAINTERNER <your@email.com>
```
