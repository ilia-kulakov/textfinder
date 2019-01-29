Text Finder: AEM 6.1
========

This a content package project generated using the multimodule-content-package-archetype.

************************************************************************************************************************

Task

Preconditions:

Upload any PDF documents that contain words "industry leadership" OR "successful product" or both into DAM using AEM UI.

Task:

Java class that could be used for repository search by text and repository paths provided.

Create simple AEM component that calls created Java classes to find nodes containing  "industry leadership" OR
"successful product" under paths /content/geometrixx and /content/dam.

The following requirements should be met:

    Query should be optimized and search indexes needs to be created in order to reach high performance;
    Functionality needs to be implemented using QueryManager and QueryBuilder API. Use inheritance to provide different
    implementations of search functionality.
    AEM component should have the following configuration options in dialog and search should happen based on component
    setup:
        Text that needs to be found in repository;
        Repository paths where search should happen;
        What search API needs to be used: QueryManager or QueryBuilder;

************************************************************************************************************************

Building
--------

This project uses Maven for building. Common commands:

From the root directory, run ``mvn -PautoInstallPackage clean install`` to build the bundle and content package and install to a CQ instance.

From the bundle directory, run ``mvn -PautoInstallBundle clean install`` to build *just* the bundle and install to a CQ instance.

Using with VLT
--------------

To use vlt with this project, first build and install the package to your local CQ instance as described above. Then cd to `content/src/main/content/jcr_root` and run

    vlt --credentials admin:admin checkout -f ../META-INF/vault/filter.xml --force http://localhost:4502/crx

Once the working copy is created, you can use the normal ``vlt up`` and ``vlt ci`` commands.

Specifying CRX Host/Port
------------------------

The CRX host and port can be specified on the command line with:
mvn -Dcrx.host=otherhost -Dcrx.port=5502 <goals>


