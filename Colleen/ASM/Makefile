NAME = Colleen
OBJ_DIR = .obj

SRCS := Colleen.asm
OBJS := $(patsubst %.asm,$(OBJ_DIR)/%.o,$(SRCS))

NASM = nasm
NASMFLAGS = -f elf64

LD = ld
LDFLAGS = -o $(NAME)

all: $(NAME)

$(NAME): $(OBJS)
	@printf "\033[0;32mCompilation successful.\033[0m\n"
	@$(LD) $(LDFLAGS) $(OBJS)

$(OBJ_DIR)/%.o : %.asm
	@mkdir -p $(@D)
	@$(NASM) $(NASMFLAGS) -o $@ $<

clean:
	@rm -rf $(OBJ_DIR)
	@printf "\033[0;32mCleanup successful.\033[0m\n"

fclean: clean
	@rm -f $(NAME)
	@printf "\033[0;32mFull cleanup successful.\033[0m\n"

re: fclean all

.PHONY: all clean fclean re