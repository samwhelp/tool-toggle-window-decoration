
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
		stdout.printf("window_xid: %lu;   window_class: %s;   application_name: %s;   window_name: %s;   \n",
			window.get_xid(),
			window.get_class_group_name(),
			window.get_application().get_name(),
			window.get_name()
		);

		loop.quit();
	});

	loop.run();

	return 0;

}
