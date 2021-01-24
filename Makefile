NAME =	cub3D

SRC =	abdeltif2.c\
		main.c\
		param.c\
		param2.c\
		raycast.c\
		readfile.c\
		render3d.c\
		sprite1.c\
		texturetrait.c\
		traitmap.c\
		traitmap2.c\
		utils.c\
		get_next_line.c\
		get_next_line_utils.c\
		ft_isdigit.c\
		ft_split_virgules.c\
		ft_split_whitespaces.c\
		ft_split.c\
		ft_atoi.c



OBJS = ${SRC:.c=.o}
PATH= -INC/

OPENGL =  -framework OpenGL -framework AppKit -Ofast



all : $(NAME)

$(NAME) : ${OBJS}
		
		@gcc  -I /usr/local/include/mlx.h -L /usr/local/lib/  -lmlx  $(OPENGL) -lm $(OBJS) -o $(NAME)

.c.o : ${SRC}
		@gcc  -c $(PATH) $< -o ${<:.c=.o}
clean:
	if [[ ! -f *.o ]];then /bin/rm *.o ; fi

fclean: clean
	@rm $(NAME)

re:	fclean
	make
