#ifndef __SUWS_PRINT__H_
#define __SUWS_PRINT__H_
#include <config/printf.h>

//想要打印,只需要将 SUWS_PRINT_NO 改为 SUWS_PRINT
#define SUWS_DEBUG1

#ifdef SUWS_DEBUG
#define SUWS_PRINT(format, ...) 	printf(format, ##__VA_ARGS__)
#else
#define SUWS_PRINT(format, ...)
#endif


#endif

