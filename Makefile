toolName = PodGenerator
executableName = podgen
basePath = /usr/local/bin
installPath = $(basePath)/$(executableName)

build:
	sudo xcode-select -s /Applications/Xcode.app/Contents/Developer
	swift build --disable-sandbox -c release

clean:
	rm -rf .build

install: build
	mkdir -p $(basePath)
	cp -f .build/release/$(toolName) $(installPath)

uninstall:
	rm -f $(installPath)

project:
	swift package generate-xcodeproj
	open PodGenerator.xcodeproj

.PHONY: build clean install uninstall project