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
MKDIR		= mkdir -p
RM			= rm -rf

# ################################## #
#              EXEC NAME             #
# ################################## #
NAME		= libasm.a

# ################################## #
#               SOURCES              #
# ################################## #
ASM_DIR		= src
ASM_FILES	= ft_strlen.s
					
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
ASM_FLAGS		= -felf64

# ################################## #
#                RULES               #
# ################################## #
all:	$(NAME)

$(O_DIR):
			$(MKDIR) $(O_DIR)

$(O_DIR)/%.o: $(ASM_DIR)/%.s
			$(ASM_COMP) ${ASM_FLAGS} $< -g -wall -o $@


$(NAME): $(O_DIR) $(OBJS)
			ar -rc ${NAME} ${OBJS}

# ################################## #
#                CLEAN               #
# ################################## #
clean:
			$(RM) ${NAME}
			$(RM) $(O_DIR)

fclean:	
			$(RM) ${NAME}
			$(RM) $(O_DIR)

re:			fclean all


.PHONY: all clean fclean re

.NOTPARALLEL:fclean