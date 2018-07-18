# Please have the following installed by Monday morning
* [JDK Installation](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
    1. If you do not already have a JDK installed, please install
        * We will be using Java 8 throughout the program
            * __NOT__ Java 7, Java 9, or Java 10
    2. For 64-bit systems download x64, for 32-bit systems download x86
        * How do I check if my system is [32-bit or 64-bit](https://support.microsoft.com/en-us/help/15056/windows-7-32-64-bit-faq)?
    3. Set the environment variables
        * Set 'path' to have directory of '/bin' folder of JDK (eg ..\java\jdk_version\bin)
        * Set JAVA_HOME -> \java\jdk_version
        * [Help](https://www.java.com/en/download/help/path.xml)
    4. To verify you correctly installed the JDK, pull up a command prompt and type ```java -version```
        * This will print the version of the JDK, if it is found
* [Maven](https://maven.apache.org/download.cgi)
    1. Set the environment variables *M2_HOME* and *MAVEN_HOME*
        * M2_HOME should be the absolute path to where you extracted Maven
            * For example, C:/Apache/apache-maven-3.5.3
        * MAVEN_HOME should be the absolute path to the bin inside the extracted Maven directory
            * For example, C:/Apache/apache-maven-3.5.3/bin
    2. To verify that you have correctly configured Maven, open up a command prompt and type the command ```mvn --v```
        * You should see printed to stdout Maven Home, the Java version, and Java home
* [Spring Tool Suites](https://spring.io/tools)
    * You may need to rename the downloaded file to install. For whatever reason, Windows does not like how long the originally named downloaded file