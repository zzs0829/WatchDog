#include <iostream>
#include <unistd.h>
#include <systemd/sd-daemon.h>

using namespace std;

int main(int , char *[])
{
    int count = 0;
    sd_notify(0, "READY=1");
    while(true) {
        cout << "Hello World!" << ++count << endl;

        sleep(1);
    }
    return 0;
}
