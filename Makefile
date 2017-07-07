##
## Makefile for Makefile in /home/TiphaineLaurent/Makefile
## 
## Made by Tiphaine LAURENT
## Login   <TiphaineLaurent@epitech.net>
## 
## Started on  Thu May 25 16:01:57 2017 Tiphaine LAURENT
## Last update Thu May 25 16:02:22 2017 Tiphaine LAURENT
##

CC		=	gcc
CFLAGS		=	-W -Wall -Wextra -Werror -Wshadow
CFLAGS		+=	-ansi -pedantic					#Try to comment this line if you have trouble compiling.
CFLAGS		+=	-fstack-protector-strong

CPPFLAGS	=	-I include

LDFLAGS		=	-l my -L libs
LDFLAGS		+=	-l printf -L libs

RM		=	rm -f

NAME		=	

DIR		=	src/
SRCS		=	main.c

OBJS		=	$(foreach SRCS,$(SRCS),$(DIR)$(SRCS:.c=.o))


all:		$(NAME)

$(NAME):	$(OBJS)
		$(CC) -o $(NAME) $(OBJS) $(LDFLAGS)

create:
		@mkdir src include lib
clean:
		$(RM) $(OBJS)

fclean:		clean
		$(RM) $(NAME)

re:		fclean all

.PHONY:		all clean fclean re
