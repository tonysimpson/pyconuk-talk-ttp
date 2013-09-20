:title: Breaking Things For Money
:data-transition-duration: 500
:css: thetestpeople.css


About Me
========

Tony Simpson
------------
Lead Technical Consultant @ The Test People

@agjasimpson

github.com/tonysimpson

#breakingpycon

  
----

Peter Russell
-------------
Senior Technical Consultant @ The Test People

@qwertyface

#breakingpycon

  
----

About The Test People
=====================

* Testing consultancy based in Yorkshire (offices Leeds, London, Gibraltar).

* Company prides itself on its innovation and technical delivery.

* #44 on the 'Sunday Times Tech Track 100 2013', **#1 in Yorkshire**.

@thetestpeople

----

What We Do
==========

* Performance Testing.

* Managed Functional Testing Teams.

* Test Automation.

* Agile and CI/CD consultancy.

----

This Talk
=========

A few brief stories of some interesting projects we've done in Python.

.. note::

  * A few stories from the trenches
  * About tools we’ve written to address needs we faced
  * All internal tools – no github links – sorry!

----

Pynamite
========

*If your application is not broken you're not using enough Pynamite!*

.. note::

  * Load testing engagement

    - Typically use tools

      + Some tied to HTTP only,
      + some have plugins to support additional protocols,
      + But all have a request response oriented HTTP view of the world
      + but all are islands of functionality - you can't use cool
        features from one with another
      + too expensive and inflexible to allow TTP to do the more challenging projects.

    - Our need:

      + Streaming video server
      + which is Definitely not HTTP

----

Origins
=======

.. note::

  * Struggled with an existing open source tool
  * Hard to use with our network topology
  * Made of bugs
  * Basically no reporting
    - So we were going to be using matplotlib anyway
  * So I said...

----

**"I could write something better than this!"**


----

**"...in a day!"**

----

**"… In Bash!"**

.. note::

  And we did, but in Python
  
----

Ideas Borrowed From
-------------------

* Flask (extension mechanism)

* Erlang OTP (process management, messaging, let it crash and restart
  it, isolated processes)

* Python Web Frameworks (project scaffolding and packaging, dev server/runner)

.. note::

 Tony

 * Somewhat inspired by python microframeworks
 * Plain old functions - wired together by something very conceptually simple
 * Architecture inspired by erlang

----

What Does It Alow Us To Do
--------------------------

* Video Streaming
* Warehouse Management Systems
* Legacy Applications
* Flash and Silverlight
* Data Warehouse Infrastructure
* Network Attached Devices
* Uncommon and Bespoke Protocols

.. note::

  Peter

----


.. image:: static/transactions.png
    :height: 600px
    :width: 900px

----

.. image:: static/transactions_big.png
    :height: 600px
    :width: 900px

----

Key Libraries And Technology
----------------------------

* ZeroMQ
* Distutils / Setuptools / easy_install
* Boto
* IPython Notebook
* Matplotlib
* Docopt
* Paramiko

----

Gawker
======

*Or how Tony spent days staring at a massive 'B' and a massive number '8'*

.. note::

 * Client wanted to compare their product to others
 * Financial services - latency counts (or is perceived to)
 * Clients were all sorts of stuff: Flash, .net & WPF, Silverlight, Flash, Flash
 * Can’t build in automation libs
 * No standard framework

----

Non-live demo
=============

Gawker is a "poor mans OCR" - bitmap based character matching

.. raw:: html

    <video controls>
      <source src="static/capturepricefeed1.mp4" type="video/mp4">
    Your browser does not support the video tag.
    </video>

.. note::

 * Screen scraping
   * Sounds pretty easy
   * We probably know what fonts we’re using
   * And all we’re really interested in is numbers
   * Of known length
   * in known positions
 * Put together very quickly (< 1 week)
 * Worked … acceptably

----

Problems

.. note::

 * Fancy Financial apps love gradient backgrounds
 * Fonts aren’t as “standard” as you’d think - flash seems to have its own renderer!
 * Antialiasing
 * Performance
 * “Training” became an issue

---

Lessons learned
===============

.. image:: static/stargate.jpg
    :height: 393px
    :width: 700px

.. note::
 * Numpy is one of the coolest things ever - Its like an ancient
   technology we’ve found buried in the desert - mere mortals like us
   are really unworthy of it.
 * Lots of little image manipulation bits:

   * Edge detection
   * Thresholding
   * Colourspace manipulation

 * Lots of little image manipulation bits with numpy
 * Using the Win32 APIs through ctypes is really easy
 * And numpy and Win32 combine really well (the buffer protocol) for
   great justice.

