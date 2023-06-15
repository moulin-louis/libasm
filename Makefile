# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: loumouli <loumouli@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/13 13:30:11 by loumouli          #+#    #+#              #
#    Updated: 2023/02/16 12:54:18 by loumouli         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# ################################## #
#               COMMAND              #
# ################################## #
ASM_COMP	= nasm
C_COMP		= gcc
MKDIR		= mkdir -p
RM			= rm -rf
# ################################## #
#              EXEC NAME             #
# ################################## #
NAME		= libasm.a

TEST		= test_lib
# ################################## #
#               SOURCES              #
# ################################## #
ASM_DIR		= src
ASM_FILES	=	ft_read.s	\
				ft_strcmp.s	\
				ft_strcpy.s \
				ft_strdup.s	\
				ft_strlen.s \
				ft_write.s

SRCS		= $(patsubst %, $(ASM_DIR)/%, $(ASM_FILES))
# ################################## #
#               OBJECTS              #
# ################################## #
O_DIR		= objs
O_FILES		= $(ASM_FILES:.s=.o)
OBJS		= $(patsubst %, $(O_DIR)/%, $(O_FILES))

# ################################## #
#                FLAGS               #
# ################################## #
ASM_FLAGS	= -felf64 -wall -g -O0
C_FLAGS		=  -g -O0


LIBFT = libft.a
# ################################## #
#                RULES               #
# ################################## #
all:	fclean $(NAME) ${LIBFT} ${TEST}

$(O_DIR):
		$(MKDIR) $(O_DIR)

$(O_DIR)/%.o: $(ASM_DIR)/%.s
		$(ASM_COMP) ${ASM_FLAGS} $< -o $@

$(NAME): $(O_DIR) $(OBJS)
		ar -rcs ${NAME} ${OBJS}

$(TEST):
		${C_COMP} ./src_test/main.c ${C_FLAGS} -L. -lasm -lft -o ${TEST}

${LIBFT}:
	@echo 'Compiling libft for perf comparaison...'
	@make --no-print-directory -C ./libft
	@cp ./libft/${LIBFT} .

# ################################## #
#                CLEAN               #
# ################################## #
clean:
			@$(RM) ${O_DIR}
			@${RM} ${O_DIR_TEST}
			@make --no-print-directory -C ./libft clean

fclean:	clean
			@$(RM) $(NAME)
			@${RM} ${TEST}
			@${RM} ${LIBFT}
			@make --no-print-directory -C ./libft fclean

re:			fclean all


.PHONY: all clean fclean re

.NOTPARALLEL:fclean