#include "libasm.h"
#include <stdio.h>

int	main(void)
{
	printf("%ld\n", ft_strlen("Hello, World!\n"));
	char *dst = (char *)calloc(6, 1);
	// printf("%p\n", dst);
	// printf("%p\n", ft_strcpy(dst, "Hello"));
	printf("%s\n", ft_strcpy(dst, "Hello"));
	return (0);
}