----

Geist
=====

*Computer vision based UI automation library*

.. note::

 * Our team are gaining a reputation for solving hard problems (thanks to Tony)
 * 90% of automation is easy – webdriver / windows automation APIs /
   build in the appropriate library for your target platform
 * But Increasingly we’re getting asked to solve problems others have
   given up on 
 * And proving we can bring something under automation quickly is
   commercially very useful.
 * Logical next step after geist
 * visual automation... The nuclear option

----

The State of the (open source) Art
==================================

* Sikuli
* Expresser

Both good tools

.. note::

  * Previously aware of Sikuli and Expresser
  * Both use OpenCV for image matching
  * OpenCV is a fantastic, mathsy, black box.
  * Expresser and sikuli use the templateMatch() function from openCV.  Here’s
    the documentation.

----

Sikuli and Xpresser use OpenCV `matchTemplate` with CV_TM_CCOEFF_NORMED

.. image:: static/opencvmath1.png
    :height: 600px
    :width: 900px

.. note::

 * To get things done quickly we need easy debugging, which means we
   need understanding
 * So we hired a maths graduate.
 * Adam!  What does this mean?
 * Failing understanding, we'll settle for intuition

----

Digression: How do you write a Where's Wally program
====================================================

Convolution on Wikipedia [http://en.wikipedia.org/wiki/Convolution]

.. note::

 * Template matching usually uses something called the convolution theorem.
 * Convolution: [switch to Wikipedia] maths… maths… maths… Ah… intuition.
 * Convoluton “slides” one function over another, and gives a measure
   of their how much they intersect at each position.

   * So matches are at maxima.
   * Kinda easy to see how this would be relevant
   * If images were functions
   * Sounds slow though

* The convolution theorm basically says there's a cheap way to do this
  using FFTs.

----

Implementation
==============

* NumPy
* IPython Notebook
* CTypes with Win32
* Matplotlib
* NumPy
* PIL
* Leeds brewery Midnight Bell and Saltaire Blonde
* Whiteboard

----

Case Study
==========

The problem:

* Large performance test of a trading system
* Hairy Flash based application
* Custom widget set
* Only really works in Internet Explorer (8)

----


Case Study
==========

Approach:

* Library of image finding code (Geist)
* Python bindings for some useful Win32 functions (for typing, clicking etc.)
* Database of template images - unit tested against known screenshots
* "OCR" for reading values (Gawker)
* Nice straightforward scripts written in Python
* Pynamite
* Hundreds of Windows EC2 instances

----

Case Study
==========

Result:

* Happy customer
* Good engagement
* More work - for other parts of TTP


----

A Python In Every Process
=========================

*The tool that we may or may not decide to call huk*

.. note::

 * Last test was a success, but leaves a lot of questions unanswered
 * Really want to "see" messages being sent
 * Just one Problem...
 * The messaging is encrypted.
 * The "standard" solution: Proxy server
 * But proxies suck
 * Plan B: Be inside Internet Explorer.

----

DLL Injection
=============

* Get handle for process
* Allocate memory within address space of process
* Write DLL name into memory
* Start new thread, running LoadLibrary function, passing name as argument.

Amazingly this works

.. note::

 * Fairly standard trick
 * Lots of websites with green text on black backgrounds mention it.
 * What's novel is the  The DLL we used...

----

Python Injection
================

 * Inject Python27.dll
 * We then run ``Py_Initialize()``
 * And run ``PyRun_SimpleScript()``, passing script name.


Function Hooking
================

* Making use of Windows hot patching mechanism for now
* Other approaches possible too.
* CTypes has support for generating function pointers from python functions.


.. code:: python

    DIGIT_MAP = {i:j for i,j in zip('0123456789','6514798023')}

    SET_WINDOW_TEXT_A = """
    BOOL WINAPI SetWindowTextA(
      _In_      HWND hWnd,
      _In_opt_  LPCSTR lpString
    );
    """

    @hook(ctypes.windll.user32, SET_WINDOW_TEXT_A)
    def SetWindowTextA(hWnd, lpString):
        text = ''.join([c if not c.isdigit() else DIGIT_MAP[c] for c in lpString])
        print("Got %r using %r" % (lpString,text))
        return SetWindowTextA.unhooked(hWnd, text)

----

Calculator Demo
---------------

.. raw:: html

    <video controls>
        <source src="static/wrongulator.webm" type="video/webm">
        Your browser does not support the video tag.
    </video>

----



*END*
