@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%"=="" @echo off
@rem ##########################################################################
@rem
@rem  cql-to-elm-cli startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.
@rem This is normally unused
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and CQL_TO_ELM_CLI_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if %ERRORLEVEL% equ 0 goto execute

echo. 1>&2
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH. 1>&2
echo. 1>&2
echo Please set the JAVA_HOME variable in your environment to match the 1>&2
echo location of your Java installation. 1>&2

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo. 1>&2
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME% 1>&2
echo. 1>&2
echo Please set the JAVA_HOME variable in your environment to match the 1>&2
echo location of your Java installation. 1>&2

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\cql-to-elm-cli-3.18.0-SNAPSHOT.jar;%APP_HOME%\lib\cql-to-elm-3.18.0-SNAPSHOT.jar;%APP_HOME%\lib\quick-3.18.0-SNAPSHOT.jar;%APP_HOME%\lib\qdm-3.18.0-SNAPSHOT.jar;%APP_HOME%\lib\model-jaxb-3.18.0-SNAPSHOT.jar;%APP_HOME%\lib\elm-jaxb-3.18.0-SNAPSHOT.jar;%APP_HOME%\lib\slf4j-simple-1.7.36.jar;%APP_HOME%\lib\cql-3.18.0-SNAPSHOT.jar;%APP_HOME%\lib\elm-3.18.0-SNAPSHOT.jar;%APP_HOME%\lib\model-3.18.0-SNAPSHOT.jar;%APP_HOME%\lib\slf4j-api-1.7.36.jar;%APP_HOME%\lib\jopt-simple-4.7.jar;%APP_HOME%\lib\jaxb-runtime-4.0.5.jar;%APP_HOME%\lib\org.eclipse.persistence.moxy-4.0.2.jar;%APP_HOME%\lib\jackson-databind-2.16.1.jar;%APP_HOME%\lib\jackson-annotations-2.16.1.jar;%APP_HOME%\lib\jackson-core-2.16.1.jar;%APP_HOME%\lib\jackson-module-jakarta-xmlbind-annotations-2.16.1.jar;%APP_HOME%\lib\jaxb-core-4.0.5.jar;%APP_HOME%\lib\jakarta.xml.bind-api-4.0.2.jar;%APP_HOME%\lib\jaxb2-basics-runtime-3.0.0.jar;%APP_HOME%\lib\ucum-1.0.8.jar;%APP_HOME%\lib\commons-text-1.10.0.jar;%APP_HOME%\lib\org.eclipse.persistence.core-4.0.2.jar;%APP_HOME%\lib\angus-mail-2.0.2.jar;%APP_HOME%\lib\angus-activation-2.0.2.jar;%APP_HOME%\lib\jakarta.mail-api-2.1.2.jar;%APP_HOME%\lib\jakarta.activation-api-2.1.3.jar;%APP_HOME%\lib\antlr4-4.13.1.jar;%APP_HOME%\lib\antlr4-runtime-4.13.1.jar;%APP_HOME%\lib\commons-lang3-3.12.0.jar;%APP_HOME%\lib\txw2-4.0.5.jar;%APP_HOME%\lib\istack-commons-runtime-4.1.2.jar;%APP_HOME%\lib\org.eclipse.persistence.asm-9.5.0.jar;%APP_HOME%\lib\ST4-4.3.4.jar;%APP_HOME%\lib\antlr-runtime-3.5.3.jar;%APP_HOME%\lib\org.abego.treelayout.core-1.0.3.jar;%APP_HOME%\lib\icu4j-72.1.jar


@rem Execute cql-to-elm-cli
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %CQL_TO_ELM_CLI_OPTS%  -classpath "%CLASSPATH%" org.cqframework.cql.cql2elm.cli.Main %*

:end
@rem End local scope for the variables with windows NT shell
if %ERRORLEVEL% equ 0 goto mainEnd

:fail
rem Set variable CQL_TO_ELM_CLI_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
set EXIT_CODE=%ERRORLEVEL%
if %EXIT_CODE% equ 0 set EXIT_CODE=1
if not ""=="%CQL_TO_ELM_CLI_EXIT_CONSOLE%" exit %EXIT_CODE%
exit /b %EXIT_CODE%

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
