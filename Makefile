##
## Makefile for Makefile in /home/TiphaineLaurent/Makefile
## 
## Made by Tiphaine LAURENT
## Login   <TiphaineLaurent@epitech.net>
## 
## Started on  Thu May 25 16:01:57 2017 Tiphaine LAURENT
## Last update Thu May 25 16:02:22 2017 Tiphaine LAURENT
##

CC		?=	gcc						# Compiler to use; gcc is default in many case
CFLAGS		?=	-W -Wall -Wextra -Werror -Wshadow		# The most essentiol error flag to make your code safe
CFLAGS		+=	-ansi -pedantic					# Try to comment this line if you have trouble compiling.
CFLAGS		+=	-fstack-protector-strong			# Protect the stack and might protect Segmentation fault in some case

CPPFLAGS	?=	-I include					# Directory for your header files

LDFLAGS		?=	-l my -L libs					# A library (-l) with her path (-L)
LDFLAGS		+=	-l printf -L libs				# An other library and her path

RM		?=	rm -f						# Remove command

NAME		?=	test						# Name of your project

DIR		?=	src/						# Directory for you source files
SRCS		?=	main.c						# List of your source files

OBJS		?=	$(foreach SRCS,$(SRCS),$(DIR)$(SRCS:.c=.o))	# Command to create object file before final compilation


all:		$(NAME)							# Basic command to compile with make

$(NAME):	$(OBJS)							# Create *.o files
		$(CC) -o $(NAME) $(OBJS) $(LDFLAGS)			# Compile *.o into a binary

create:
		@mkdir src include lib					# Create essential directory
clean:
		$(RM) $(OBJS)						# Delete all *.o files

fclean:		clean							# Delete all *.o files
		$(RM) $(NAME)						# Delete your project's binary

re:		fclean all						# Delete old files then recompile

.PHONY:		all clean fclean re					# Test command that create your binary then clean everything twice
