LimeSurvey plugin for `Tutor <https://docs.tutor.overhang.io>`__
====================================================================

`LimeSurvey <https://www.limesurvey.org/>`__ is an open-source online survey software that allows users to create and conduct surveys, questionnaires, and polls.

This Tutor plugin allows you to install LimeSurvey in your Tutor ecosystem.

**NOTE**: The LimeSurvey service can then be integrated into the Open edX platform with the  `LimeSurvey Xblock`_.

.. _LimeSurvey Xblock: https://github.com/eduNEXT/xblock-limesurvey


This plugin has been created as an open source contribution to the Open edX platform ecosystem and has been funded by the Unidigital project from the Spanish Government - 2023.


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

Configuration
-------------

The following configuration options are available for your ``config.yml``:


- ``LIMESURVEY_DOCKER_IMAGE`` (default: ``docker.io/edunext/limesurvey:<LATEST PLUGIN TAG>``): LimeSurvey production Docker image to use.
- ``LIMESURVEY_DOCKER_BASE_IMAGE`` (default: ``docker.io/acspri/limesurvey:<LATEST TAG>``): LimeSurvey base Docker image to use.
- ``LIMESURVEY_DOCKER_DEV_IMAGE`` (default: ``docker.io/acspri/limesurvey:<LATEST TAG>``): LimeSurvey development Docker image to use.
- ``LIMESURVEY_HOST`` (default: ``limesurvey.<LMS_HOST>``): Hostname for LimeSurvey.
- ``LIMESURVEY_PORT`` (default: ``80``): Port for LimeSurvey.
- ``LIMESURVEY_DB_NAME`` (default: ``limesurvey``): Database name for LimeSurvey.
- ``LIMESURVEY_DB_USER`` (default: ``limesurvey``): Database user for LimeSurvey.
- ``LIMESURVEY_DB_PASSWORD``: Database password for LimeSurvey.
- ``LIMESURVEY_ADMIN_USER`` (default: ``admin``): Admin username for LimeSurvey.
- ``LIMESURVEY_ADMIN_PASSWORD``: Admin password for LimeSurvey.
- ``LIMESURVEY_ADMIN_NAME`` (default: ``Lime Administrator``): Admin name for LimeSurvey.
- ``LIMESURVEY_ADMIN_EMAIL`` (default: ``lime@lime.lime``): Admin email for LimeSurvey.
- ``RUN_LIMESURVEY`` (default: ``true``): Whether to run LimeSurvey or not.

You can also override LimeSurvey service configurations by modifying the ``tutorlimesurvey/build/limesurvey/config.php`` file. For more information, check out the `LimeSurvey official documentation <https://manual.limesurvey.org>`__.

The file ``config.php`` is auto generated by the ``docker-entrypoint.sh`` script when the container is started. See:

https://github.com/adamzammit/limesurvey-docker/blob/master/docker-entrypoint.sh#L70-L74

In case you want to keep up with the latest changes in the config.php file, you can do:

1. Connect to the running container: docker exec -it limesurvey bash
2. Copy the file ``/var/www/html/application/config/config.php`` to the host machine
3. Compare the two files and copy any changes from the host machine file to this file

In case you want to make changes to the config.php file and keep them in the plugin, you can do:

4. Make the changes to the file ``tutorlimesurvey/build/limesurvey/config.php``

In both cases you will need to:

5. Commit the changes to the host machine file to git
6. Build a new image: ``tutor images build limesurvey``
7. Push the new image to Docker Hub: ``tutor images push limesurvey``
8. When starting the new container, make sure the new config.php is used. If not, remove the old config.php from the container and restart it.

License
-------

The code in this repository is licensed under the AGPL-3.0 unless otherwise noted.
