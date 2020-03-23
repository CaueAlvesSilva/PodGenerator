toolName = PodGenerator
executableName = podgen
basePath = /usr/local/bin
installPath = $(basePath)/$(executableName)

build:
	swift build --disable-sandbox -c release

clean:
	rm -rf .build

install: build
	mkdir -p $(basePath)
	cp -f .build/release/$(toolName) $(installPath)

uninstall:
	rm -f $(installPath)

.PHONY: build clean install uninstall