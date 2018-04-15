##
## Makefile
## 
## Made by Tiphaine LAURENT
##

CC		?=	gcc						# Compiler to use; gcc is default in many case
CFLAGS		?=	-W -Wall -Wextra -Werror -Wshadow		# The most essentiol error flag to make your code safe
CFLAGS		+=	-ansi -pedantic					# Try to comment this line if you have trouble compiling.
CFLAGS		+=	-fstack-protector-strong			# Protect the stack and might protect Segmentation fault in some case

CPPFLAGS	?=	-I include					# Directory for your header files

LDLIBS		?=	-l mylib					# A library (-l)
LDFLAGS		?=	-L libs						# with her path (-L)

LDLIBS		+=	-l m						# Math library

RM		?=	rm -f						# Remove command

NAME		?=	test						# Name of your project

SRC_DIR		?=	src						# Directory for your source files
SRC_FILES	?=	main.c	\					# Names of your source files
SRCS		?=	$(addprefix $(SRC_DIR)/, $(SRC_FILES)		# Paths to your source files

OBJS		?=	$(SRCS:.c=.o)					# Command to create object files


all:		$(NAME)							# Basic command to compile with make

$(NAME):	$(OBJS)							# Create *.o files
		$(CC) -o $(NAME) $(OBJS) $(LDLIBS) $(LDFLAGS)		# Compile *.o into a binary

create:
		@mkdir src include lib					# Create essential directory

clean:
		$(RM) $(OBJS)						# Delete all *.o files

fclean:		clean							# Delete all *.o files
		$(RM) $(NAME)						# Delete your project's binary

re:		fclean all						# Delete old files then recompile

.PHONY:		all clean fclean re					# Test command that create your binary then clean everything twice
