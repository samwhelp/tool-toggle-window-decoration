
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
		stdout.printf("application_name: %s\n", window.get_application().get_name());
		stdout.printf("window_name: %s\n", window.get_name());
		stdout.printf("window_class: %s\n", window.get_class_group_name());
		stdout.printf("window_xid: %lu\n", window.get_xid());
		stdout.printf("\n");
		loop.quit();
	});

	loop.run();

	return 0;

}
