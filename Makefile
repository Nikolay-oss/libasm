NA		= nasm

CC		= gcc

NAME	= libasm.a

BIN_NAME = test_libasm

SRC_DIR	= ./src/

OBJ_DIR	= ./obj/

SRC		= $(SRC_DIR)ft_strlen.s	$(SRC_DIR)ft_strcpy.s	$(SRC_DIR)ft_strcmp.s \
		  $(SRC_DIR)ft_write.s	$(SRC_DIR)ft_read.s		$(SRC_DIR)ft_strdup.s

OBJ		= $(patsubst $(SRC_DIR)%.s, $(OBJ_DIR)%.o, $(SRC))

# NFLAGS	= -fmacho64 # macOS

NFLAGS	= -felf64 # ubuntu

CFLAGS	= -Wall -Wextra -Werror

LIB		= -L. -lasm

all:	$(OBJ_DIR)	$(NAME)

$(OBJ_DIR)%.o:	$(SRC_DIR)%.s
	$(NA) $(NFLAGS) $< -o $@

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

$(NAME):	$(OBJ)	main.c	libasm.h
	ar rcs $(NAME) $(OBJ)

test:	main.c	libasm.h	all
	$(CC) $(CFLAGS) main.c $(LIB) -o $(BIN_NAME)

clean:
	rm -rf $(OBJ_DIR)

fclean:	clean
	rm -rf $(NAME)

cleantest:	fclean
	rm -rf $(BIN_NAME)

re:	fclean all
