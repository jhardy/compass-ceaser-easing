Compass Ceaser CSS Easing Transitions
======================================

A compass extension based on [ceasar css easing animation tool](http://matthewlein.com/ceaser/) by [@matthewlein](http://twitter.com/matthewlein)
This extension provides transitions based on the classic Penner equations from Flash and jQuery.


Installation
============

Install gem from the command line:

    gem install ceaser-easing

Adding Ceaser Easing to an existing project:

    # Edit the project configuration file and add:
    require 'ceaser-easing'

    #import ceaser-easing into your sass/scss file
    @import "ceaser-easing"

Create a new project using Ceaser Easing

    compass create project_name -r ceaser-easing -u ceaser-easing

    #import ceaser-easing into your sass/scss file
    @import "ceaser-easing"



Using Ceaser Easing
===================


The ceaser easing extension provides a sass function called ceaser. You use the function as a value for a transition or animation timing-function property. You pass what type of easing you would like to the function and it will apply the correct cubic-bezier transition timing function for you.


The ceaser easing function
-----------------------


    #transition {
      transition-property: all;
      transition-duration: 1.2s;
      transition-timing-function: ceaser($ease-in);
    }

    #transition-shorthand {
      transition: all 1.2s ceaser($ease-in);
    }


    #animation {
      animation-name: animateMe;
      animation-iteration-count: infinite;
      animation-duration: 10s;
      animation-timing-function: ceaser($easeInSine);
    }

    #animation-shorthand {
      animation: animateMe 10s ceaser($easeInSine) infinite

    }


Ease Types
----------
Here is a list of all the available easing types to choose from, you can see an example of each on the original [demo page](http://matthewlein.com/ceaser/)

    $linear
    $ease (default)
    $ease-in
    $ease-out
    $ease-in-out

    $easeInQuad
    $easeInCubic
    $easeInQuart
    $easeInQuint
    $easeInSine
    $easeInExpo
    $easeInCirc
    $easeInBack

    $easeOutQuad
    $easeOutCubic
    $easeOutQuart
    $easeOutQuint
    $easeOutSine
    $easeOutExpo
    $easeOutCirc
    $easeOutBack

    $easeInOutQuad
    $easeInOutCubic
    $easeInOutQuart
    $easeInOutQuint
    $easeInOutSine
    $easeInOutExpo
    $easeInOutCirc
    $easeInOutBack



The ceaser easing mixin
-----------------------

The ceaser easing extension provides a mixin called ceaser. You pass what type of easing you would like to the mixin and it will apply the correct cubic-bezier transition timing function for you. You can then pass the transition property (defaults to all), the transition duration (defaults to 500ms), and the transition delay (defaults to 0).

    # The ceaser easing mixin with its argument descriptions
    @mixin ceaser-transition(transition property, duration, ease type, delay)

    # Example mixin call that will create a 3 second transition with the ease type of ease-in
    @include ceaser-transition(all, 3s, $ease-in)

    # Example mixin call that will create a 500 milliseconds transition on only the width property with a delay of 1 second
    @include ceaser-transition(width, 500ms, $easeInOutExpo, 1s)


As an example, here is how create the above transition for an html element with id of box.

    #box {
        width: 500px;
        @include ceaser-transition(width, 500ms, $easeInOutExpo, 1s);
    }

    #box:hover {
        width: 700px;
    }

Legacy Support
-----------------------
In this new version of ceaser-easing easing types have move to sass variables instead of using strings. Below is a comparison of the old and new syntax:

    .old-syntax {
      transition-property: all;
      transition-duration: 1.2s;
      transition-timing-function: ceaser("ease-in");
    }

    .new-syntax {
      transition-property: all;
      transition-duration: 1.2s;
      transition-timing-function: ceaser($ease-in);
    }

For legacy purpose for this update you can use the old syntax but have to be sure enable legacy support by setting the ceaser-legacy variable to true like this:

    #Legacy Variable
    $ceaser-legacy: true


