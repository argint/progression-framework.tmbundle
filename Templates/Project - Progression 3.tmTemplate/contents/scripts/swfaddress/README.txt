SWFAddress 2.0 

Description
-------------------------------------------------------------------------
SWFAddress provides deep linking for Flash and Ajax content. In other 
words it enables the Back, Forward and Reload buttons of the browser and 
creates unique URLs that can be sent over email or IM. SWFAddress also 
ships with an innovative technique that allows search engine indexing 
for such virtual pages. It supports the following browsers:

Mozilla Firefox 1+
Internet Explorer 6+
Safari 1.3+
Opera 9.02+
Camino 1+
Mozilla 1.8+
Netscape 8+


Samples
-------------------------------------------------------------------------
The Adobe, Coherence, Flash, IntKit, Rails, SEO, Tomcat and UFO samples 
require Macromedia Flash 8 or Adobe CS3.
The CS3 sample requires Adobe CS3.
The MTASC sample requires MTASC 1.11+.
The Flex and Family samples require Flex 2 SDK.


Notes
-------------------------------------------------------------------------
The file c.swf is used to fix broken SWF streaming in IE. It should be 
used with single large SWF files.

For local testing the work files or the whole hard drive should be added 
to the list of allowed locations available at http://www.adobe.com/
support/documentation/en/flashplayer/help/settings_manager04.html.

The SEO support requires a trailing slash at the end of the address 
value. For example '/portfolio/' should be used instead of '/portfolio'.

The Google Analytics tracking code should be included before the
swfaddress.js. It also needs to be edited and the urchinTracker(); call 
should be removed. The 'Top Content' section will provide more accurate 
results compared to 'Content by Title' because the page titles are set 
with JavaScript.

SWFAddress in ActionScript is distributed as a top level class. Projects 
that utilize code packages should use it with the com.asual.swfaddress 
package.


Known issues
-------------------------------------------------------------------------
The Back/Forward dropdown menu does not display page titles correcly.

Opera reloads the Flash movies when you navigate using the browser 
buttons.

SWFAddress values should not match the naming of frame labels on the main 
timeline.

Usage of getURL together with SWFAddress/ExternalInterface often breaks
the content in Internet Explorer.

The setStatus() and related methods are not supported on Safari and 
does not work with the default settings of Firefox and IE7.

Manual editing of anchors in Mozilla based browsers breaks location bar 
updates.


The team
-------------------------------------------------------------------------
Rostislav Hristov
Jon MacDonald
Petyo Ivanov