##
## EPITECH PROJECT, 2022
## makefile
## File description:
## makefile bsq
##

SRC	=	main.c


OBJ	=	$(SRC:.c=.o)

NAME	=	marvin_test
RED=\033[0;31m
GREEN=\033[0;32m
YELLOW=\033[0;33m
BLUE=\033[0;34m
MAGENTA=\033[0;35m
CYAN=\033[0;36m
NC=\033[0m

all: $(NAME)

$(NAME):
	@echo "${CYAN}"
	@echo "${NC}"
	@echo "${BLUE}\033[5mCompiling...${NC}"
	@gcc $(SRC) -o $(NAME) -g3
	@echo "${GREEN}\033[5m[✓] Compilation done.${NC}"

clean:
	@echo "${YELLOW}\033[5mCleaning up...${NC}"
	@rm -f $(OBJ)
	@echo "${GREEN}\033[5m[✓] Cleaning up done.${NC}"

fclean: clean
	@rm -f $(NAME)
	@echo "${GREEN}\033[5m[✓] Full clean done.${NC}"

re: fclean all