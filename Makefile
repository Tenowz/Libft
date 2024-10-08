# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wivongso <wivongso@student.42nice.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/15 15:30:50 by wivongso          #+#    #+#              #
#    Updated: 2022/11/16 12:27:36 by wivongso         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=	libft.a

SRCS        =	ft_striteri.c			ft_strjoin.c			ft_strdup.c    \
				ft_atoi.c               ft_strlcat.c			ft_bzero.c     \
				ft_memchr.c             ft_strlcpy.c			ft_calloc.c    \
				ft_memcmp.c             ft_strlen.c				ft_isalnum.c   \
				ft_memcpy.c             ft_strmapi.c			ft_isalpha.c   \
				ft_memmove.c            ft_strncmp.c			ft_isascii.c   \
				ft_memset.c             ft_strnstr.c			ft_isdigit.c   \
				ft_putchar_fd.c         ft_strrchr.c			ft_isprint.c   \
				ft_putendl_fd.c         ft_strtrim.c			ft_itoa.c      \
				ft_putnbr_fd.c          ft_substr.c				ft_putstr_fd.c \
				ft_tolower.c			ft_split.c				ft_toupper.c   \
				ft_strchr.c

SRCS_BONUS  =	ft_lstadd_front_bonus.c	ft_lstclear_bonus.c		ft_lstdelone_bonus.c \
				ft_lstiter_bonus.c		ft_lstlast_bonus.c		ft_lstnew_bonus.c    \
				ft_lstsize_bonus.c 

OBJS		=	${SRCS:.c=.o}

OBJS_BONUS	=	${SRCS_BONUS:.c=.o}

CC			=	gcc

FLAG		=	-Wall -Wextra -Werror

RM			=	rm -f

AR			=	ar rcs

${NAME}:	${OBJS}
			${AR} ${NAME} ${OBJS}

all:		${NAME}

bonus:		${OBJS} ${OBJS_BONUS}
			${AR} ${NAME} ${OBJS} ${OBJS_BONUS}

clean:
			${RM} ${OBJS} ${OBJS_BONUS}

fclean:		clean
			${RM} ${NAME}

re: 		fclean all

.PHONY:		all clean fclean re