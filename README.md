Sample Application Using Google Maps for iOS SDK
================================================

Test driving Google Maps integration in place of Apple Maps.
------------------------------------------------------------

Apple Maps has a bug and cannot handle translucent navigation bars.

If UINavigationBar barTintColor is set to any non-white color, and setTranslucent = YES (default), Apple Maps will color the UINavigationBar black, and when returning to application navigation bar is now a translucent black with shadowed edges.

