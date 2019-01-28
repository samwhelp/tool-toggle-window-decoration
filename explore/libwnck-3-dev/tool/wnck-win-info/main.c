
#include <gdk/gdk.h>
#include <gdk/gdkx.h>


#include <libwnck/libwnck.h>


GMainLoop *loop = NULL;


static void
window_opened_cb (
	WnckScreen *screen,
	WnckWindow *window
) {
	//g_print("on_window_opened\n");
	//g_print("\n");


	char *application_name = g_strdup(wnck_application_get_name(wnck_window_get_application(window)));
	g_print("application_name: %s\n", application_name);


	char *window_name = g_strdup(wnck_window_get_name(window));
	g_print("window_name: %s\n", window_name);


	char *window_class = g_strdup(wnck_class_group_get_id(wnck_window_get_class_group(window))); //https://developer.gnome.org/libwnck/stable/WnckWindow.html#wnck-window-get-xid
	g_print("window_class: %s\n", window_class);


	gulong window_xid = wnck_window_get_xid(window); //https://developer.gnome.org/libwnck/stable/WnckWindow.html#wnck-window-get-xid
	g_print("window_xid: %d\n", window_xid);



	g_print("\n");


	g_main_loop_quit (loop); //https://developer.gnome.org/glib/stable/glib-The-Main-Event-Loop.html#g-main-loop-quit

	return;
}

static void
init_screens (
	void
) {
	int i;
	const int num_screens = gdk_display_get_n_screens(gdk_display_get_default());
	for (i = 0 ; i < num_screens; ++i) {
		WnckScreen *screen = wnck_screen_get(i);
		/* Connect a callback to the window opened event in libwnck */
		g_signal_connect(screen, "window_opened", (GCallback)window_opened_cb, NULL);
		//g_print("Connect screen(%d) signal(window_opened) callback!\n", i);
		//g_print("\n");

	}
}


int
main (
	int argc,
	char **argv
) {

	gdk_init(&argc, &argv);


	init_screens();


	loop = g_main_loop_new(NULL, TRUE);
	g_main_loop_run(loop);

	return 0;
}
