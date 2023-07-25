LimeSurvey plugin for `Tutor <https://docs.tutor.overhang.io>`__
===================================================================================
`LimeSurvey <https://www.limesurvey.org/>`__ is an open-source online survey software that allows users to create and conduct surveys, questionnaires, and polls.

This plugin allows you to install LimeSurvey in your Tutor ecosystem.

Installation
------------

::

    pip install git+https://github.com/eduNEXT/tutor-contrib-limesurvey

Usage
-----

Enable the plugin::

    tutor plugins enable limesurvey

Save the changes in the environment::

    tutor config save

Run the initialization script in your chosen environment (dev or local)::

    tutor [dev|local] do init -l limesurvey

Run the environment::

    tutor [dev|local] start -d

Visit the administrator::

    <LIMESURVEY_URL>/admin

.. image:: https://github.com/eduNEXT/tutor-contrib-limesurvey/assets/64440265/069c000f-2cee-4290-bdac-db20223a6244


Then, login with your admin credentials -- you can find them in your ``config.yml``!


.. image:: https://github.com/eduNEXT/tutor-contrib-limesurvey/assets/64440265/50cc734d-4340-4f68-90b4-0e01a65665cb


Check out the `LimeSurvey official documentation <https://manual.limesurvey.org/>`__ for a detailed description of how to use it.

License
-------

This software is licensed under the terms of the AGPLv3.
