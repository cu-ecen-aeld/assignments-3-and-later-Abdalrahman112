#include <stdio.h>
#include <syslog.h>

int main(int argc, char * argv[]){
    
    openlog(NULL, LOG_CONS, LOG_USER);

    if(argc < 2){
        syslog(LOG_ERR, "Missing argument");
        closelog();
        return 1;
    }

    const char * Fpath = argv[1];
    const char * Str = argv[2];

    FILE* file = fopen(Fpath, "w");

    if(file == NULL){
        syslog(LOG_ERR, "File could not be created");
        closelog();
        return 1;
    }
    
    fprintf(file, "%s", Str);

    syslog(LOG_DEBUG, "Writing %s to %s", Str, Fpath);


    fclose(file);

    closelog();
    return 0;
}