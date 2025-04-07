# Makefile for Africa Exchange

#env
UPDATE_REPO ?= false
CLEAN ?= true
IS_IOS ?= true
IS_ANDROID ?= true

# Variables
CLEAN_VARIABLE := cleaning the repository
DEPENDENCY_VARIABLE := getting dependencies
DEPLOY_VARIABLE := building app bundle for production deployment
DEPLOY_IOS_VARIABLE := building .ios file for production deployment
DE_INTEGRATE_POD_VARIABLE := de-integrating pod file
ENTER_IOS_FOLDER_VARIABLE := enter ios folder for ios related command
COME_OUT_IOS_FOLDER_VARIABLE := enter ios folder for ios related command
REMOVE_POD_LOCK_VARIABLE := removing podfile.lock file
INSTALL_IOS_DEPENDENCIES_VARIABLE := install ios dependencies

# Function to clean dependencies, get dependencies and also build appbundle to be uploaded to the playstore as well as ios
clean_get_prod:
	@if [ "$(strip $(CLEAN))" = "true" ]; then \
		${MAKE} clean_get_dependency; \
	else \
		echo "Skipping clean_get_dependency"; \
	fi

	@if [ "$(strip $(IS_IOS))" = "true" ]; then \
		echo "${DEPLOY_IOS_VARIABLE}"; \
		flutter build ios --target lib/main_prod.dart --dart-define-from-file=/Users/ajagbequadri/Documents/flutter_secret_keys/africa_exchange_keys/exchange-prod.json; \
	else \
		echo "Skipping ios build"; \
	fi

	@if [ "$(strip $(IS_ANDROID))" = "true" ]; then \
		echo "${DEPLOY_VARIABLE}"; \
		flutter build appbundle --target lib/main_prod.dart --dart-define-from-file=/Users/ajagbequadri/Documents/flutter_secret_keys/africa_exchange_keys/exchange-prod.json --flavor prod; \
	else \
		echo "Skipping appbundle build"; \
	fi

# Function to clean dependencies, get dependencies and also build appbundle to be uploaded to the playstore as well as ios
clean_get_test:
	@if [ "$(strip $(CLEAN))" = "true" ]; then \
		${MAKE} clean_get_dependency; \
	else \
		echo "Skipping clean_get_dependency"; \
	fi

	@if [ "$(strip $(IS_IOS))" = "true" ]; then \
		echo "${DEPLOY_IOS_VARIABLE}"; \
		flutter build ios --target lib/main_dev.dart --dart-define-from-file=/Users/ajagbequadri/Documents/flutter_secret_keys/africa_exchange_keys/exchange-dev.json --flavor dev; \
	else \
		echo "Skipping ios build"; \
	fi

	@if [ "$(strip $(IS_ANDROID))" = "true" ]; then \
		echo "${DEPLOY_VARIABLE}"; \
		flutter build apk --split-per-abi --target lib/main_dev.dart --dart-define-from-file=/Users/ajagbequadri/Documents/flutter_secret_keys/africa_exchange_keys/exchange-dev.json --flavor dev; \
	else \
		echo "Skipping appbundle build"; \
	fi

#Function to just clean and get dependencies
clean_get_dependency:
	@echo "=${CLEAN_VARIABLE}"
	flutter clean

	@echo "${DEPENDENCY_VARIABLE}"   # Printing the log on console
	flutter pub get   # Command for getting dependencies

#Function to clean ios folder
clean_pod_file:
	@echo "CLEAN is: $(CLEAN)"
	@if [ "$(strip $(CLEAN))" = "true" ]; then \
		${MAKE} clean_get_dependency; \
	else \
		echo "Skipping clean_get_dependency"; \
	fi

	@echo "${DE_INTEGRATE_POD_VARIABLE}"
	cd ios && pod deintegrate

	@echo "${REMOVE_POD_LOCK_VARIABLE}"
	cd ios && rm Podfile.lock

	@if [ "$(strip $(UPDATE_REPO))" = "true"]; then \
		echo "Installing pod dependencies and repository";\
		cd ios && pod install --repo-update && clear; \
	else \
		echo "${INSTALL_IOS_DEPENDENCIES_VARIABLE}";\
		cd ios && pod install && clear; \
	fi

#Function to run build_runner and then replace encrypt with toString
build_and_replace:
	@echo "Running build_runner..."
	flutter pub run build_runner build --delete-conflicting-outputs && clear

	@echo "Replacing String.fromJson(e as Map<String, dynamic>) with e.toString()..."
	find lib/ -type f -name "*.dart" -exec sed -i '' 's/String\.fromJson(e as Map<String, dynamic>)/e.toString()/g' {} \;

	@echo "Build and replace process completed."

.PHONY: clean_get_prod clean_get_test clean_get_dependency clean_pod_file build_and_replace #it name specify the make command name