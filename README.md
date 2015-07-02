Sequence of steps followed while creating local ruby project from scratch
========================================================================


gem install bundler

bundle init -- to create the sample gem file in project root

Create folder structure:
-----------------------
mkdir features

mkdir features/step_definitions

mkdir features/support

touch features/<featurename>.feature


Running from terminal to view results in html:
=============================================
cucumber features/<feature name>.feature --format html > ~/Downloads/Features.html