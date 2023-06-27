LimeSurvey plugin for `Tutor <https://docs.tutor.overhang.io>`__
===================================================================================
LimeSurvey is an open-source online survey software that allows users to create and conduct surveys, questionnaires, and polls.

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

Login with your credentials!


License
-------

This software is licensed under the terms of the AGPLv3.
