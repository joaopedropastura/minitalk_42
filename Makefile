# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jpedro-s < jpedro-s@student.42sp.org.br    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/07/02 21:17:58 by jpedro-s          #+#    #+#              #
#    Updated: 2022/07/03 12:34:18 by jpedro-s         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SERVER		=	server
CLIENT		=	client

SRC_CLIENT	=	client.c
SRC_SERVER	=	server.c

CC			=	clang
CFLAGS		=	-Wall -Werror -Wextra
RM			=	rm -f
NAME		=	minitalk
SCR_DIR		=	./src

LIBFT		=	libft/libft.a
OBJS_CLIENT	=	${SRC_CLIENT:.c=.o}
OBJS_SERVER	=	${SRC_SERVER:.c=.o}

all:	$(SERVER) $(CLIENT)

$(SERVER): $(OBJS_SERVER)
	make -C libft
	$(CC) $(CFLAGS) $(SRC_SERVER) $(LIBFT) -o $(CLIENT)

(CLIENT): $(OBJS_CLIENT)
	make -C libft
	$(CC) $(CFLAGS) $(SRC_CLIENT) $(LIBFT) -o $(CLIENT)

clean:
	make -C libft clean
	rm -f $(OBJS_CLIENT) $(OBJS_SERVER)

fclean: clean
	make -C ./libft fclean
	rm -f $(CLIENT) $(SERVER)

re: fclean all

.PYTHON: all clean fclean re
