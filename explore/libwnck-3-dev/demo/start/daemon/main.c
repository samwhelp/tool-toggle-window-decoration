
#include <gdk/gdk.h>
#include <gdk/gdkx.h>

#define WNCK_I_KNOW_THIS_IS_UNSTABLE
#include <libwnck/libwnck.h>


GMainLoop *loop = NULL;


static void
window_opened_cb (
	WnckScreen *screen,
	WnckWindow *window
) {
	g_print("on_window_opened\n");
	g_print("\n");
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
		g_print("Connect screen(%d) signal(window_opened) callback!\n", i);
		g_print("\n");

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