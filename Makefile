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
CFLAGS		=	-W -Wall
#CFLAGS		+=	-ansi -pedantic
CPPFLAGS	=	-I./includes

LDFLAGS		=	-lmy -lprintf -L./libs

RM		=	rm -f

NAME		=	

DIR		=	./srcs/
SRCS		=	main.c

OBJS		=	$(foreach SRCS,$(SRCS),$(DIR)$(SRCS:.c=.o))


all:		$(NAME)

$(NAME):	$(OBJS)
		$(CC) -o $(NAME) $(OBJS) $(LDFLAGS)

create:
		@mkdir srcs includes libs
clean:
		$(RM) $(OBJS)

fclean:		clean
		$(RM) $(NAME)

re:		fclean all

.PHONY:		all clean fclean re
