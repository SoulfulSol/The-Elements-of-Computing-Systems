	@SCREEN
	D = A //���⼭ D�� 16384�� �ȴ�
	@TARGET
	M = D  //target �� ����Ű�� RAM �� ���� D = 16384�� �ȴ�.
	@MIN
	M = D - 1 //MIN�� ����Ű�� RAM�� ���� 16383�̴�.
	@KBD
	D = A
	@MAX  //MAX�� ����Ű�� RAM�� ���� 24575�̴�.
	M = D - 1
(KEYBOARD)
	@KBD
	D = M
	@BLACK
	D;JGT
	@WHITE
	D;JEQ
(BLACK)
	@TARGET
	D = M

	@MAX
	D = M - D
	@END
	D;JEQ

	@TARGET
	A = M
	M =  -1
	@TARGET
	M = M + 1
	@KEYBOARD
	0;JMP
(WHITE)
	@TARGET
	D = M

	@MIN
	D = M - D
	@KEYBOARD
	D;JEQ

	@TARGET
	A = M
	M =  0
	@TARGET
	M = M - 1
	@WHITE
	0;JMP
(END)
	@END
	0;JMP

