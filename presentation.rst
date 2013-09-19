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

About The Test People
=====================

* Testing consultancy based in Yorkshire (offices Leeds, Londonhovercarft imclude , Gibraltar).

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

Something about existing tools??
================================

----

Pynamite
========

*If your application is not broken you're not using enough Pynamite!*

----

Ideas Borrowed From
-------------------

* Flask (extension mechanism)

* Erlang OTP (process management, messaging, let it crash and restart it, isolated processes)

* Python Web Frameworks (project scaffolding and packaging, dev server/runner)

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
* Boto
* IPython Notebook
* Matplotlib
* Docopt
* Paramiko

----

Geist
=====

----

:data-rotate: 20000


Gawker - Simple Screen OCR (Outdated)
-------------------------------------

.. raw:: html

    <video controls>
      <source src="static/capturepricefeed1.mp4" type="video/mp4">
    Your browser does not support the video tag.
    </video>

----

Numpy - Ancient Technology
--------------------------

.. image:: static/stargate.jpg
    :height: 393px
    :width: 700px

* Once you've learnt the symbols it is imensly powerful


----

A Python In Every Proces
========================


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





