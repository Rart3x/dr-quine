NAME = Colleen
OBJ_DIR = .obj

SRCS := Colleen.c
OBJS := $(patsubst %.c,$(OBJ_DIR)/%.o,$(SRCS))
DEPS := $(OBJS:.o=.d)

CC = gcc
CFLAGS = -Wall -Wextra -Werror
CPPFLAGS = -MMD -MP

all: $(NAME)

$(NAME): $(OBJS)
	@printf "\033[0;32mCompilation successful.\033[0m\n"
	@$(CC) $(CFLAGS) $(OBJS) -o $(NAME)

$(OBJ_DIR)/%.o : %.c
	@mkdir -p $(@D)
	@$(CC) $(CFLAGS) $(CPPFLAGS) -c -o $@ $<

-include $(DEPS)

clean:
	@rm -rf $(OBJ_DIR)
	@printf "\033[0;32mCleanup successful.\033[0m\n"

fclean: clean
	@rm -f $(NAME)
	@printf "\033[0;32mFull cleanup successful.\033[0m\n"

re: fclean all

.PHONY: all clean fclean re