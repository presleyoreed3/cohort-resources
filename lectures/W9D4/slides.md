
### jQuery and AJAX

---


### Lecture Agenda

+ DOM review
+ Common jQuery methods
+ AJAX
+ Kahoot

---

### Learning Objectives

+ Understand the practicality of jQuery

* Understand how and why we should use AJAX requests

+ Understand how are front end works together

---
### Layers of the Front-end
![Frontend Layers](https://user-images.githubusercontent.com/51456702/74088928-5f019600-4a50-11ea-8403-168bc1e545be.png)


---



### Document Object Model (DOM)
![dom-tree](https://www.w3schools.com/js/pic_htmltree.gif)
---
## If We know Vanilla DOM, Why Use Jquery?

>>>>"write less, do more"

 + jQuery is a reusable piece of code that enables you to do more with JavaScript.
 
 + jQuery takes common JavaScript tasks and wraps them into methods. 
 
 + Then, instead of writing out all that code by hand, developers can simply call these method


---

### Brief Overview of jQuery
+ JavaScript wrapper-library used for low-level DOM manipulation
+ around since January 2006 
+ used by 76% of top 10,000,000 sites
+ universally supported by all browsers
  + consistent API for programmers to interact with, regardless of browser
  + "Write less, do more" - jQuery
 + [jQuery vs. React on Google Trends](https://trends.google.com/trends/explore?date=all&q=%2Fm%2F0268gyp,%2Fm%2F012l1vxv)
 
---

### How to use jQuery

```html
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
```

---

### Ways to use jQuery
+ Ready-style
+ Selector-style
+ Wrapper-style
+ HTML-style

---

### Ready-style

+ input: function to run when DOM is fully loaded
+ example `$(() => alert('DOM is fully loaded'))`

---

### Selector-style

+ input: CSS selector as a string
+ output: jQuery object (array-like) containing all elements that match the selector
+ example: `$('li.someClass')`

---

### Wrapper-style

+ input: unwrapped HTML Element or array of several elements
+ output: jQuery object wrapping those elements, giving you access to jQuery methods
+ example: `$(someHTMLVariable)`

---

### HTML-style

+ input: HTML code as a string
+ output: jQuery object containing the top-level elements you built
+ example: `$('<li class="someClass"></li>')`

---

### More jQuery Methods (Refer to jQuery API docs):
+ `hide` & `show`
+ `addClass`
+ `css`
+ `attr` & `data`
+ `.val()` 
+ `.find(someSelector)` 
+ `on(event, handler)`
  
---

## Questions

---
# 5 minute break
---

## AJAX & Promises

---

## Review of Request Cycle

![httpreqvsajax](http://www.dotnetcurry.com/images/jquery/Getting-started-with-.ajaxBack-to-Basics_197B/httpreqvsajax.png)

---

## Where We're Going
* Single page web applications
  - client-side rendering built using *React*
* Sending and rendering data as `json`
* Rails backend becomes a server-side api

---

## What is AJAX?
* **A** synchronous **J** avascript **A** nd **X** ML
* An HTTP request that happens in the background
* Allows us to request and receive data after a page has loaded
* Allows us to send data to the server in the background
  
---

## AJAX Process Flow Example

1. An event occurs on a web page (i.e. a button is clicked)
2. An XMLHttpRequest (XHR) object is created and sends a request to the web server
3. Server processes the request
4. Server sends a response back to the browser
5. Proper action is performed by JavaScript (i.e. page update)
![httpreqvsajax](http://www.dotnetcurry.com/images/jquery/Getting-started-with-.ajaxBack-to-Basics_197B/httpreqvsajax.png)

---

## jQuery $.ajax()
* jQuery `$.ajax` method allows us (among many other tools/libraries) to make AJAX requests
  * Returns a _promise_ (more on that later)
  * You can use any data format
* Other ways to make AJAX requests:
  * Vanilla JavaScript's `XMLHttpRequest` or `fetch`

---

## $.ajax() Example

```js
$.ajax({
  url: '/squirrels', // URL of HTTP request
  method: 'POST', // HTTP Verb for request
  data: { // data we send up with the request (HTTP body)
    squirrel: {
      name: 'Munchie',
      species: 'Flying'
    }
  },
  dataType: 'JSON', // data type we want BACK in HTTP response
});

```


---




## Then what?
```js
exampleAsyncRequest()
.then(result => otherRequest(result))
.then(newResult => thirdRequest(newResult))
.then(finalResult => {
  console.log(`Got the final result: ${finalResult}`);
})
.catch(failureCallback);

```
---
```js
Promise ={
then: This is what im going to perform only when 
	  the request is successful,
    
catch: I'll do this if the request fails

}
```
---

## Promises

* A promise is an object that wraps an **action**, which is the task (typically asynchronous) it is supposed to perform before it either fails or succeeds based on some **constraint**.
* Allows complex asynchronous code to be more readable

---

## Promise API

* `then` is the most important Promise method
	* takes a success callback and (optionally) a failure callback as args
  * returns a new promise
  * can therefore chain `then` as many times as you want
* A promise chain stops if there's an exception and looks for failure callback in next `then` or, if there is none, down the chain for a `catch`.
* `catch` takes a failure callback and is used for error handling; also returns a promise

---

### $.ajax() with Promises
* jQuery's `$.ajax` method technically returns a _promise-like_ object (`jqXHR` object - uses `fail` instead of `catch` for error callback)
```js
$.ajax({
  url: '/squirrels',
  method: 'POST',
  data: {
    squirrel: {
      name: 'Munchie',
      species: 'Flying'
    }
  },
  dataType: 'JSON',
})
.then(res => console.log(res))
.fail(err => console.log(err));
```




---

## Code Demo - Giphy Web API
![demo](https://media3.giphy.com/media/Lkw7HdK4UlouHMJMZg/giphy.gif)

---

## [Kahoot!](https://play.kahoot.it/v2/?quizId=6f29decf-a97d-467e-aba0-eb0de1871e76)

---

## Thank you!