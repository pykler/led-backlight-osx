all: install

install:
	xcodebuild install

clean:
	rm -fr led-backlight-osx build
