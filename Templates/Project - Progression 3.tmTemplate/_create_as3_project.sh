#!/bin/bash

#-------------------------------------------------------------------------
#
# New AS3 Project
# 
# v3. Switched from copying a directory structure to a flat 
# Hierarchy as TM doesn't support Template duplication 
# properly when a directory is present.
#
# v4. Removing support for Flex Builder, as Adobe have  
# changed the underlying format between version 3 + 4.
# 
# Also taking the opportunity to use the swfobject as the 
# embed method as it is much cleaner.  
#
# Added ant build file. 
#
#-------------------------------------------------------------------------

defaultProjectName="MyProject.tmproj";
defaultClassPath="myproject";

fullProjectPath=$(CocoaDialog filesave \
			--text "プロジェクトに名前をつけ、保存するフォルダを選択して下さい。" \
			--title "Create New Project" \
			--with-extensions .tmproj \
			--with-file "$defaultProjectName");

if [ -n "$fullProjectPath" ]; then
	
	fullProjectPath=$(tail -n1 <<<"$fullProjectPath");
	projectName=`basename "$fullProjectPath" ".tmproj"`;
	projectPath=`dirname "$fullProjectPath"`;
	
	# Now ask what the class path should be, used to create default dirs.
	fullClassPath=$(CocoaDialog standard-inputbox \
				--title "Project Class Path" \
				--text "$defaultClassPath" \
				--informative-text "Enter the project class path:");
	
	if [ -n "$fullClassPath" ]; then
		classPath=$(tail -n1 <<<"$fullClassPath");
		classPath=`echo $classPath | tr '.' '/'`;
		classPathDirectory="$projectPath/$projectName/src/$classPath/";
		
		# Create our project directory structure.
		mkdir -p "$projectPath/$projectName/deploy";
		mkdir -p "$projectPath/$projectName/lib/";
		#mkdir -p "$projectPath/$projectName/src/$classPath";
		#mkdir -p "$projectPath/$projectName/src/imports";
		
		# This recursively creates all source code folders,
		# creating any missing directories along the way
		mkdir -p "$classPathDirectory/buttons";
		mkdir -p "$classPathDirectory/assets";
   		mkdir -p "$classPathDirectory/pages";
    		mkdir -p "$classPathDirectory/scenes";
		mkdir -p "$classPathDirectory/commons";
		mkdir -p "$classPathDirectory/imports";
		
		# Gather variables to be substituted.
		export TM_PROJECT_NAME="$projectName";
		export TM_PACKAGE_PATH=`echo $classPath | tr '/' '.'`;
		export TM_CLASS_PATH="$classPath";
		
		export TM_YEAR=`date "+%Y"`;
		export TM_DATE=`date "+%d.%m.%Y"`;
		
		# Customise file variables for the new project and rename
		# files to match the project name.
		
		# Index setting
    export TM_NEW_FILE_BASENAME="Index";
    export TM_OUTPUT_FILE_BASENAME="index"
    export TM_ALT_PROJ="$projectName Preloader.tmproj"
		perl -pe 's/\$\{([^}]*)\}/$ENV{$1}/g' < "Project.tmproj.xml" > "$projectPath/$projectName/$projectName Index.tmproj";
		perl -pe 's/\$\{([^}]*)\}/$ENV{$1}/g' < "default-config.xml" > "$projectPath/$projectName/src/Index-config.xml";
		# Preloader setting
    export TM_NEW_FILE_BASENAME="Preloader";
    export TM_OUTPUT_FILE_BASENAME="preloader"
    export TM_ALT_PROJ="$projectName Index.tmproj"
		perl -pe 's/\$\{([^}]*)\}/$ENV{$1}/g' < "Project.tmproj.xml" > "$projectPath/$projectName/$projectName Preloader.tmproj";
		perl -pe 's/\$\{([^}]*)\}/$ENV{$1}/g' < "default-config.xml" > "$projectPath/$projectName/src/Preloader-config.xml";
		# src files
		perl -pe 's/\$\{([^}]*)\}/$ENV{$1}/g' < "Index.as" > "$projectPath/$projectName/src/Index.as";
		perl -pe 's/\$\{([^}]*)\}/$ENV{$1}/g' < "Preloader.as" > "$projectPath/$projectName/src/Preloader.as";
		perl -pe 's/\$\{([^}]*)\}/$ENV{$1}/g' < "IndexScene.as" > "$projectPath/$projectName/src/$classPath/scenes/IndexScene.as";
		# deploy files
		perl -pe 's/\$\{([^}]*)\}/$ENV{$1}/g' < "index.html" > "$projectPath/$projectName/deploy/index.html";
		perl -pe 's/\$\{([^}]*)\}/$ENV{$1}/g' < "crossdomain.xml" > "$projectPath/$projectName/deploy/crossdomain.xml";
		cp -R "contents/" "$projectPath/$projectName/deploy/contents" 

		# Open the project in TextMate.
		open -a "TextMate.app" "$projectPath/$projectName/$projectName Index.tmproj";
		
	fi

fi