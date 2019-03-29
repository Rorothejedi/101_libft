# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    Makefile                                         .::    .:/ .      .::    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: rcabotia <marvin@le-101.fr>                +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2018/10/03 10:09:05 by rcabotia     #+#   ##    ##    #+#        #
#    Updated: 2019/03/28 18:28:06 by rcabotia    ###    #+. /#+    ###.fr      #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #

NAME = libft.a

SRCS = ft_memset.c			\
	   ft_bzero.c			\
	   ft_memcpy.c			\
	   ft_memccpy.c			\
	   ft_memmove.c			\
	   ft_memchr.c			\
	   ft_memcmp.c			\
	   ft_strlen.c			\
	   ft_strdup.c			\
	   ft_strcpy.c			\
	   ft_strncpy.c			\
	   ft_strcat.c			\
	   ft_strncat.c			\
	   ft_strlcat.c			\
	   ft_strchr.c			\
	   ft_strrchr.c			\
	   ft_strstr.c			\
	   ft_strnstr.c			\
	   ft_strcmp.c			\
	   ft_strncmp.c			\
	   ft_atoi.c			\
	   ft_isalpha.c			\
	   ft_isdigit.c			\
	   ft_isalnum.c			\
	   ft_isascii.c			\
	   ft_isprint.c			\
	   ft_toupper.c			\
	   ft_tolower.c			\
	   ft_memalloc.c		\
	   ft_memdel.c			\
	   ft_strnew.c			\
	   ft_strdel.c			\
	   ft_strclr.c			\
	   ft_striter.c			\
	   ft_striteri.c		\
	   ft_strmap.c			\
	   ft_strmapi.c			\
	   ft_strequ.c			\
	   ft_strnequ.c			\
	   ft_strsub.c			\
	   ft_strjoin.c			\
	   ft_strtrim.c			\
	   ft_strsplit.c		\
	   ft_itoa.c			\
	   ft_putchar.c			\
	   ft_putstr.c			\
	   ft_putendl.c			\
	   ft_putnbr.c			\
	   ft_putchar_fd.c		\
	   ft_putstr_fd.c		\
	   ft_putendl_fd.c		\
	   ft_putnbr_fd.c		\
	   ft_lstnew.c			\
	   ft_lstdelone.c		\
	   ft_lstdel.c			\
	   ft_lstadd.c			\
	   ft_lstiter.c			\
	   ft_lstmap.c			\
	   ft_strupcase.c		\
	   ft_strlowcase.c		\
	   ft_strcapitalize.c	\
	   ft_strrev.c			\
	   ft_strndup.c			\
	   ft_swap.c			\
	   ft_range.c			\
	   ft_is_negative.c		\
	   ft_power.c			\
	   ft_sqrt.c			\
	   ft_any.c				\
	   ft_is_sort.c			\
	   ft_isnbr.c			\
	   ft_realloc.c			\
	   ft_strichr.c			\
	   ft_getnbr.c			\
	   ft_arrdel_c.c		\
	   ft_arrdel_i.c		\
	   ft_abs.c				\
	   ft_ftoa.c			\
	   get_next_line.c

OBJS = $(SRCS:.c=.o)

HEADERS = ./libft.h

CC = gcc
FLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJS)
	@ ar ruc $(NAME) $(OBJS)
	@ ranlib $(NAME)
	@ echo "\n\nCompilation $(NAME) ..."\
	"................................................... \033[32m[OK]\033[0m"

%.o: %.c loading
	@ $(CC) $(FLAGS) -I $(HEADERS) -o $@ -c $<
	@ printf "\033[7;32m \033[0m"

loading:
	@ echo "\nCompilation in progress..."

clean:
	@ rm -f $(OBJS)
	@ echo "Delete *.o ($(NAME)) ...."\
	"................................................. \033[32m[OK]\033[0m"

fclean: clean
	@ rm -f $(NAME)
	@ echo "Delete $(NAME) ....."\
	"...................................................... \033[32m[OK]\033[0m"

re: fclean all
