
using Gtk;
using Wnck;

int main (string[] args) {

	Gtk.init(ref args);

	MainLoop loop = new MainLoop();

	// https://valadoc.org/libwnck-3.0/Wnck.Screen.html
	// https://valadoc.org/libwnck-3.0/Wnck.Screen.get_default.html
	// Wnck.Screen screen = Wnck.Screen.get_default();
	Screen screen = Screen.get_default();


	// https://valadoc.org/libwnck-3.0/Wnck.Screen.window_opened.html
	screen.window_opened.connect((window) => {
		stdout.printf("window_name: %s\n", window.get_name());
	});

	loop.run();

	return 0;

}
