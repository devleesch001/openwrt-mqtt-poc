#include <stdio.h>
#include <mosquitto.h>

int main(int argc, char **argv)
{
    printf("Hello, World!\n");

	int major = 0, minor = 0, revision = 0;
    mosquitto_lib_version(&major, &minor, &revision);

    printf("libmosquitto version %d.%d.%d\n", major, minor, revision);

	return 0;
}
