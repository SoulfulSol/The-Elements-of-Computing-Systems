// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

//�⺻������ ������ ������ �����̹Ƿ�, R2 = R0 * R1 �� R0�� R1��ŭ ���ϴ� ���� �ǹ��Ѵ�. ���� �ݺ������� �����Ѵ�.
	@I
	M = 0 //I�� 0���� ����
	@R2
	M = 0 //R2�� 0���� ����
	@R1
	D = M //R1�� ���� D�� �ְ�
	@COUNT
	M = D //COUNT�� ����(=R1�� ��)
(LOOP)
	@I
	D = M
	@COUNT
	D = D - M
	@END
	D;JEQ //������� �ݺ��� : COUNT(=R1) - I �� 0�� �� ������ �ݺ� (I�� +1 �ǹǷ� R1��ŭ �ݺ��Ѵ�)
	@R0
	D = M	
	@R2
	M = D + M //R2�� ����Ѵ� (R2 + R0)
	@I
	M = M + 1
	@LOOP
	0;JMP
(END)
	@END
	0;JMP //Terminate