#include "libasm.h"
#include <stdio.h>
#include <string.h>
#include <unistd.h>

int	main(void)
{
	printf("%ld\n", ft_strlen("Hello, World!\n"));
	// char *dst = (char *)calloc(6, 1);
	char dst[15];
	// printf("%p\n", dst);
	// printf("%p\n", ft_strcpy(dst, "Hello"));
	printf("%s\n", ft_strcpy(dst, "Hello, World"));
	printf("%d\n", ft_strcmp("HAllo", "HAll"));
	// printf("ft_read -> %ld\n", ft_read(0, dst, 3));
	// dst[3] = '\0';
	// printf(" <size> -> |%ld|", ft_write(1, dst, 4));
	return (0);
}
