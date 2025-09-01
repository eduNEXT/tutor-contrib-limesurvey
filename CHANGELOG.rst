Change Log
==========

..
   All enhancements and patches to openedx_events will be documented
   in this file.  It adheres to the structure of https://keepachangelog.com/ ,
   but in reStructuredText instead of Markdown (for ease of incorporation into
   Sphinx documentation and the PyPI description).

   This project adheres to Semantic Versioning (https://semver.org/).

.. There should always be an "Unreleased" section for changes pending release.

Unreleased
----------

[18.0.0] - 2025-08-28
---------------------

Changed
=======

* Replaced usage of `pkg_resources` with `importlib.resources.files` for template loading.

BREAKING CHANGES
================

* This change drops support for Python <3.9, since `importlib.resources.files` is only available from 3.9 onwards.

[17.0.0] - 2024-05-21
---------------------

* Add support for LimeSurvey for Open edX Quince release for dev, local and k8s installations.

[15.2.0] - 2023-08-08
---------------------

* Add support for custom config.php file during image building.

[15.1.0] - 2023-07-06
---------------------

* Add LimeSurvey XBlock as extra pip requirement.
* Remove config.php since is not overridable.


[15.0.0] - 2023-06-27
---------------------

* Add support LimeSurvey for Open edX Olive release for dev, local and k8s installations.
