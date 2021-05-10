#include "libasm.h"
#include <stdio.h>
#include <string.h>

int	main(void)
{
	printf("%ld\n", ft_strlen("Hello, World!\n"));
	// char *dst = (char *)calloc(6, 1);
	char dst[15];
	// printf("%p\n", dst);
	// printf("%p\n", ft_strcpy(dst, "Hello"));
	printf("%s\n", ft_strcpy(dst, "Hello, World"));
	return (0);
}
