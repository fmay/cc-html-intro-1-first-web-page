@annotation:tour intro
#Welcome to your Codio course
Welcome to your very first course in the Codio "Computing Curriculum" series of courses. 

We really hope you'll have fun learning about computing and especially how to code. You are encouraged to work with fellow students on this material. Writing code in the real world is actually a very collaborative process and so helping each other is normal and it is good.

You can navigate your way through this course using the buttons at the top.

Click the arrow button to move to the next page.

@annotation:tour example1
#An extremely boring web page
Having said that coding is fun, we are going to start with the most boring example imaginable. Don't worry, it will quickly get more interesting.

We are going to use this show you around the Codio IDE (that's the application you're be using to write read this course and you'll be using to write all your code).

@annotation:tour IDE
#What's an IDE?
An IDE is the tool that developers use to manage their code. Take a look at the left hand side. You'll see a 'File Tree'. This contains all of the files that your code uses. It may look scary to start with but you'll ver soon get used to it.

[IMAGE]

Let's start off by opening up a file. We'll start off by opening up `index.html`, so go ahead and click on it. It will open up for you.

@annotation:tour indexhtml
#What is index.html?
The `index.html` file is the file that most web sites open up automatically. You can think of it as the home page. When you access your site, it is the file that will get displayed in your browser.

Now you've opened it up, you can see a familiar poem.

We'll explain this in a moment, but go to the next page and we'll see how it looks in your browser or your smartphone.

@annotation:tour preview
##Let's preview it now
So, let's now run this file in our preview window. At the top of the screen you can press the preview button ('Project Index').

[IMAGE]

You'll now see the world's most boring web page appear in your browser.

@annotation:tour qrcode
#Got a smartphone handy?
If you happend to have a smartphone to hand, you can run this boring web page on that, too. Go to the 'Project->QR Code Preview URL' menu option and a QR code will appear on screen. If you've got a QR code reader, you can now scan this in a view the page.

If you've not got one, just download a free one from your app store.

@annotation:tour change
#Change something
So feel free to go ahead and change some of the text. You can add a fourth verse if you like.

To preview it again, either press the Preview menu item, or press the refresh button if you've already got the preview window open.

[image]

@annotation:tour cssintro
#Making it look prettier
We said how boring it was. We'll try to make it marginally less boring now by at least making it look a little prettier.

##Get some new code
If you look at the menu bar, you'll see, next to the Preview button, a dropdown button with a rocket icon next to it. Click on the arrow to drop down the list and select `Prettier`.

[IMAGE]

This will change your code around. You'll notice you now have 2 files

```
index.html
main.css
```
Open them both up by selecting them from the file tree.

@annotation:tour css openup
#Explaining the prettier version
If you look at the `index.html` file, you'll see it has not changed one iota.

##Preview it
Now preview it again from the button in the top bar. You'll see that things have changed a lot.

In the next page, we'll explain how all these changes have happened despite the `index.html` not changing at all.

@annotation:tour explanation
#Explaning what has changed
Look at the top of `index.html` and you'll see that there is a new line added in the `<head>` section

```
<link rel="stylesheet" type="text/css" href="main.css">
```

This tells the browser that is needs to go and find the file called `main.css` and use it to style the page. 

`main.css` is what is known as a **stylesheet**. It contains instructions about how to visually style the various parts of the web page.

@annotation:tour elements
#Styling HTML elements
We can now take a quick look back at our `index.html` file and see how the relationship between the various HTML elements and the CSS file works.

The stuff inside `< >` are known as tags, and they surround an HTML element.

##The <body> element
Let's jump to the `<body>` tag. You'll see, at the very bottom of the file, the **closing tag**, which is `</body>`. Everything in between the opening and closing tags is a part of the `<body>` element.

Each web page's contents is always defined within the `<body>` element. 

##The <h1>, <h2> and <p> elements
Look at `index.html` again and try to identify the other elements in the page. 

- `<h1>` - this is a Header (leve1 1) element
- `<h2>` - this is a Header (leve1 2) element and you'll find three of these on our page'
- `<p>` - this is a Paragraph element and you'll find lots of these. We've used one element for each line of our poem.

These 3 elements are, in our simple page, are **children** of the `<body>` element, because they are *nested* within the `<body> ... </body>` tags.

@annotation:tour elementscss
#Matching the HTML elements to our CSS file
Now take a look at `main.css`. Wherever we want to specify the appearance of an element, we simply add an entry into our CSS file in this format.

```
selector {
	property1: value;
	property2: value;
	.
	propertyN: value;
}
```

##Styling <h1> elements
So, to style the `<h1>` element of our page, we have created an `h1` *selector* in `main.css` with a `font` property :

```
h1 {
  font: 32px 'Courier';
}
```

This is saying, that wherever we encounter an `<h1>` HTML element, we want to display it using the 'Courier' font, with a 32 pixel font size.

##Styling <p> elements
You will also see that we have styled the `<p>` elements like this :

```
p {
  font-size: 14px;
  margin: 10px 0 0 10px;
  line-height: 8px;
}
```

This is doing a little more, namely 

- changing the font-size to be 14 pixels
- we are applying a margin of 10 pixels space above, 0 pixels to the right, 0 pixels to the bottom and 10 pixels to the left of each and every `<p>` element
- we are setting the line height (gap between each line) to 8 pixels

@annotation:tour play
#Make some changes
Feel free to play around with a few values. If at any point you mess things up and don't know how to make it work again, you can do one of two things

1. Trying 'Undoing' by selecting the file you had changed and pressing the 'Edit->Undo' menu item (notice the keyboard shortcut next to the menu item so you don't always have to use the menu)
2. From then second menu from the right select the 'Prettier' item and press it, which will get all the files back the way they were from the start.

The main thing is to play with some values and see what happens without worrying about causing damage.

@annotation:tour inherit
#Inheritance
This is a really cool feature and you can engage your brain a bit.

A CSS file gets its name from * **C**ascading **S**tyle **S**heet*.

The reason for this is that the styles you create *cascade* down into *child* elements.

Take a look at this HTML

```
<body>
  <h1>A Poem</h1>
  <h2>First Verse</h2>
  ...
  ...
</body>
```

- `<body>` is a top level element
- `<h1>` is a child element of `<body>`
- `<h2>` is also a child element of `<body>`

Now look at the CSS. 

```
body {
  background-image: url('img/lamb.jpg'); 
  color: #ffffff;
  font: 8px 'verdana';
}
```

It is the first *selector* we have defined (it is important that it's the first) is `body` with the following properties

- `background-image` : we point it to a file located in the img folder in our file tree on the left. You can open it up and open the image file if you like. This will be displayed as the background image for the entire page.
- `color` : we are defining the default text color for the `<body>` element *and all of its children*
- `font-family` : the default font family for the for the `<body>` element *and all of its children* is #ffffff (white, you can need six hexadecimal values here between 0 and 9 then a and f if you want to change it) 

The really important thing here is that the property settings we make for the `<body>` element will automatically *cascade* to all its children (<h1>, <h2> and <p> in our example) *UNLESS* we decide to specify the same property in the selector for any child element.

##Overriding h1 and h2
In our `main.css` file we can see, for example, that the settings we make in the `body` selector are displayed for the `<p>` element but *NOT* for `<h1>` or for `<h2>`. The reason for this is that we overrode <h1> and <h2> with this CSS 

```
h1 {
  font: 32px 'Courier';
}

h2 {
  font-size: 20px;
  padding-top: 28px;
}
```

- `h1` gets a new font and a font-size assigned to it `font: 32px 'Courier'
- `h2` will keep the font ('verdana') specified in the `body` selector but the font size gets changed with `font-size: 20px`

Really think about this until you get it 100%. Playing around with the code is your best bet.


@annotation:tour terms
#Recapping on some terminology
Terminology can seem tedious, but if you make sure you learn the correct terminology, you will find talking to others and looking things up on the Internet much easier.

So, make sure you are comfortable with the following terms, by referring back to the earliter contents

- HTML *Element*
- HTML *Tag*
- CSS *Selector*
- CSS *Property*
- CSS *Property Value*


@annotation:tour reference
#Finding out stuff on your own
One of the skills that all developers have (and have to have) is the ability to research things on the web.

For example, no developer knows the full list of available HTML elements or CSS selectors and their properties and possible values.

##A little challenge
So, why don't you now have a go at playing with the Prettier project and try experimenting with some changes. Below is a list of some things you might want to try. 


##How to research
To help you with the above challenges, you can try any of the following research approaches

- Google "bullet points HTML"
- Google "bullet point styling CSS"
- An excellent HTML element reference is [Mozilla HTML Attribute reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element)
- And also for CSS [Mozilla CSS property reference](https://developer.mozilla.org/en/docs/Web/CSS/Reference)

So, see what you are able to accomplish with your `index.html` and `main.css` combination. 

Don't forget, you can reset your code at any time by selecting 'Prettier' from the list in the second right most menu item at the top.

@annotation tour:finally
#Finally ...
We'll finish this course off by showing you some other fund effects that can be achieved using just HTML and CSS.

From the Rocket menu item at the top, open up the list and select some of the other examples. Don't worry about understanding everything that is going on, just have a look and enjoy, and see how much you can figure out just by observing.








