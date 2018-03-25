# Hello World Project with Angular and Spring

## About

Project demonstrates how to integrate Spring Boot with Angular as a single application. 

## Requirements

### Runtime

* [Java Runtime Environment 8 (JRE 8)](http://www.oracle.com/technetwork/java/javase/downloads/jre8-downloads-2133155.html)

### Compilation

* [Java Development Kit 8 (JDK 8)](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
* [Maven 3.3.9](https://maven.apache.org/download.cgi)
    * Spring Boot v2.0.0.RELEASE
        
        Set correct angular output directory in property `angular.compile.output.path` from `spring-backend/pom.xml` file.  
* [Node.js 8.10.0](https://nodejs.org/en/download/) with NPM
    *  Angular 5
        
        To install Angular 5 using NPM run `npm install -g @angular/cli`.
    * PhantomJS platform for Jasmine tests
    
        To install PhantomJS module using NPM switch to `angular-frontend` directory and run `npm i --save-dev karma-phantomjs-launcher`.
        
        For new projects enable PhantomJS:
        * `karma.conf.js`: Replace `require('karma-chrome-launcher')` with `require('karma-phantomjs-launcher')`
        * `package.json`: Replace `"karma-chrome-launcher": "^x.y.z"` with `"karma-phantomjs-launcher": "^1.0.4"`. Please use valid version for PhantomJS launcher.
        * Windows users: `src/polifills.ts`: Enable IE9, IE10, IE11 polyfills by uncommenting 
            ```
            import 'core-js/es6/symbol';
            import 'core-js/es6/object';
            import 'core-js/es6/function';
            import 'core-js/es6/parse-int';
            import 'core-js/es6/parse-float';
            import 'core-js/es6/number';
            import 'core-js/es6/math';
            import 'core-js/es6/string';
            import 'core-js/es6/date';
            import 'core-js/es6/array';
            import 'core-js/es6/regexp';
            import 'core-js/es6/map';
            import 'core-js/es6/weak-map';
            import 'core-js/es6/set';
            ```
        * Verify by running tests with command `ng test --watch false`
## Build and run
* Production build

    Production build produces single `jar` file that serves both dynamic content (thanks to spring) and static content (thanks to angular). 
    **Please note**, this is production build for my home environment, where network traffic is very low. For best performance, in real production environment static content should be served by dedicated servers (e.g. Apache HTTP Server, NGINX)
    
    * Windows: run `build-prod.bat` to build application. Start application with command `java -jar spring-backend/target/hello-world.jar`   
    * Linux: Not supported yet, however windows scripts are simple enough to easy port them to linux environment.
## Verify application
1. Open your favorite browser
2. Go to `localhost:8080` and verify Angular static content is served correctly
3. Go to `localhost:8080/hello` and verify Spring answers with dynamic content. Add optional parameter name (`?name=John`) to url.  
    
