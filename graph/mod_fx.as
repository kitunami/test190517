;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;
;	�umod_fx�v
;
;	Ver 2.1.1
;
;	By FunnyMaker
;
;	����J�n : 2013/5/12
;	�ŏI�X�V : 2014/1/13
;
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
#module N_M_fx0;�uName_Mod_fx0�v�̗�
;	�{���W���[���ŋ��ʂ��Ďg���ϐ��̂��߂̖��O���
;	�V�X�e����`
;		[�J�n]
	c_pi = 0
	c_e = 0
;		[�I��]
#global

#module N_M_fx1
;	������
#deffunc Mfx_init
	c_pi@N_M_fx0 = m_pi
	c_pi�^2@N_M_fx0 = m_pi/2.0
	c_e@N_M_fx0 = 2.7182818284590452354
	
	;�� �V���{�����ʒl�\������Ή��\ ��
		num_element_MT_SCC@N_M_fx0 = 87	;�Ή��\�̗v�f��
		dim MeasurementTable_SymbolCode�\Char_Num@N_M_fx0,87	;�V���{�����ʒl�\
		sdim MeasurementTable_SymbolCode�\Char_Char@N_M_fx0,87	;������\
		MeasurementTable_SymbolCode�\Char_Num@N_M_fx0(0) = 0  ,5  ,6  ,10 ,11 ,12  ,15 ,16 ,17 ,18 ,19 ,30   ,31   ,32   ,33    ,34    ,35    ,36       ,37       ,40    ,41   ,42   ,50     ,51   ,52   ,53   ,54     ,55   ,56       ,57     ,58    ,60    ,61     ,1001 ,1002  ,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2048,2049,2050,2051,2052
		MeasurementTable_SymbolCode�\Char_Char@N_M_fx0(0) = "","+","-","*","/","\\","(",")","(",")",",","sin","cos","tan","asin","acos","atan","deg2rad","rad2deg","sqrt","pow","log","limit","max","min","abs","floor","int","roundup","round","ceil","perm","combi","c_e","c_pi","a" ,"b" ,"c" ,"d" ,"e" ,"f" ,"g" ,"h" ,"i" ,"j" ,"k" ,"l" ,"m" ,"n" ,"o" ,"p" ,"q" ,"r" ,"s" ,"t" ,"u" ,"v" ,"w" ,"x" ,"y" ,"z" ,"A" ,"B" ,"C" ,"D" ,"E" ,"F" ,"G" ,"H" ,"I" ,"J" ,"K" ,"L" ,"M" ,"N" ,"O" ,"P" ,"Q" ,"R" ,"S" ,"T" ,"U" ,"V" ,"W" ,"X" ,"Y" ,"Z"
	
	num_kind_function@N_M_fx0 = 22	;���ڊ֐��̎�ނ̐�
	num_max_prm_func@N_M_fx0 = 3	;���ڂ���Ă���֐��̃p�����[�^�̌��̂����A�ō��̒l�B
	;�� �֐����\�V���{�����ʒl�Ή��\ ��
		;�uMeasurementTable_Function_Char@N_M_fx0�v������^�z��̗v�fn�ƁuMeasurementTable_Function_Num@N_M_fx0�v�����^�z��̗v�fn�͑Ή����Ă���B
		sdim MeasurementTable_Function_Char@N_M_fx0,num_kind_function@N_M_fx0	;�֐����\
		dim MeasurementTable_Function_Num@N_M_fx0,num_kind_function@N_M_fx0		;�V���{�����ʒl�\
		MeasurementTable_Function_Char@N_M_fx0(0) = 	"sin","cos","tan","asin","acos","atan","deg2rad","rad2deg","sqrt","pow","log","limit","max","min","abs","floor","int","roundup","round","ceil","perm","combi"
		MeasurementTable_Function_Num@N_M_fx0(0) =	 	30	,	31	,32	,	33	,	34	,	35,		36	,	37	,	40	,	41	,42	,	50	,	51	,52	,	53	,	54	,55	,	56	,		57	,58	,	60	,	61
	
	;�� �֐��V���{�����ʒl�\�p�����[�^���Ή��\ ��
		;�uMeasurementTable_Function_Num@N_M_fx0�v�����^�z��̗v�fn�ƁuMeasurementTable_num_prm_func@N_M_fx0�v�����^�z��̗v�fn�͑Ή����Ă���B
		dim MeasurementTable_num_prm_func@N_M_fx0,num_kind_function@N_M_fx0
		;MeasurementTable_Function_Char@N_M_fx0(0) = 	"sin","cos","tan","asin","acos","atan","deg2rad","rad2deg","sqrt","pow","log","limit","max","min","abs","floor","int","roundup","round","ceil","perm","combi"
		MeasurementTable_num_prm_func@N_M_fx0(0) =        1,	1,	1,		1,		1,		2,		1,		1,		1,		2,		2,	3,		2,	2,		1,		1,	1,		1,			1,		1,	2,		2
		
	num_kind_FixedNumber@N_M_fx0 = 2	;��`�ϒ萔�̎�ނ̐�
	;�� �萔���\�V���{�����ʒl�Ή��\ ��
		;�uMeasurementTable_FixedNumber_char@N_M_fx0�v������^�z��̗v�fn�ƁuMeasurementTable_FixedNumber_num@N_M_fx0�v�����^�z��̗v�fn�͑Ή����Ă���B
		sdim MeasurementTable_FixedNumber_char@N_M_fx0,num_kind_FixedNumber@N_M_fx0	;�萔���\
		dim MeasurementTable_FixedNumber_num@N_M_fx0,num_kind_FixedNumber@N_M_fx0	;�V���{�����ʒl�\
		MeasurementTable_FixedNumber_char@N_M_fx0(0) = "c_e","c_pi"
		MeasurementTable_FixedNumber_num@N_M_fx0(0) =	1001,1002
	
	;�� �萔�V���{�����ʒl�\��̒l�Ή��\ ��
		ddim MeasurementTable_FixedNumber_value@N_M_fx0,num_kind_FixedNumber@N_M_fx0
		;MeasurementTable_FixedNumber_char@N_M_fx0(0) =     "c_e"        ,    "c_pi"
		MeasurementTable_FixedNumber_value@N_M_fx0(0) = c_e@N_M_fx0 , c_pi@N_M_fx0
	
	num_kind_variable@N_M_fx0 = 52	;��`�ϕϐ��̎�ނ̐�
	;�� �ϐ����\�V���{�����ʒl�Ή��\ ��
		sdim MeasurementTable_variable_char@N_M_fx0,num_kind_variable@N_M_fx0;�ϐ����\
		MeasurementTable_variable_char@N_M_fx0(0)  = "a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"
		MeasurementTable_variable_char@N_M_fx0(26) = "A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"
	
	;�� ����v���b�g�t�H�[����� ��
		;(-1,0,1,2) = (unknown ,windows ,linux(common) ,android)
		buf = sysinfo(0) : k = peek(buf,0)
		repeat 1
			if k = 'w' : ID_platform_now@N_M_fx0 = 0 : break
			if k = 'a' : ID_platform_now@N_M_fx0 = 2 : break
			ID_platform_now@N_M_fx0 = -1 : break
		loop
	
	;�� ���̖��O��ԂŎg�p����ϐ��̏����� ��
		result@N_M_fx16 = 0.0
		
		ddim val_prm_func_focused@N_M_fx22,num_max_prm_func@N_M_fx0
		num_decrement_symbol@N_M_fx22 = 0
		dim Type_symbol_BothSides_sub2@N_M_fx22,2
	
	return
#global

;#module N_M_fx2
;	�����`������ �� ���`�ϕ����� �ϊ�

;	[����]

;		buff = Mfx_MakePSCharF(������1)
;
;		������1	:	�����`������

;#defcfunc Mfx_MakePSCharF str strings1;�uMod_fx_MakePlasticSurgeryCharacterFormula�v�̗�
;	DishStrrep strings1," ",""
;	DishStrrep strings1,"{","("
;	DishStrrep strings1,"}",")"
;	return
;#global

#module N_M_fx10
;	�����`�����񎮂��璆�ԃR�[�h�𐶐�����

;	[����]

;	Mfx_compile ������1,�ϐ���1,�ϐ���2,�ϐ���3
;					
;	������1	:	�����`�����񎮁B(���ϐ�������)
;	�ϐ���1	:	�V���{���R�[�h�̕ۑ���̕ϐ��̖��O�B(���������Ă����Ȃ��Ă��悢)
;	�ϐ���2	:	�t�B�M���A�R�[�h�̕ۑ���̕ϐ��̖��O�B(���������Ă����Ȃ��Ă��悢)
;	�ϐ���3	:	�G���[�R�[�h���i�[����ϐ��B�v�f��3�̈ꎟ�������^�z��ϐ��Ƃ��ď����������B(���������Ă����Ȃ��Ă��悢)

#deffunc Mfx_Compile str arg_Formula_NotCompleted , array SymbolCode , array FigureCode , array ErrorCode
	
	dim ErrorCode,3
	Formula_NotCompleted = arg_Formula_NotCompleted

	;�� ���`�ϕ����񎮂̐��� ��
	
		if ID_platform_now@N_M_fx0 = 2 {;android��Ŏ��s����Ă���ꍇ
			DishStrrep Formula_NotCompleted," ",""
			DishStrrep Formula_NotCompleted,"{","(" : DishStrrep Formula_NotCompleted,"}",")"
			DishStrrep Formula_NotCompleted,"[","(" : DishStrrep Formula_NotCompleted,"]",")"
			DishStrrep Formula_NotCompleted,"+-","-" : DishStrrep Formula_NotCompleted,"-+","-"	;�^����ꂽ��������Ȃ�΁A���̑���̎��s��̎����ɂ́u+-�v,�u-+�v�͖����B
		} else {;android�ȊO
			strrep Formula_NotCompleted," ",""
			strrep Formula_NotCompleted,"{","(" : strrep Formula_NotCompleted,"}",")"
			strrep Formula_NotCompleted,"[","(" : strrep Formula_NotCompleted,"]",")"
			strrep Formula_NotCompleted,"+-","-" : strrep Formula_NotCompleted,"-+","-"
		}
		Formula_Completed = Formula_NotCompleted
		Num_char_Formula_Completed = strlen(Formula_Completed)
		if Num_char_Formula_Completed = "" : ErrorCode(0) = 1,1,-1 : return;�����󕶎���̏ꍇ�̓G���[
		
		
	;�� �V���{�����ɋ�؂� ��
	
		;��̏������y�ɂȂ�悤�ɁA�܂��V���{�����ɕ������Ĕz��Ɋi�[���Ă����B
		;�uBlock_Symbol_char�v������^�z��ϐ��ɃV���{�����������ɂ��Ċi�[����B
	
		sdim Block_Symbol_char,Num_char_Formula_Completed,Num_char_Formula_Completed
		
		count1_char_read = 0;�ǂݐi�߂��o�C�g��(=������)�̃J�E���^
		count1_symbol = 0	;�������ē���ꂽ�V���{���̌��̃J�E���^
		repeat Num_char_Formula_Completed	;�ő僋�[�v�񐔂͎��̕�����
			str1 = strmid(Formula_Completed,count1_char_read,1) : count1_char_read ++	;1�������o��
			if str1 = "" : break	;����ǂݏI������烋�[�v�𔲂���
			if (str1 = "+")|(str1 = "-")|(str1 = "*")|(str1 = "/")|(str1 = "\\")|(str1 = "(")|(str1 = ")")|(str1 = ",") {	;���l,�ϐ�,�֐��� �ȊO�̕����̏ꍇ
				Block_Symbol_char(count1_symbol) = str1 : count1_symbol ++;�uBlock_Symbol_char�v�ɕۑ�
			} else {	;���l,�ϐ�,�֐����̂����ꂩ�̐擪�����̏ꍇ
				;�ǂݎn�߂��V���{�������S�ɓǂݏo�����߂̃��[�v�ɓ���
				str2 = str1	;���ǂݏo�����������X�g�b�N�����
				;�� ����ǂݏI��邩�A�܂��́A���ɐ��l,�ϐ�,�֐��� �ȊO�̕�����������܂œǂݏo���𑱂��� ��
					repeat
						str1 = strmid(Formula_Completed,count1_char_read,1) : count1_char_read ++	;1�������o��
						if str1 = "" {;����ǂݏI������ꍇ
							Block_Symbol_char(count1_symbol) = str2 : count1_symbol ++;�ǂ񂾂Ƃ���܂ł��uBlock_Symbol_char�v�ɕۑ�
							count1_char_read --	;�⏑������( = ���̃��[�v�𔲂�����A���K�w���[�v�ł�����x���̏I���̃k���������ǂݏo����Č��o�����悤�ɁA�J�E���^�ɏ��׍H���d�|����B)
							break
						}
						if (str1 = "+")|(str1 = "-")|(str1 = "*")|(str1 = "/")|(str1 = "\\")|(str1 = "(")|(str1 = ")")|(str1 = ",") {	;���l,�ϐ�,�֐��� �ȊO�̕����̏ꍇ
							Block_Symbol_char(count1_symbol) = str2 , str1 : count1_symbol + 2;�X�g�b�N�ς̕�����ƁA����ǂݏo�����ꕶ�����uBlock_Symbol_char�v�ɕۑ�
							break	;�ǂݏo������!
						} else {	;���l,�ϐ�,�֐����̂����ꂩ�̕�����̈ꕔ�̏ꍇ
							str2 += str1;�X�g�b�N
						}
					loop
			}
			
		loop
	
		num_symbol = count1_symbol;�V���{�����̋L�^
		;--------------------------------------------------��DEBUG��--------------------------------------------------
			;repeat num_symbol : mes Block_Symbol_char(cnt) : loop
		;--------------------------------------------------��DEBUG��--------------------------------------------------
	
	;�� ���ԃR�[�h�𐶐����� ��
	
		;�� ��1�i�K ��
		
			;�܂��A( ) �� (f )f ����ʂ����ɒ��ԃR�[�h�̈ꕔ�����B
			;����̋�؂菈���œ���ꂽ�V���{�����uA���V���{���v�A���ԃR�[�h�ɓo�^���ꂽ�V���{�����uB���V���{���v�ƌĂԂ��Ƃɂ���B
			;B���̕���A���������Ȃ��Ȃ�ꍇ������B
	
			;�V�K�ɓǂݏo����A���V���{�����A�ŋ߂ɓo�^����B���V���{���ɖ������Ȃ����ǂ����`�F�b�N����B
			; - ���l �Ƃ��������ɂȂ��Ă��镔���́A�܂Ƃ߂Ĉ�̐��l�ɂ��ēo�^����B
	
			;���̏����Ō��o�ł���G���[�͕��@�G���[�̂݁B
	
			num_symbol_typeA = num_symbol;A���V���{���̌�
			dim SymbolCode,num_symbol_typeA
			ddim FigureCode,num_symbol_typeA
	
			count1_symbol_typeA_read = 0		;�����ς�A���V���{�����̃J�E���^
			count1_symbol_typeB_registered = 0	;�o�^�ς�B���V���{�����̃J�E���^
			count1_figure_registered = 0		;�t�B�M���A�R�[�h�ɓo�^���ꂽ���l�f�[�^�̌��̃J�E���^
			depth = 0	;�[���J�E���^
			flg1_error = 0	;�G���[�������m�t���O
			ErrorCode_3rdSection = -1	;�G���[�����������ꍇ�́A�G���[�R�[�h�̑�O�Z�N�V�����̒l�B
			repeat num_symbol_typeA
				str1 = Block_Symbol_char(count1_symbol_typeA_read) : count1_symbol_typeA_read ++	;1���o��
				;��(�����̔���)��++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
				repeat 1;�E�o���u
					if MCS_IsThisFigure(str1) = 1 {	;�������o���ꍇ
						if count1_symbol_typeB_registered >= 1 {;��O�ɓo�^�ς̃V���{��������ꍇ�́A����𒲂ׂ�
							num1 = SymbolCode(count1_symbol_typeB_registered - 1)	;��O�̃V���{���̎��ʒl���擾
							if (num1 ! 5)&(num1 ! 6)&(num1 ! 10)&(num1 ! 11)&(num1 ! 12)&(num1 ! 15)&(num1 ! 19) : flg1_error = 1 : ErrorCode_3rdSection = -1 : break	;���ꂪ + - * / \ ( , �̂�����ł��Ȃ���΃G���[
						}
						SymbolCode(count1_symbol_typeB_registered) = 1 : count1_symbol_typeB_registered ++	;�o�^(�V���{���R�[�h)
						FigureCode(count1_figure_registered) = double(str1) : count1_figure_registered ++	;�V  (�t�B�M���A�R�[�h)
						break;�E�o
					}
					
					if str1 = "+" {	;	+ ���o���ꍇ
						if count1_symbol_typeA_read = num_symbol_typeA : flg1_error = 1 : break	;���̎��_�Ŏ���ǂݏI���Ă����ꍇ�̓G���[
						if count1_symbol_typeB_registered >= 1 {	;��O�ɓo�^�ς̃V���{��������ꍇ�́A����𒲂ׂ�
							num1 = SymbolCode(count1_symbol_typeB_registered - 1)	;��O�̃V���{���̎��ʒl���擾
							if (num1 = 15)|(num1 = 19) : break	;���ꂪ ( , �̏ꍇ�� + �͕s�v�Ȃ̂Ŗ�������
							if (num1 = 1)|(num1 = 16)|((1001 <= num1)&(num1 <= 1002))|((2001 <= num1)&(num1 < 2052)) {	;���ꂪ ���l ) �萔�� �ϐ��� �̂����ꂩ�̏ꍇ
								SymbolCode(count1_symbol_typeB_registered) = 5 : count1_symbol_typeB_registered ++	;�o�^
								break;�E�o
							}
							
							flg1_error = 1 : ErrorCode_3rdSection = -1 : break	;�����܂Ŏ��s���ꂽ��G���[
						} else {	;��O�ɓo�^�ς̃V���{�����Ȃ��ꍇ
							break	;����� + �͕s�v�Ȃ̂Ŗ�������
						}
					}
				
					if str1 = "-" {	; - ���o���ꍇ
						if count1_symbol_typeA_read = num_symbol_typeA : flg1_error = 1 : ErrorCode_3rdSection = -1 : break	;���̎��_�Ŏ���ǂݏI���Ă����ꍇ�̓G���[
						if count1_symbol_typeB_registered >= 1 {	;��O�ɓo�^�ς̃V���{��������ꍇ�́A����𒲂ׂ�
							num1 = SymbolCode(count1_symbol_typeB_registered - 1)	;��O�̃V���{���̎��ʒl���擾
							if (num1 = 10)|(num1 = 11)|(num1 =12)|(num1 = 15)|(num1 = 19) {	;���ꂪ * / \ ( , �̂����ꂩ�ł���ꍇ
								str2 = Block_Symbol_char(count1_symbol_typeA_read) : count1_symbol_typeA_read ++	;���̃V���{�������o��
								if MCS_IsThisFigure(str2) = 1 {	;���ꂪ�����ł���ꍇ
									SymbolCode(count1_symbol_typeB_registered) = 1 : count1_symbol_typeB_registered ++ : FigureCode(count1_figure_registered) = -double(str2) : count1_figure_registered ++	;�ǂݏo����2�V���{�����}�C�i�X�̐��Ƃ��Ă܂Ƃ߂ēo�^
									break;�E�o
								} else {	;���ꂪ�����łȂ��ꍇ
									SymbolCode(count1_symbol_typeB_registered) = 6 : count1_symbol_typeB_registered ++	; - ��o�^
									count1_symbol_typeA_read --	;�⏑������( = str2�Ƃ��Ď��o�����V���{�������̃��[�v�ōĂь����Ɋ|���Ă��炤�悤�Ɏ�z����)
									break;�E�o
								}
							}
							if (num1 = 1)|(num1 = 16)|((1001 <= num1)&(num1 <= 1002))|((2001 <= num1)&(num1 <= 2052)) {	;��O�̃V���{���� ���l ) �萔�� �ϐ��� �̂��ꂩ�ł���ꍇ
								SymbolCode(count1_symbol_typeB_registered) = 6 : count1_symbol_typeB_registered ++	; - ��o�^
								break;�E�o
							}
							
							flg1_error = 1 : ErrorCode_3rdSection = -1 : break	;�����܂Ŏ��s���ꂽ��G���[
						} else {	;��O�ɓo�^�ς̃V���{�����Ȃ��ꍇ
							str2 = Block_Symbol_char(count1_symbol_typeA_read) : count1_symbol_typeA_read ++	;���̃V���{�������o��
							if MCS_IsThisFigure(str2) = 1 {	;���ꂪ�����ł���ꍇ
								SymbolCode(count1_symbol_typeB_registered) = 1 : count1_symbol_typeB_registered ++ : FigureCode(count1_figure_registered) = -double(str2) : count1_figure_registered ++	;�ǂݏo����2�V���{�����}�C�i�X�̐��Ƃ��Ă܂Ƃ߂ēo�^
								break;�E�o
							} else {	;���ꂪ�����łȂ��ꍇ
								SymbolCode(count1_symbol_typeB_registered) = 6 : count1_symbol_typeB_registered ++	; - ��o�^
								count1_symbol_typeA_read --	;�⏑������( = str2�Ƃ��Ď��o�����V���{�������̃��[�v�ōĂь����Ɋ|���Ă��炤�悤�Ɏ�z����)
								break;�E�o
							}
						}
					}
				
					;�� * / \ , ) �ł��邩�ǂ����̃`�F�b�N ��
					flg1 = 0	; * / \ , ) �̂����ꂩ�ł��邩�ǂ����̃t���O�B
					num1 = 0	; * / \ , ) �̂����ꂩ�ł���ꍇ�ɁA���̃V���{�����ʒl���i�[�����
					if str1 = "*" : flg1 = 1 : num1 = 10
					if str1 = "/" : flg1 = 1 : num1 = 11
					if str1 = "\\" : flg1 = 1 : num1 = 12
					if str1 = ")" : flg1 = 1 : num1 = 16 : depth --	;�[��Down
					if str1 = "," : flg1 = 1 : num1 = 19
					if flg1 = 1 {	;�����ꂩ�ł���ꍇ
						if (num1 ! 16)&(count1_symbol_typeA_read = num_symbol_typeA) : flg1_error = 1 : ErrorCode_3rdSection = -1 : break	;���o�����V���{���� ) �łȂ��A�����̎��_�Ŏ���ǂݏI���Ă����ꍇ�̓G���[
						if count1_symbol_typeB_registered < 1 : flg1_error = 1 : ErrorCode_3rdSection = -1 : break	;��O�ɓo�^�ς̃V���{���������ꍇ�̓G���[
						num2 = SymbolCode(count1_symbol_typeB_registered - 1)	;��O�̃V���{���̎��ʒl���擾
						if (num2 = 1)|(num2 = 16)|((1001 <= num2)&(num2 <= 1002))|((2001 <= num2)&(num2 <= 2052)) { } else { flg1_error = 1 : break } 	;���ꂪ ���l ) �萔�� �ϐ��� �̂�����ł��Ȃ���΃G���[
						SymbolCode(count1_symbol_typeB_registered) = num1 : count1_symbol_typeB_registered ++	;�o�^
						break;�E�o
					}
					
					if str1 = "(" {	; ( ���o���ꍇ
						depth ++	;�[��Up
						if count1_symbol_typeA_read = num_symbol_typeA : flg1_error = 1 : ErrorCode_3rdSection = -1 : break	;���̎��_�Ŏ���ǂݏI���Ă����ꍇ�̓G���[
						if count1_symbol_typeB_registered >= 1 {	;��O�ɓo�^�ς̃V���{��������ꍇ�́A����𒲂ׂ�
							num1 = SymbolCode(count1_symbol_typeB_registered - 1)	;��O�̃V���{���̎��ʒl���擾
							if (num1 = 5)|(num1 = 6)|(num1 = 10)|(num1 = 11)|(num1 = 12)|(num1 = 15)|(num1 = 19)|((30 <= num1)&(num1 <= 61)) { } else { flg1_error = 1 : : ErrorCode_3rdSection = -1 : break };���ꂪ + - * / \ ( , �֐��� �̂�����ł��Ȃ���΃G���[
						}
						SymbolCode(count1_symbol_typeB_registered) = 15 : count1_symbol_typeB_registered ++	;�o�^
						break;�E�o
					}
					
					;�� �֐����ł��邩�ǂ����̃`�F�b�N ��
						flg1_IsThisFunction = 0	;�t���O�B(0,1) = (not a function , function)
						repeat num_kind_function@N_M_fx0
							if str1 = MeasurementTable_Function_Char@N_M_fx0(cnt) {	;�����ɂ��������ꍇ
								flg1_IsThisFunction = 1
								num1 = cnt	;�Ή��\���ł�ID���L�^
								break
							}
						loop
						if flg1_IsThisFunction = 1 {	;�֐����ł������ꍇ
							if count1_symbol_typeA_read = num_symbol_typeA : flg1_error = 1 : ErrorCode_3rdSection = MeasurementTable_Function_Num@N_M_fx0(num1) : break	;���̎��_�Ŏ���ǂݏI���Ă����ꍇ�̓G���[
							if count1_symbol_typeB_registered >= 1 {	;��O�ɓo�^�ς̃V���{��������ꍇ�́A����𒲂ׂ�
								num2 = SymbolCode(count1_symbol_typeB_registered - 1)	;��O�̃V���{���̎��ʒl���擾
								if (num2 = 5)|(num2 = 6)|(num2 = 10)|(num2 = 11)|(num2 = 12)|(num2 = 15)|(num2 = 19) { } else { flg1_error = 1 : ErrorCode_3rdSection = MeasurementTable_Function_Num@N_M_fx0(num1) : break };���ꂪ + - * / \ ( , �̂�����ł��Ȃ���΃G���[
							}
							SymbolCode(count1_symbol_typeB_registered) = MeasurementTable_Function_Num@N_M_fx0(num1) : count1_symbol_typeB_registered ++	;�o�^
							break	;�E�o
						}
					
					;�� �萔���ł��邩�ǂ����̃`�F�b�N ��
						flg1_IsThisFixedNumber = 0	;�t���O�B(0,1) = (not a FixedNumber , FixedNumber)
						repeat num_kind_FixedNumber@N_M_fx0
							if str1 = MeasurementTable_FixedNumber_char@N_M_fx0(cnt) {	;�����ɂ��������ꍇ
								flg1_IsThisFixedNumber = 1
								num1 = cnt	;�Ή��\���ł�ID���L�^
								break
							}
						loop
						if flg1_IsThisFixedNumber = 1 {	;�萔���ł������ꍇ
							if count1_symbol_typeB_registered >= 1 {	;��O�ɓo�^�ς̃V���{��������ꍇ�́A����𒲂ׂ�
								num2 = SymbolCode(count1_symbol_typeB_registered - 1)	;��O�̃V���{���̎��ʒl���擾
								if (num2 = 5)|(num2 = 6)|(num2 = 10)|(num2 = 11)|(num2 = 12)|(num2 = 15)|(num2 = 19) { } else { flg1_error = 1 : break };���ꂪ + - * / \ ( , �̂�����ł��Ȃ���΃G���[
							}
							SymbolCode(count1_symbol_typeB_registered) = MeasurementTable_FixedNumber_num@N_M_fx0(num1) : count1_symbol_typeB_registered ++	;�o�^
							break;�E�o
						}
				
					;�� �ϐ����ł��邩�ǂ����̃`�F�b�N ��
						flg1_IsThisVariable = 0	;�t���O�B(0,1) = (not a variable , variable)
						repeat num_kind_variable@N_M_fx0
							if str1 = MeasurementTable_variable_char@N_M_fx0(cnt) {	;�����ɂ��������ꍇ
								flg1_IsThisVariable = 1
								num1 = cnt	;�Ή��\���ł�ID���L�^
								break
							}
						loop
						if flg1_IsThisVariable = 1 {	;�ϐ����ł������ꍇ
							if count1_symbol_typeB_registered >= 1 {	;��O�ɓo�^�ς̃V���{��������ꍇ�́A����𒲂ׂ�
								num2 = SymbolCode(count1_symbol_typeB_registered - 1)	;��O�̃V���{���̎��ʒl���擾
								if (num2 = 5)|(num2 = 6)|(num2 = 10)|(num2 = 11)|(num2 = 12)|(num2 = 15)|(num2 = 19) { } else { flg1_error = 1 : break };���ꂪ + - * / \ ( , �̂�����ł��Ȃ���΃G���[
							}
							SymbolCode(count1_symbol_typeB_registered) = 2001+num1 : count1_symbol_typeB_registered ++	;�o�^
							break;�E�o
						}
					
					flg1_error = 1 : break	;�����܂Ŏ��s���ꂽ��G���[
				loop
				;��(�����̔���)��++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
				if flg1_error = 1 : break
				if depth < 0 : flg1_error = 1 : break	;�[�����}�C�i�X�ɂȂ��Ă�����G���[
				if count1_symbol_typeA_read = num_symbol_typeA : break;����ǂݏI������I��
			loop
			if flg1_error = 1 {
				ErrorCode(0) = 1,1,ErrorCode_3rdSection : return	;�G���[
			}
			if depth ! 0 : ErrorCode(0) = 1,1,ErrorCode_3rdSection : return	;���̎��_�Ő[����0�łȂ���΃G���[
	
	
	
			num_symbol = count1_symbol_typeB_registered	;�V���{���R�[�h���̃V���{����
			num_figure = count1_figure_registered		;�V���{���R�[�h���̐��l�V���{���̐�
	
		;�� ��2�i�K ��
	
			;(f )f �����o����B
			;���[�ɂ���֐������珇�Ɍ������ď������Ă����B
	
			flg1_ProcessedAllFunc = 0	;�֐��T�[�`���������t���O
			bookmark1_frontier_SearchingFunc = 0	;�֐��̃T�[�`�����ŃV���{���R�[�h���œǂݐi�߂��V���{����
			flg1_error = 0	;�G���[�������m�t���O
			ErrorCode_3rdSection = -1	;�G���[�����������ꍇ�́A�G���[�R�[�h�̑�O�Z�N�V�����̒l�B
			repeat num_symbol	;�ő�J��Ԃ��񐔂̓V���{����
			
				;�� ���̊֐��������� ��
					repeat num_symbol - bookmark1_frontier_SearchingFunc
						kind_symbol_picked = SymbolCode(bookmark1_frontier_SearchingFunc) : bookmark1_frontier_SearchingFunc ++	;�V���{�����ʒl������o��
						if (30 <= kind_symbol_picked)&(kind_symbol_picked <= 61) : break	;�֐������m�����烋�[�v�𔲂���
						if bookmark1_frontier_SearchingFunc = num_symbol : flg1_ProcessedAllFunc = 1 : break	;����ǂݏI����!
					loop
					if flg1_ProcessedAllFunc = 1 : break	;����ǂݏI������I��
					
				;�� ���o�����֐����� (f )f �����o ��
					SymbolCode(bookmark1_frontier_SearchingFunc) = 17 : bookmark1_frontier_SearchingFunc ++	;���o�����֐��� ( �� (f �ɒu��������
					depth_BasedOnTheFunc�fsPrm = 0	;���o�����֐��� (f �̉E�ׂ���Ƃ����[���J�E���^
					count1_symbol_prm_read = 0	;���������p�����[�^�V���{���̌��̃J�E���^
					repeat num_symbol - bookmark1_frontier_SearchingFunc
						num1 = SymbolCode(bookmark1_frontier_SearchingFunc + count1_symbol_prm_read) : count1_symbol_prm_read ++	;�p�����[�^�V���{�����ʒl������o��
						if (num1 = 15)|(num1 = 17) : depth_BasedOnTheFunc�fsPrm ++	;���ꂪ ( (f �Ȃ�[��Up
						if (num1 = 16)|(num1 = 18) : depth_BasedOnTheFunc�fsPrm --	;���ꂪ ) )f �Ȃ�[��Down
						if depth_BasedOnTheFunc�fsPrm = -1 : SymbolCode(bookmark1_frontier_SearchingFunc + count1_symbol_prm_read - 1) = 18 : break	;�[����-1�ɂȂ�����A���ꂪ )f �ł���B
						if bookmark1_frontier_SearchingFunc + count1_symbol_prm_read = num_symbol : flg1_error = 1 : ErrorCode_3rdSection = kind_symbol_picked : break	;���̎��_�Ŏ���ǂݏI���Ă����ꍇ�̓G���[
					loop
				
				if flg1_error = 1 : break
			loop
			if flg1_error = 1 : ErrorCode(0) = 1,1,ErrorCode_3rdSection : return
	
		;�� ��3�i�K ��
			
			;�s���� , ���Ȃ����`�F�b�N����B
	
			;���̍��[����E�֌������ă`�F�b�N����B
	
			num_func_considered = 0	;�ǂݐi�߂��Ƃ���܂łŃ`�F�b�N�ɂ����čl�����ׂ��֐�(�����ł́u�v���ӊ֐��v�Ƃ���)�̌�
			dim num1_depth_BasedOnEachFuncs,num_symbol,2	;�e�v���ӊ֐��� (f �̉E�ׂ���Ƃ����[���J�E���^�B1�����ڂɂ��āA(0,1) = (�v�f�g�p�� , �v�f�J����)�B�g�p���̗v�f�ɂ��āA2�����ڂɂ͐[�����L�^�����B
			flg1_error = 0	;�G���[�������m�t���O
			repeat num_symbol
				num1 = SymbolCode(cnt)	;�V���{��������o��
				repeat 1;�E�o���u
					if (num1 = 15)|(num1 = 17) {	; ( (f �̏ꍇ
						;�� �v���ӊ֐��̃p�����[�^�̐[���J�E���^���X�g��ҏW���� ��
							count1 = 0	;���׏I������v���ӊ֐��̌��̃J�E���^
							repeat num_symbol
								if num1_depth_BasedOnEachFuncs(cnt,0) = 1 : count1 ++ : num1_depth_BasedOnEachFuncs(cnt,1) ++	;�[��Up
								if count1 = num_func_considered : break	;���ׂĂ̗v���ӊ֐��𒲂ׂ��甲����
							loop
						break;�E�o
					}
					if (num1 = 16)|(num1 = 18) {	; ) )f �̏ꍇ
						;�� �v���ӊ֐��̃p�����[�^�̐[���J�E���^���X�g��ҏW���� ��
							count1 = 0	;���׏I������v���ӊ֐��̌��̃J�E���^
							repeat num_symbol
								if num1_depth_BasedOnEachFuncs(cnt,0) = 1 {	;�g�p���̗v�f���������ꍇ
									count1 ++
									if num1_depth_BasedOnEachFuncs(cnt,1) >= 1 {	;���̊֐��p�����[�^�̐[���J�E���^��1�ȏ�Ȃ�A1���������B
										num1_depth_BasedOnEachFuncs(cnt,1) --
									} else {	;	�J�E���^��0�ȉ��ɂȂ��Ă�����̂́A����� ) )f �̔����ɂ���āA���̊֐��͗v���ӊ֐����珜�O�����B(���Ȃ킿�A�ȍ~�� , �ɉe���͂������Ȃ����Ƃ��ۏ؂����B)
										num1_depth_BasedOnEachFuncs(cnt,0) = 0
									}
								}
								if count1 = num_func_considered : break	;���ׂĂ̗v���ӊ֐��𒲂ׂ��甲����
							loop
						break;�E�o
					}
					if (30 <= num1)&(num1 <= 61) {	;�֐��ł���ꍇ
						;�� �v���ӊ֐��̃p�����[�^�̐[���J�E���^���X�g��ҏW���� ��
							repeat num_symbol
								if num1_depth_BasedOnEachFuncs(cnt,0) = 0 : num1_depth_BasedOnEachFuncs(cnt,0) = 1 : num1_depth_BasedOnEachFuncs(cnt,1) = -1 : num_func_considered ++ : break	;�v���ӊ֐��Ƃ��Ēǉ��B -1 �́A���ɕK������� (f �̒ʉߌ�ɐ[���J�E���^�� 0 �ɂȂ�悤�ɂ��邽�߂̒��K���킹�B
							loop
						break;�E�o
					}
					if num1 = 19 {	; , �ł���ꍇ
						;�� ���̎�l��T�� ��
							flg1 = 0	;����� , �̎�l�ׂ�֐������݂��邩�ǂ����̃t���O
							repeat num_symbol
								if (num1_depth_BasedOnEachFuncs(cnt,0) = 1)&(num1_depth_BasedOnEachFuncs(cnt,1) = 0) : flg1 = 1 : break
							loop
							if flg1 ! 1 : flg1_error = 1 : break	;��l��������Ȃ���΃G���[
						break;�E�o
					}
				loop
				if flg1_error = 1 : break
				
			loop
			if flg1_error = 1 : ErrorCode(0) = 1,1,-1 : return
		
		;�� ��4�i�K ��
	
			;�֐��̃p�����[�^�̌����`�F�b�N����
	
			;���[�ɂ���֐�����`�F�b�N���Ă���
			
			flg1_ProcessedAllFunc = 0	;�֐��T�[�`���������t���O
			bookmark1_frontier_SearchingFunc = 0	;�֐��̃T�[�`�����ŃV���{���R�[�h���œǂݐi�߂��V���{�����̃J�E���^
			flg1_error = 0	;�G���[�������m�t���O
			repeat num_symbol	;�ő�J��Ԃ��񐔂̓V���{����
				
				;�� ���̊֐��������� ��
					repeat num_symbol - bookmark1_frontier_SearchingFunc
						kind_symbol_picked = SymbolCode(bookmark1_frontier_SearchingFunc) : bookmark1_frontier_SearchingFunc ++	;�V���{�����ʒl������o��
						if (30 <= kind_symbol_picked)&(kind_symbol_picked <= 61) : break	;�֐������m�����烋�[�v�𔲂���
						if bookmark1_frontier_SearchingFunc = num_symbol : flg1_ProcessedAllFunc = 1 : break	;����ǂݏI����!
					loop
					if flg1_ProcessedAllFunc = 1 : break	;����ǂݏI������I��
	
				;�� (f )f �́A�V���{���R�[�h���ł̃C���f�b�N�X�����߂� ��
					index_�if = bookmark1_frontier_SearchingFunc : bookmark1_frontier_SearchingFunc ++	; (f �̃C���f�b�N�X
					
					;�� )f �̃C���f�b�N�X�����߂� ��
						depth_BasedOnTheFunc�fsPrm = 0	;���o�����֐��� (f �̉E�ׂ���Ƃ����[���J�E���^
						count1_symbol_prm_read = 0	;���������p�����[�^�V���{���̌��̃J�E���^
						repeat num_symbol - bookmark1_frontier_SearchingFunc
							num1 = SymbolCode(bookmark1_frontier_SearchingFunc + count1_symbol_prm_read) : count1_symbol_prm_read ++	;�p�����[�^�V���{�����ʒl������o��
							if (num1 = 15)|(num1 = 17) : depth_BasedOnTheFunc�fsPrm ++	;���ꂪ ( (f �Ȃ�[��Up
							if (num1 = 16)|(num1 = 18) : depth_BasedOnTheFunc�fsPrm --	;���ꂪ ) )f �Ȃ�[��Down
							if depth_BasedOnTheFunc�fsPrm = -1 : index_�jf = bookmark1_frontier_SearchingFunc + count1_symbol_prm_read - 1 : break	;�[����-1�ɂȂ�����A���ꂪ )f �ł���B
							;if bookmark1_frontier_SearchingFunc + count1_symbol_prm_read = num_symbol : flg1_error = 1 : ErrorCode_3rdSection = kind_symbol_picked : break	;���̎��_�Ŏ���ǂݏI���Ă����ꍇ�̓G���[	��(�悱�̃G���[���N����Ȃ����Ƃ͕ۏ؂���Ă���)
						loop
	
				;if flg1_error = 1 : break
	
				;�� �p�����[�^�̌����`�F�b�N���� ��
				
					;�� ����ׂ��p�����[�^�̌������߂� ��
						repeat num_kind_function@N_M_fx0
							if kind_symbol_picked = MeasurementTable_Function_Num@N_M_fx0(cnt) : num_prm_ideal = MeasurementTable_num_prm_func@N_M_fx0(cnt) : break
						loop
					
					;�� ���ۂ̃p�����[�^�̌��𒲂ׂ� ��
						depth_BasedOnTheFunc�fsPrm = 0	;���o�����֐��� (f �̉E�ׂ���Ƃ����[���J�E���^
						count1_prm = 1	;���o���ꂽ�p�����[�^�̌��̃J�E���^
						repeat index_�jf - index_�if - 1
							num1 = SymbolCode(index_�if + 1 + cnt)	;�V���{�����ʒl������o��
							if (num1 = 15)|(num1 = 17) : depth_BasedOnTheFunc�fsPrm ++	;���ꂪ ( (f �Ȃ�[��Up
							if (num1 = 16)|(num1 = 18) : depth_BasedOnTheFunc�fsPrm --	;���ꂪ ) )f �Ȃ�[��Down
							;if depth_BasedOnTheFunc�fsPrm < 0 : flg1_error = 1 : ErrorCode_3rdSection = kind_symbol_picked : break	;�[�����}�C�i�X�ɂȂ�����G���[	��(�悱�̃G���[���N����Ȃ����Ƃ͕ۏ؂���Ă���)
							if (num1 = 19)&(depth_BasedOnTheFunc�fsPrm = 0) : count1_prm ++	;�[��0�̂Ƃ���� , ���������Ȃ�A����͍����ڂ��Ă���֐��̃p�����[�^��؂�ł���B
						loop
	
					if count1_prm ! num_prm_ideal : flg1_error = 1 : ErrorCode_3rdSection = kind_symbol_picked : break	;���z�ƌ�������v���Ȃ��Ȃ�G���[
			loop
			if flg1_error = 1 : ErrorCode(0) = 1,1,ErrorCode_3rdSection : return
	
	return
#global

#module N_M_fx15
;	�ϐ��l���X�g���̕ϐ��ɒl��������B

;	[����]
;
;		Mfx_substitute �ϐ���1,"������1",���l1
;
;		�ϐ���1	: �ϐ��l���X�g�B�v�f0�`51�܂Ŋm�ۂ���Ă�������^�ꎟ���z��ϐ��B
;		������1 : a�`Z�̃A���t�@�x�b�g�B�����Ŏw�肵�����O�̕ϐ��ɒl��������B
;		���l1   : �����������l�B

;		(��) : Mfx_substitute VarList,"G",6.67

;	�G���[�����������ꍇ��stat�̒l��1�ɂȂ�A����ȊO�̏ꍇ��0�ɂȂ�B

;	�����̖��߂��g�p���Ȃ��Ă��A�ϐ��l���X�g��z��ϐ��Ɠ��l�ɒ��ڑ��삵�Ă����܂�Ȃ��B
;	�@�Ⴆ�΁A��� (��) �́A���̋L�q�Œu�������邱�Ƃ��ł���B
;	�@VarList(32) = 6.67
;	�@�������A��������Ă��ǂ̕ϐ��ɑ������Ă���̂�������Â炢�B���̂悤�ȂƂ��ɁA���̖��߁uMfx_substitute�v���g���̂��悢���낤�B
;	�@���̖��߂́A�ǂ̕ϐ��ɑ�����Ă���̂��A�X�N���v�g�����đ����ɔ��f�ł���悤�A���₷�������コ���邽�߂Ɏg�����̂ł���B

#deffunc Mfx_substitute array VariableValueList , str target , double value
	if vartype(VariableValueList) ! 3 : return 1
	if length(VariableValueList) < 52 : return 1
	flg1_substituted = 0
	repeat 52
		if target = MeasurementTable_variable_char@N_M_fx0(cnt) : VariableValueList(cnt) = value : flg1_substituted = 1 : break
	loop
	if flg1_substituted = 0 : return 1
	return 0
#global
;--------------------------------------------------��DEBUG��--------------------------------------------------
;Mfx_init
;ddim VariableValueList,52 : Mfx_substitute VariableValueList,"G",6.67 : mes VariableValueList(32)
;--------------------------------------------------��DEBUG��--------------------------------------------------

#module N_M_fx16
;	�ϐ��l���X�g���̕ϐ��ɑ������Ă���l�𒲂ׂ�

;	[����]
;
;		val = Mfx_SeeVarValue(�ϐ���1,"������1",�ϐ���2)
;
;		�ϐ���1 : �ϐ��l���X�g�B�v�f0�`51�܂Ŋm�ۂ���Ă�������^�ꎟ���z��ϐ��B
;		������1 : a�`Z�̃A���t�@�x�b�g�B�����Ŏw�肵�����O�̕ϐ����Q�Ƃ����B
;		�ϐ���2 : �G���[�����i�[����ϐ�
;
;		(��) : mes Mfx_SeeVarValue(VarList,"G")

;	�G���[�����������ꍇ�� ��3�p�����[�^�Ŏw�肳�ꂽ�ϐ���1���������A����ȊO�̏ꍇ��0����������B

;	�����̖��߂��g�p���Ȃ��Ă��A�ϐ��l���X�g����z��ϐ��Ɠ��l�ɒ��ڎQ�Ƃ��Ă����܂�Ȃ��B
;	�@�Ⴆ�΁A��� (��) �́A���̋L�q�Œu�������邱�Ƃ��ł���B
;	�@mes VarList(32)
;	�@�������A��������Ă��ǂ̕ϐ����Q�Ƃ���Ă���̂�������Â炢�B���̂悤�ȂƂ��ɁA���̊֐��uMfx_SeeVarValue�v���g���̂��悢���낤�B
;	�@���̊֐��́A�ǂ̕ϐ����Q�Ƃ��Ă���̂��A�X�N���v�g�����đ����ɔ��f�ł���悤�A���₷�������コ���邽�߂Ɏg�����̂ł���B

#defcfunc Mfx_SeeVarValue array VariableValueList , str target , var ErrorInfo
	if vartype(VariableValueList) ! 3 : return 1
	if length(VariableValueList) < 52 : return 1
	ErrorInfo = 0
	flg_saw = 0
	;result = 0.0	(�揉���������ŏ�������)
	repeat 52
		if target = MeasurementTable_variable_char@N_M_fx0(cnt) : result = VariableValueList(cnt) : flg_saw = 1 : break
	loop
	if flg_saw = 0 : ErrorInfo = 1
	return result
#global
;--------------------------------------------------��DEBUG��--------------------------------------------------
;Mfx_init
;ddim VariableValueList,52 : Mfx_substitute VariableValueList,"G",6.67
;mes Mfx_SeeVarValue(VariableValueList,"G",ErrorInfo)
;--------------------------------------------------��DEBUG��--------------------------------------------------

#module N_M_fx22
;	���ԃR�[�h�ɏ]���Đ������v�Z����

;	[����]
;
;		Mfx_calc �ϐ���1 ,�ϐ���2,�ϐ���3,�ϐ���4,�ϐ���5
;
;		�ϐ���1 : �v�Z���ʂ��i�[����ϐ��̖��O
;		�ϐ���2 : �V���{���R�[�h���i�[���ꂽ�ϐ��̖��O
;		�ϐ���3 : �t�B�M���A�R�[�h���i�[���ꂽ�ϐ��̖��O
;		�ϐ���4 : �ϐ��l���X�g���i�[���ꂽ�ϐ��A���Ȃ킿�v�f0�`51�܂Ŋm�ۂ���Ă�������^�ꎟ���z��ϐ��̖��O�B(�������ɕϐ��������ꍇ�͓K���ȕϐ����w�肵�Ă��܂�Ȃ�)
;		�ϐ���5 : �G���[�R�[�h���i�[����ϐ��̖��O�B(���������Ă����Ȃ��Ă��悢)

;	�G���[�����������ꍇ��stat�̒l��1�ɁA����ȊO�̏ꍇ��0�ɂȂ�B

#deffunc Mfx_calc  var CalcResult ,array SymbolCode_original ,array FigureCode_original ,array VariableValueList ,array ErrorCode

	num_element_SymbolCode = length(SymbolCode_original)	;�V���{���R�[�h�p�z��ϐ��̗v�f���B����̓t�B�M���A�R�[�h�̂���Ƌ��ʂł���B
	dim ErrorCode,3
	
	;�� �V���{���E���l�f�[�^�̌��𒲂ׂ� ��
		count1 = 0	;�V���{�����̃J�E���^
		count2 = 0	;���l�f�[�^�̐��̃J�E���^
		repeat num_element_SymbolCode
			if SymbolCode_original(cnt) = 0 : break
			count1 ++
			if SymbolCode_original(cnt) = 1 : count2 ++
		loop
		num_symbol_original = count1
		num_figure_original = count2
	
	;�� ��Ɨp�ϐ����쐬 ��
		;��Ɨp�ϐ��̓��e�͕ω�����
		num_symbol = num_symbol_original	;�V���{���̌�
		num_figure = num_figure_original	;���l�f�[�^�̌�
		dim SymbolCode,num_element_SymbolCode : memcpy SymbolCode,SymbolCode_original,4*num_element_SymbolCode	;�V���{���R�[�h
		ddim FigureCode,num_element_SymbolCode : memcpy FigureCode,FigureCode_original,8*num_element_SymbolCode	;�t�B�M���A�R�[�h
	
	;�� �����J�n ��
		flg1_error = 0	;�G���[���m�t���O
		repeat	;�֐��������[�v�B�֐��������Ȃ�܂ŌJ��Ԃ��B
		
		;�� ��ԉE���̊֐�����T�� ��
			;�������ɒT��
			flg1_FoundFunc = 0	;�֐������t���O
			repeat num_symbol
				num1 = SymbolCode(num_symbol - 1 - cnt)	;�V���{�����ʒl������o���B
				if (30 <= num1)&(num1 <= 61) {	;���ꂪ�֐��������ꍇ
					flg1_FoundFunc = 1
					ID_func_focused = num1	;�����ڂ��Ă���֐��̃V���{�����ʒl
					Index_name_func_focused = num_symbol - 1 - cnt	;�����ڂ��Ă���֐����́A�V���{���R�[�h���ł̃C���f�b�N�X�B
					break
				}
			loop
	
			if flg1_FoundFunc = 1 {	;�֐������������ꍇ
				
				;�� ���̊֐��ɑΉ����� (f )f �̃C���f�b�N�X�E�p�����[�^�̌��E�e�p�����[�^�́A�V���{���R�[�h���ł̊J�n,�I���C���f�b�N�X�𒲂ׂ� ��
					Index_�if_focused = Index_name_func_focused + 1	; (f�̃C���f�b�N�X
					
					count1_depth_BasedOnTheFunc�fsPrm = 0	;���ڂ��Ă���֐��� (f �̉E�ׂ���Ƃ����[���J�E���^
					count2_num_prm_func_focused = 1	;�������p�����[�^�̌��̃J�E���^
					dim Index_prm_focused,num_max_prm_func@N_M_fx0,2	;�e�p�����[�^�́A�V���{���R�[�h���ł̊J�n,�I���C���f�b�N�X�B�v�f(n,0),(n,1)�ɂ��ꂼ���n+1�p�����[�^�̊J�n,�I���C���f�b�N�X���i�[�����B
					Index_prm_focused(0,0) = Index_�if_focused + 1	;���p�����[�^�̊J�n�C���f�b�N�X
					repeat num_symbol - Index_�if_focused - 1
						Index_symbol_investigation = Index_�if_focused + 1 + cnt	;���ׂ�V���{���̃C���f�b�N�X
						num1 = SymbolCode(Index_symbol_investigation)	;�V���{�����ʒl������o���B
						if (num1 = 15)|(num1 = 17) : count1_depth_BasedOnTheFunc�fsPrm ++	;���ꂪ ( (f �Ȃ�[��Up
						if (num1 = 16)|(num1 = 18) : count1_depth_BasedOnTheFunc�fsPrm --	;���ꂪ ) )f �Ȃ�[��Down
						if count1_depth_BasedOnTheFunc�fsPrm = -1 {
							Index_�jf_focused = Index_symbol_investigation	;�[����-1�ɂȂ�����A���ꂪ )f �ł���B
							Index_prm_focused(count2_num_prm_func_focused - 1,1) = Index_symbol_investigation - 1	;���O�܂Œ��ׂĂ����p�����[�^�̏I���C���f�b�N�X��������
							break
						}
						if num1 = 19 {	;���ꂪ , �ł���ꍇ
							Index_prm_focused(count2_num_prm_func_focused - 1,1) = Index_symbol_investigation - 1	;���O�܂Œ��ׂĂ����p�����[�^�̏I���C���f�b�N�X��������
							count2_num_prm_func_focused ++	;�p�����[�^�̐��̃J�E���^Up
							Index_prm_focused(count2_num_prm_func_focused - 1,0) = Index_symbol_investigation + 1	;���ꂩ�璲�ׂ�p�����[�^�̊J�n�C���f�b�N�X
						}
					loop
					num_prm_func_focused = count2_num_prm_func_focused	;���������p�����[�^�̌�
					
				;�� �������e�p�����[�^���������� ��
					;�E���̃p�����[�^���珈�����Ă����B�Ȃ��Ȃ�΁A��������΁A�����҂��́A�����̃p�����[�^�̃V���{���̈ʒu���������ꂸ�ɍςނ̂ŏ������e�ՂɂȂ邩��ł���B
					repeat num_prm_func_focused
						Index_RangeStart_sub1 = Index_prm_focused(num_prm_func_focused - 1 - cnt,0)
						Index_RangeEnd_sub1 = Index_prm_focused(num_prm_func_focused - 1 - cnt,1)
						gosub *CalcP
						if flg1_error_sub1 = 1 : flg1_error = 1 : break
					loop
					if flg1_error = 1 : break
	
				;�� ��������Đ��l�f�[�^�ƂȂ����p�����[�^���擾���� ��
					
					;�� �����ڂ��Ă���֐���荶���ɂ��鐔�l�f�[�^�̌������߂� ��
						num_figure_LeftOfFocusedFunc = 0	;�����������l�f�[�^�̌��̃J�E���^
						repeat Index_name_func_focused
							if SymbolCode(cnt) = 1 : num_figure_LeftOfFocusedFunc ++
						loop
	
					;(�p�����[�^�̎擾)
					;ddim val_prm_func_focused,num_max_prm_func@N_M_fx0	(�揉���������ŏ�������)
					repeat num_prm_func_focused
						val_prm_func_focused(cnt) = FigureCode(num_figure_LeftOfFocusedFunc + cnt)
					loop
				
				;�� ���Ƃ��ē���ꂽ�p�����[�^���g���Ċ֐����������� ��
	
					;(�ϐ�)					:	(���e)
					;num_decrement_symbol	:	����̊֐��̏����ŏ�����V���{���̐�
					;num_decrement_figure	:	����̊֐��̏����ŏ����鐔�l�f�[�^�̌�
					
					repeat 1;�E�o���u
					
						if ID_func_focused = 30 {	;sin
							num_decrement_symbol = 4
							num_decrement_figure = 1
							result_calc_func_focused = sin(val_prm_func_focused(0))
							break;�E�o
						}
						if ID_func_focused = 31 {	;cos
							num_decrement_symbol = 4
							num_decrement_figure = 1
							result_calc_func_focused = cos(val_prm_func_focused(0))
							break;�E�o
						}
						if ID_func_focused = 32 {	;tan
							num_decrement_symbol = 4
							num_decrement_figure = 1
							if (val_prm_func_focused(0) - c_pi�^2@N_M_fx0)\m_pi = 0 : flg1_error = 1 : ErrorCode(0) = 1,2,32 : break
							result_calc_func_focused = tan(val_prm_func_focused(0))
							break;�E�o
						}
						if ID_func_focused = 33 {	;asin
							num_decrement_symbol = 4
							num_decrement_figure = 1
							result_calc_func_focused = atan(val_prm_func_focused(0),sqrt(1.0 - val_prm_func_focused(0)*val_prm_func_focused(0)))
							break;�E�o
						}
						if ID_func_focused = 34 {	;acos
							num_decrement_symbol = 4
							num_decrement_figure = 1
							result_calc_func_focused = atan(sqrt(1.0 - val_prm_func_focused(0)*val_prm_func_focused(0)),val_prm_func_focused(0))
							break;�E�o
						}
						if ID_func_focused = 35 {	;atan
							num_decrement_symbol = 6
							num_decrement_figure = 2
							result_calc_func_focused = atan(val_prm_func_focused(0),val_prm_func_focused(1))
							break;�E�o
						}
						if ID_func_focused = 36 {	;deg2rad
							num_decrement_symbol = 4
							num_decrement_figure = 1
							result_calc_func_focused = deg2rad(val_prm_func_focused(0))
							break;�E�o
						}
						if ID_func_focused = 37 {	;rad2deg
							num_decrement_symbol = 4
							num_decrement_figure = 1
							result_calc_func_focused = rad2deg(val_prm_func_focused(0))
							break;�E�o
						}
						if ID_func_focused = 40 {	;sqrt
							num_decrement_symbol = 4
							num_decrement_figure = 1
							if val_prm_func_focused(0) < 0 : flg1_error = 1 : ErrorCode(0) = 1,2,40 : break
							result_calc_func_focused = sqrt(val_prm_func_focused(0))
							break;�E�o
						}
						if ID_func_focused = 41 {	;pow
							num_decrement_symbol = 6
							num_decrement_figure = 2
							if (val_prm_func_focused(0) < 0.0)&(val_prm_func_focused(1)\1 ! 0.0) : flg1_error = 1 : ErrorCode(0) = 1,2,41 : break	;{�ꂪ���ŁA���A�w�����񐮐��Ȃ�΃G���[
							result_calc_func_focused = powf(val_prm_func_focused(0),val_prm_func_focused(1))
							break;�E�o
						}
						if ID_func_focused = 42 {	;log
							num_decrement_symbol = 6
							num_decrement_figure = 2
							if (val_prm_func_focused(0) <= 0.0)|(val_prm_func_focused(0) = 1.0)|(val_prm_func_focused(1) <= 0.0) : flg1_error = 1 : ErrorCode(0) = 1,2,42 : break	;�� �� 0 �܂��� �� = 1 �܂��� �^�� �� 0 �Ȃ�G���[
							result_calc_func_focused = logf(val_prm_func_focused(1))/logf(val_prm_func_focused(0))
							break;�E�o
						}
						if ID_func_focused = 50 {	;limit
							num_decrement_symbol = 8
							num_decrement_figure = 3
							;if val_prm_func_focused(1) > val_prm_func_focused(2) : flg1_error = 1 : ErrorCode(0) = 1,2,50 : break	;���� > ��� �Ȃ�G���[
							result_calc_func_focused = limitf(val_prm_func_focused(0),val_prm_func_focused(1),val_prm_func_focused(2))
							break;�E�o
						}
						if ID_func_focused = 51 {	;max
							num_decrement_symbol = 6
							num_decrement_figure = 2
							if val_prm_func_focused(0) < val_prm_func_focused(1) { result_calc_func_focused = val_prm_func_focused(1) } else { result_calc_func_focused = val_prm_func_focused(0) }
							break;�E�o
						}
						if ID_func_focused = 52 {	;min
							num_decrement_symbol = 6
							num_decrement_figure = 2
							if val_prm_func_focused(0) > val_prm_func_focused(1) { result_calc_func_focused = val_prm_func_focused(1) } else { result_calc_func_focused = val_prm_func_focused(0) }
							break;�E�o
						}
						if ID_func_focused = 53 {	;abs
							num_decrement_symbol = 4
							num_decrement_figure = 1
							result_calc_func_focused = absf(val_prm_func_focused(0))
							break;�E�o
						}
						if ID_func_focused = 54 {	;floor
							num_decrement_symbol = 4
							num_decrement_figure = 1
							if val_prm_func_focused(0)\1.0 = 0.0 : result_calc_func_focused = val_prm_func_focused(0) : break
							if val_prm_func_focused(0) >= 0 {
								result_calc_func_focused = double(int(val_prm_func_focused(0)))
							} else {
								result_calc_func_focused = double(int(val_prm_func_focused(0))) - 1.0
							}
							break;�E�o
						}
						if ID_func_focused = 55 {	;int
							num_decrement_symbol = 4
							num_decrement_figure = 1
							result_calc_func_focused = double(int(val_prm_func_focused(0)))
							break;�E�o
						}
						if ID_func_focused = 56 {	;roundup
							num_decrement_symbol = 4
							num_decrement_figure = 1
							if val_prm_func_focused(0)\1.0 = 0.0 : result_calc_func_focused = val_prm_func_focused(0) : break
							if val_prm_func_focused(0) >= 0 {
								result_calc_func_focused = double(int(val_prm_func_focused(0))) + 1.0
							} else {
								result_calc_func_focused = double(int(val_prm_func_focused(0))) - 1.0
							}
						}
						if ID_func_focused = 57 {	;round
							num_decrement_symbol = 4
							num_decrement_figure = 1
							if val_prm_func_focused(0) >= 0 {
								result_calc_func_focused = double(int(val_prm_func_focused(0) + 0.5))
							} else {
								result_calc_func_focused = -double(int(-val_prm_func_focused(0) + 0.5))
							}
							break;�E�o
						}
						if ID_func_focused = 58 {	;ceil
							num_decrement_symbol = 4
							num_decrement_figure = 1
							if val_prm_func_focused(0)\1.0 = 0.0 : result_calc_func_focused = val_prm_func_focused(0) : break
							if val_prm_func_focused(0) >= 0 {
								result_calc_func_focused = double(int(val_prm_func_focused(0))) + 1.0
							} else {
								result_calc_func_focused = double(int(val_prm_func_focused(0)))
							}
							break;�E�o
						}
						if ID_func_focused = 60 {	;perm
							num_decrement_symbol = 6
							num_decrement_figure = 2
							if (val_prm_func_focused(0)\1.0 ! 0.0)|(val_prm_func_focused(1)\1.0 ! 0.0) : flg1_error = 1 : ErrorCode(0) = 1,3,60 : break
							if val_prm_func_focused(0) < val_prm_func_focused(1) : flg1_error = 1 : ErrorCode(0) = 1,3,60 : break
							if val_prm_func_focused(1) < 0 : flg1_error = 1 : ErrorCode(0) = 1,2,60 : break
							;�����G���[�`�F�b�N�̏��ԂɈӖ�������
							
							if val_prm_func_focused(1) = 0 : result_calc_func_focused = 1.0 : break
							
							result_calc_func_focused = val_prm_func_focused(0) : num2 = val_prm_func_focused(0) - 1.0
							repeat val_prm_func_focused(1) - 1
								result_calc_func_focused*(num2 - cnt)
							loop
							break;�E�o
						}
						if ID_func_focused = 61 {	;combi
							num_decrement_symbol = 6
							num_decrement_figure = 2
							if (val_prm_func_focused(0)\1.0 ! 0.0)|(val_prm_func_focused(1)\1.0 ! 0.0) : flg1_error = 1 : ErrorCode(0) = 1,3,61 : break
							if val_prm_func_focused(0) < val_prm_func_focused(1) : flg1_error = 1 : ErrorCode(0) = 1,3,61 : break
							if val_prm_func_focused(1) < 0 : flg1_error = 1 : ErrorCode(0) = 1,2,61 : break
							;�����G���[�`�F�b�N�̏��ԂɈӖ�������
	
							;���߂�l�� nCr �Ƃ���B
							
							if val_prm_func_focused(1) = 0 : result_calc_func_focused = 1.0 : break	;	nC0 = 1
	
	
							;(r! �����߂�)
							numtmp1 = val_prm_func_focused(1) : num1 = val_prm_func_focused(1) - 1.0
							repeat val_prm_func_focused(1) - 1
								numtmp1*(num1 - cnt)
							loop
	
							;(nPr �����߂�)
							numtmp2 = val_prm_func_focused(0) : num1 = val_prm_func_focused(0) - 1.0
							repeat val_prm_func_focused(1) - 1
								numtmp2*(num1 - cnt)
							loop
	
							result_calc_func_focused = numtmp2/numtmp1
							break;�E�o
						}
						
					loop
					if flg1_error = 1 : break
	
				;�� �֐���(f �` )f �̈�A�̃V���{�����v�Z���ʂ̃V���{���Œu�������� ��
					SymbolCode(Index_name_func_focused) = 1	;���ڂ��Ă���֐����̃V���{�����A�u���l�f�[�^�v��\���V���{���Œu��������B
					
					;�� �����ς̃V���{���ŁA�܂�������Ă��Ȃ����̂����� ��
						;repeat num_decrement_symbol - 1
						;	SymbolCode(Index_name_func_focused + 1 + cnt) = 0
						;loop
						;��
						memset SymbolCode,0,4*(num_decrement_symbol - 1),4*(Index_name_func_focused + 1)
					
					;�� �㑱�f�[�^�����ɃV�t�g���Č��Ԃ��l�߂� ��
						;--------------------------------------------------��SLOW��--------------------------------------------------
						;repeat num_symbol - Index_name_func_focused - num_decrement_symbol	; = num_symbol - (Index_name_func_focused + num_decrement_symbol - 1) - 1
						;	SymbolCode(Index_name_func_focused + 1 + cnt) = SymbolCode(Index_name_func_focused + num_decrement_symbol + cnt)	;�� Index_name_func_focused + num_decrement_symbol + cnt = Index_name_func_focused + 1 + (num_decrement_symbol - 1) + cnt
						;	SymbolCode(Index_name_func_focused + num_decrement_symbol + cnt) = 0
						;loop
						;--------------------------------------------------��SLOW��--------------------------------------------------
						;                                                    ����
						;--------------------------------------------------��FAST��--------------------------------------------------
						memcpy SymbolCode,SymbolCode,4*(num_symbol - Index_name_func_focused - num_decrement_symbol),4*(Index_name_func_focused + 1),4*(Index_name_func_focused + num_decrement_symbol)	;�V�t�g
						memset SymbolCode,0,4*(num_decrement_symbol - 1),4*(num_symbol - num_decrement_symbol + 1)	;���̏I����0�Ŗ��߂�
						;--------------------------------------------------��FAST��--------------------------------------------------
	
					num_symbol -= num_decrement_symbol - 1	;�V���{���̌������X�V
					
	
				;�� �t�B�M���A�R�[�h��ҏW���� ��
					FigureCode(num_figure_LeftOfFocusedFunc) = result_calc_func_focused	;�֐��̏����œ���ꂽ���ʂ�}��
	
					;�� �����f�[�^�����փV�t�g ��
					
						;--------------------------------------------------�� A ��--------------------------------------------------
						;�ړ����ׂ����l�f�[�^�̌��� num_figure - num_figure_LeftOfFocusedFunc - num_decrement_figure �ŗ^�����A
						;�ړ���C���f�b�N�X�� num_figure_LeftOfFocusedFunc + 1 + cnt �ŗ^�����A
						;�ړ����C���f�b�N�X�� num_figure_LeftOfFocusedFunc + 1 + cnt + (num_decrement_figure - 1) = num_figure_LeftOfFocusedFunc + cnt + num_decrement_figure �ŗ^������B
						;�قƂ�ǂ̊֐��́A����1�ŏo�͂�1�Ȃ̂ňړ�������0�ƂȂ�B
	
						;repeat num_figure - num_figure_LeftOfFocusedFunc - num_decrement_figure
						;	num1 = num_figure_LeftOfFocusedFunc + 1 + cnt						;�ړ���C���f�b�N�X
						;	num2 = num_figure_LeftOfFocusedFunc + cnt + num_decrement_figure	;�ړ����C���f�b�N�X
						;	if num1 < num2 {
						;		FigureCode(num1) = FigureCode(num2)
						;		FigureCode(num2) = 0.0	;�ꉞ0����
						;	}
						;loop
						;--------------------------------------------------�� A ��--------------------------------------------------
						;                                                    ����
						;                     A,B�ŁA�������Ԃ͂قƂ�Ǖς��Ȃ� (B�̕���1000�񃋁[�v��1ms�ʑ���)
						;                                                    ����
						;--------------------------------------------------�� B ��--------------------------------------------------
						;�ړ����ׂ��f�[�^�̃T�C�Y�́A8*(�ړ����ׂ����l�f�[�^�̌�) = 8*(num_figure - num_figure_LeftOfFocusedFunc - num_decrement_figure) �ŗ^������B
						
						memcpy FigureCode,FigureCode,8*(num_figure - num_figure_LeftOfFocusedFunc - num_decrement_figure),8*(num_figure_LeftOfFocusedFunc + 1),8*(num_figure_LeftOfFocusedFunc + num_decrement_figure)	;�V�t�g
						memset FigureCode,0,8*(num_decrement_figure - 1),8*(num_figure - num_decrement_figure + 1)	;�g���Ă��Ȃ��v�f���ꉞ0�Ŗ��߂�
						;--------------------------------------------------�� B ��--------------------------------------------------
					
					num_figure -= num_decrement_figure - 1	;���l�f�[�^�̌������X�V
					
			} else {	;�֐��������Ȃ����ꍇ
				break	;�֐��������I������
			}
			
		loop
	
		if flg1_error = 1 : return 1
	
		;�� �c�������S�̂��T�u���[�`�� CalcP �ɏ��������遄
			Index_RangeStart_sub1 = 0
			Index_RangeEnd_sub1 = num_symbol - 1
			gosub *CalcP
	
		if flg1_error_sub1 = 1 : return 1
	
	CalcResult = FigureCode(0)
	return 0

*CalcP
	;���ԃR�[�h�ɏ]���āA + - * / \ �� () �݂̂ŕ\�����ꂽ���������v�Z����T�u���[�`���B
	;���̈ꕔ������������
	
	;�v�Z�J�n,�I���ʒu�������V���{���R�[�h���ł̃C���f�b�N�X�͂��ꂼ�� Index_RangeStart_sub1 , Index_RangeEnd_sub1 �����^�ϐ���
	;�^����ꂽ���̂��g�p����B
	;�������ė^����ꂽ���̕������u�S�������v�ƌĂԂ��Ƃɂ���B
	
	;����������ɏI�������� flg1_error_sub1 �����^�ϐ��̓��e�� 0 �ɂȂ�A�G���[�����������ꍇ�� 1 �ɂȂ�B
	
	;�{�T�u���[�`�����Ŋ�������ϐ��̖��O�̖����ɂ� sub1 ��t���Ă���B
	
	flg1_error_sub1 = 0	;�G���[���m�t���O
	width_range_sub1 = Index_RangeEnd_sub1 - Index_RangeStart_sub1 + 1	;�S�����Ă����Ԃ̃V���{���̐�
	
	;�� �����J�n ��
		repeat	; ( �������[�v�B ( �������Ȃ�܂ŌJ��Ԃ�
	
			;�� ��ԉE���� ( ��T�� ��
				;�������ɒT��
				flg1_Found�i_sub1 = 0	; ( �����t���O
				repeat width_range_sub1
					if SymbolCode(Index_RangeEnd_sub1 - cnt) = 15 {
						flg1_Found�i_sub1 = 1
						Index_�i_focused_sub1 = Index_RangeEnd_sub1 - cnt	;��ԉE���� ( �́A�V���{���R�[�h���ł̃C���f�b�N�X�B
						break
					}
				loop
	
				if flg1_Found�i_sub1 = 1 {	; ( �����������ꍇ
				
					;�� �Ή����� ) ��T�� ��
						repeat Index_RangeEnd_sub1 - Index_�i_focused_sub1
							if SymbolCode(Index_�i_focused_sub1 + 1 + cnt) = 16 {
								Index_�j_focused_sub1 = Index_�i_focused_sub1 + 1 + cnt	;�Ή����� ) �́A�V���{���R�[�h���ł̃C���f�b�N�X�B
								widh_contents_�i�j_focused_sub1 = cnt	;���ڂ��Ă��� ( ) �̒��g�̃V���{����
								break
							}
						loop
	
					;�� ������ ( ) ��荶���ɂ��鐔�l�f�[�^�̌��𒲂ׂ� ��
						num_figure_LeftOfRange_sub2 = 0	;���������l�f�[�^�̌��̃J�E���^
						repeat Index_�i_focused_sub1
							if SymbolCode(cnt) = 1 : num_figure_LeftOfRange_sub2 ++
						loop
					
					;�� ������ ( ) �̒��g���������� ��
						Index_RangeStart_sub2 = Index_�i_focused_sub1 + 1
						Index_RangeEnd_sub2 = Index_�j_focused_sub1 - 1
						gosub *CalcNoPP
						if flg1_error_sub2 = 1 : flg1_error_sub1 = 1 : break
					
					;�� ���g���������� ( ) ����蕥�� ��
						SymbolCode(Index_�i_focused_sub1) = SymbolCode(Index_�i_focused_sub1 + 1) : SymbolCode(Index_�i_focused_sub1 + 1) = 0,0	; ( �������Ă��ׂ̗̃V���{��(=����������ꂽ���g)�ŏ㏑���B ���̌�A�����ꂽ ( �̉E���ɂ���2�V���{��(���Ȃ킿�A ���l��) )�������B
	
						;--------------------------------------------------��SLOW��--------------------------------------------------
						;repeat num_symbol - Index_�i_focused_sub1 - 3; = num_symbol - Index_�i_focused_sub1 - 1 - 2	; ) �������āA������E���̃V���{����S������2�����V�t�g�Brepeat�̃p�����[�^�́A�ړ�������ׂ��V���{���̌��B-2 �� ( ) �����������Ƃɂ��A����2�V���{�����V�t�g���邱�Ƃ��Ӗ�����B 
						;	SymbolCode(Index_�i_focused_sub1 + 1 + cnt) = SymbolCode(Index_�i_focused_sub1 + 3 + cnt)	;�� Index_�i_focused_sub1 + 3 + cnt = Index_�i_focused_sub1 + 1 + cnt + 2
						;	SymbolCode(Index_�i_focused_sub1 + 1 + cnt + 2) = 0
						;loop
						;--------------------------------------------------��SLOW��--------------------------------------------------
						;                                                    ����
						;--------------------------------------------------��FAST��--------------------------------------------------
						memcpy SymbolCode,SymbolCode,4*(num_symbol - Index_�i_focused_sub1 - 3),4*(Index_�i_focused_sub1 + 1),4*(Index_�i_focused_sub1 + 3)	;�V�t�g
						SymbolCode(num_symbol - 2) = 0,0;���̏I����0�Ŗ��߂�
						;--------------------------------------------------��FAST��--------------------------------------------------
						
						num_symbol - 2	;�V���{���̌������X�V
						Index_RangeEnd_sub1 -= widh_contents_�i�j_focused_sub1 + 1 : width_range_sub1 -= widh_contents_�i�j_focused_sub1 + 1	;�S�������͈̔͏����X�V
					
				} else {	;( �������Ȃ����ꍇ
					break	; ( �̌��������I������
				}
		loop
	
		if flg1_error_sub1 = 1 : return
	
		;�� �c���Ă���S�������S�̂����T�u���[�`�� CalcNoPP �ɏ��������� ��
			Index_RangeStart_sub2 = Index_RangeStart_sub1
			Index_RangeEnd_sub2 = Index_RangeEnd_sub1
			
			;�� �c���Ă���S��������荶���ɂ��鐔�l�f�[�^�̌��𒲂ׂ� ��
				num_figure_LeftOfRange_sub2 = 0	;�����������l�f�[�^�̌��̃J�E���^
				repeat Index_RangeStart_sub2
					if SymbolCode(cnt) = 1 : num_figure_LeftOfRange_sub2 ++
				loop
			
			gosub *CalcNoPP
	
		if flg1_error_sub2 = 1 : flg1_error_sub1 = 1 : return
	
	return

*CalcNoPP
	;���ԃR�[�h�ɏ]���āA + - * / \ �� �݂̂ŕ\�����ꂽ���������v�Z����T�u���[�`���B
	;���̈ꕔ������������B
	
	;�v�Z�J�n,�I���ʒu�������V���{���R�[�h���ł̃C���f�b�N�X�͂��ꂼ�� Index_RangeStart_sub2 , Index_RangeEnd_sub2 �����^�ϐ���
	;�^����ꂽ���̂��g�p����B
	;�������ė^����ꂽ���̕������u�S�������v�ƌĂԂ��Ƃɂ���B
	;�S��������荶���ɂ��鐔�l�f�[�^�̌��̏��́A�unum_figure_LeftOfRange_sub2�v�����^�ϐ��ŗ^����ꂽ���̂��g�p����B
	
	;���̏������I���܂łɁA�S�������ɂ��邷�ׂĂ̒萔��ϐ��͐��l�ɒu����������B
	
	;����������ɏI�������� flg1_error_sub2 �����^�ϐ��̓��e�� 0 �ɂȂ�A�G���[�����������ꍇ�� 1 �ɂȂ�B
	
	;�{�T�u���[�`�����Ŋ�������ϐ��̖��O�̖����ɂ� sub2 ��t���Ă���B
	
	flg1_error_sub2 = 0	;�G���[���m�t���O
	width_range_sub2 = Index_RangeEnd_sub2 - Index_RangeStart_sub2 + 1	;�S�����Ă����Ԃ̃V���{���̐�

	;�� �����J�n ��
	
		;�� * / \ �̏��� ��
	
			; * / \ �̒��Œ��ڂ���L�����u�L��A�v�ƌĂԂ��Ƃɂ���ƁA�������������Ƃ��́A���̉E���̐��ɂ��ẮA�L��A�̉E�ׂ� - ������ꍇ�͂���ɉE���̃V���{����蓾��ꂽ����-1�{�������̂��L��A�̉E���̐��Ƃ��Ĉ����B
			;�L��A�̍����̐��ɂ��ẮA�L��A�̍��ׂ̃V���{����蓾��ꂽ�����A�L��A�̍����̐��Ƃ��Ĉ����B�܂�A�L��A��2���� - �������Ă�����ɂ͎���o���Ȃ��B
			;�������邱�ƂŁA���Z�L���Ƃ��Ă̖��������� - ��������Ď������邱�Ƃ̂Ȃ��悤�ɂ��Ă���B
			
			repeat	; * / \ �������[�v�B * / \ �������Ȃ�܂ŌJ��Ԃ��B
	
				;�� ��ԍ��ɂ��� * / \ ��T�� ��
					flg1_Found���^��_sub2 = 0	; * / \ �����t���O�B(0,1,2,3) = (NotFound,*,/,\)
					repeat width_range_sub2
						num1_sub2 = SymbolCode(Index_RangeStart_sub2 + cnt)
						Index_���^��_focused_sub2 = Index_RangeStart_sub2 + cnt	;�����Ă���V���{���̃C���f�b�N�X�B * / \ ����������ă��[�v�𔲂�����Ŗ��ɗ��B
						if num1_sub2 = 10 : flg1_Found���^��_sub2 = 1 : break
						if num1_sub2 = 11 : flg1_Found���^��_sub2 = 2 : break
						if num1_sub2 = 12 : flg1_Found���^��_sub2 = 3 : break
					loop

				if flg1_Found���^��_sub2 ! 0 {	;�ǂꂩ�����������ꍇ
					;�����������Z�L���� �L��A �Ƃ���B
					
					ID_symbolA_sub2 = num1_sub2	;�L��A �̃V���{�����ʒl
					num_decrement_symbol_sub2 = 1	;����̌v�Z�ŏ��������V���{���̌��̃J�E���^
					num_decrement_figure_sub2 = 0	;����̌v�Z�ŏ�������鐔�l�f�[�^�̌��̃J�E���^
					;dim Type_symbol_BothSides_sub2,2	(�揉���������ŏ�������)
						;���L��A �̗��T�C�h�̐��̎�ށB(0,1,2) = (figure,FixedNumber,Variable)�B�v�f0,1�͂��ꂼ�ꍶ,�E�T�C�h�̏��B
					;TOF_Is�|OnTheRightSideOfSymbolA_sub2	:	�L��A �̉E�ׂ� - �����邩�ǂ����B(0,1) = (�Ȃ�,����)
					;num_corrector_RightSideOfSymbolA_sub2	:	�L��A �̉E���̐��̐擪�Ɋ|����␳��
	
					;�� �L��A ��荶���ɂ��鐔�l�f�[�^�̌��𒲂ׂ� ��
						count1_sub2 = 0
						repeat Index_���^��_focused_sub2 - Index_RangeStart_sub2
							if SymbolCode(Index_���^��_focused_sub2 - 1 - cnt) = 1 : count1_sub2 ++
						loop
						num_figure_LeftOfSymbolA_sub2 = num_figure_LeftOfRange_sub2 + count1_sub2
						
					;�� �L��A�̍����̐����擾���� ��
						
						num_decrement_symbol_sub2 ++
						Index_symbol_LeftSideOfSymbolA_sub2 = Index_���^��_focused_sub2 - 1	;�L��A �̍��ׂ̃V���{���́A�V���{���R�[�h���ł̃C���f�b�N�X�B
						num1_sub2 = SymbolCode(Index_symbol_LeftSideOfSymbolA_sub2)	;�L��A �̍��ׂ̃V���{�����ʒl�����o��
						repeat 1;�E�o���u
							if num1_sub2 = 1 {	;���l�f�[�^�ł���ꍇ
								num_decrement_figure_sub2 ++
								Type_symbol_BothSides_sub2(0) = 0
								;�� ���ꂪ�V���{���R�[�h���ŉ��Ԗڂ̐��l�f�[�^�Ȃ̂����ׁA���̐��l�f�[�^�̐��l���擾���� 
									num_figure_LeftSideOfSymbolA_sub2 = num_figure_LeftOfSymbolA_sub2	;�ԍ����擾
									num_LeftSideOfSymbolA_sub2 = FigureCode(num_figure_LeftSideOfSymbolA_sub2 - 1)	;���l���擾
								break;�E�o
							}
							if (1001 <= num1_sub2)&(num1_sub2 <= 1002) {	;�萔�ł���ꍇ
								Type_symbol_BothSides_sub2(0) = 1
								repeat num_kind_FixedNumber@N_M_fx0
									if num1_sub2 = MeasurementTable_FixedNumber_num@N_M_fx0(cnt) : num_LeftSideOfSymbolA_sub2 = MeasurementTable_FixedNumber_value@N_M_fx0(cnt)
								loop
								break;�E�o
							}
							if (2001 <= num1_sub2)&(num1_sub2 <= 2052) {	;�ϐ��ł���ꍇ
								Type_symbol_BothSides_sub2(0) = 2
								num_LeftSideOfSymbolA_sub2 = VariableValueList(num1_sub2 - 2001)
								break;�E�o
							}
						loop
					
					;�� �L��A�̉E���̐����擾���� ��
						
						num2_sub2 = SymbolCode(Index_���^��_focused_sub2 + 1)	;�L��A �̉E�ׂ̃V���{�����ʒl�����o��
						if num2_sub2 = 6 {	;���ꂪ - �ł���ꍇ
							TOF_Is�|OnTheRightSideOfSymbolA_sub2 = 1
							num_corrector_RightSideOfSymbolA_sub2 = -1.0	;�␳�����]
							num2_sub2 = SymbolCode(Index_���^��_focused_sub2 + 2)	;����ɉE�ׂ̃V���{�����ʒl�����o��
							num_decrement_symbol_sub2 + 2
						} else {
							num_decrement_symbol_sub2 ++
							num_corrector_RightSideOfSymbolA_sub2 = 1.0	;�␳����1
						}
						repeat 1;�E�o���u
							if num2_sub2 = 1 {	;���l�f�[�^�ł���ꍇ
								num_decrement_figure_sub2 ++
								Type_symbol_BothSides_sub2(1) = 0
								;�� ���ꂪ�V���{���R�[�h���ŉ��Ԗڂ̐��l�f�[�^�Ȃ̂����ׁA���̐��l�f�[�^�̐��l���擾���� ��
									num_figure_RightSideOfSymbolA_sub2 = num_figure_LeftOfSymbolA_sub2 + 1	;�ԍ����擾
									num_RightSideOfSymbolA_sub2 = num_corrector_RightSideOfSymbolA_sub2*FigureCode(num_figure_RightSideOfSymbolA_sub2 - 1)	;���l���擾
								break;�E�o
							}
							if (1001 <= num2_sub2)&(num2_sub2 <= 1002) {	;�萔�ł���ꍇ
								Type_symbol_BothSides_sub2(1) = 1
								repeat num_kind_FixedNumber@N_M_fx0
									if num2_sub2 = MeasurementTable_FixedNumber_num@N_M_fx0(cnt) : num_RightSideOfSymbolA_sub2 = num_corrector_RightSideOfSymbolA_sub2*MeasurementTable_FixedNumber_value@N_M_fx0(cnt)
								loop
								break;�E�o
							}
							if (2001 <= num2_sub2)&(num2_sub2 <= 2052) {	;�ϐ��ł���ꍇ
								Type_symbol_BothSides_sub2(1) = 2
								num_RightSideOfSymbolA_sub2 = num_corrector_RightSideOfSymbolA_sub2*VariableValueList(num2_sub2 - 2001)
								break;�E�o
							}
						loop

					;�� �L��A �Ƃ��̗����̐����������� ��
						repeat 1;�E�o���u
							if ID_symbolA_sub2 = 10 {	;��Z�̏ꍇ
								result_CalcOfSymbolA_sub2 = num_LeftSideOfSymbolA_sub2*num_RightSideOfSymbolA_sub2
								break;�E�o
							}
							if ID_symbolA_sub2 = 11 {	;���Z�̏ꍇ
								if num_RightSideOfSymbolA_sub2 = 0.0 : flg1_error_sub2 = 1 : ErrorCode = 1,2,0 : break	;0���Z�G���[
								result_CalcOfSymbolA_sub2 = num_LeftSideOfSymbolA_sub2/num_RightSideOfSymbolA_sub2
								break;�E�o
							}
							if ID_symbolA_sub2 = 12 {	;�]������߂�ꍇ
								if num_RightSideOfSymbolA_sub2 = 0.0 : flg1_error_sub2 = 1 : ErrorCode = 1,2,0 : break	;0���Z�G���[
								result_CalcOfSymbolA_sub2 = num_LeftSideOfSymbolA_sub2\num_RightSideOfSymbolA_sub2
								break;�E�o
							}
						loop

					if flg1_error_sub2 = 1 : break

					;�� ���ԃR�[�h�ɔ��f���� ��
					
						;�� �V���{���R�[�h��ҏW���� ��
							SymbolCode(Index_symbol_LeftSideOfSymbolA_sub2) = 1	;�L��A �̍��ׂ̃V���{�����A�v�Z���ʂ̃V���{���ŏ㏑������B
							;�� �V���{���R�[�h���̋󂢂��ꏊ���l�߂�B ��
								;--------------------------------------------------��SLOW��--------------------------------------------------
								;repeat num_symbol - Index_���^��_focused_sub2 - 1 - (num_decrement_symbol_sub2 - 2)
								;	SymbolCode(Index_���^��_focused_sub2 + cnt) = SymbolCode(Index_���^��_focused_sub2 + cnt + (2 + TOF_Is�|OnTheRightSideOfSymbolA_sub2))
								;	SymbolCode(Index_���^��_focused_sub2 + cnt + (2 + TOF_Is�|OnTheRightSideOfSymbolA_sub2)) = 0
								;loop
								;--------------------------------------------------��SLOW��--------------------------------------------------
								;                                                     ��
								;--------------------------------------------------��FAST��--------------------------------------------------

								if TOF_Is�|OnTheRightSideOfSymbolA_sub2 = 0 {	;�L��A �̉E�ׂ� - �łȂ������ꍇ
									SymbolCode(Index_symbol_LeftSideOfSymbolA_sub2 + 1) = 0,0	;�����ς̃V���{���ŁA�܂�������Ă��Ȃ����̂������B
	
									;--------------------------------------------------��SLOW��--------------------------------------------------
									;repeat num_symbol - Index_���^��_focused_sub2 - 2	; = num_symbol - Index_���^��_focused_sub2 - 1 - (num_decrement_symbol_sub2 - 2)
									;	Const_sub2 = Index_���^��_focused_sub2 + cnt
									;	SymbolCode(Const_sub2) = SymbolCode(Const_sub2 + 2)	; +2 ���R�R�ɒ���!
									;	SymbolCode(Const_sub2 + 2) = 0
									;loop
									;--------------------------------------------------��SLOW��--------------------------------------------------
									;                                                    ����
									;--------------------------------------------------��FAST��--------------------------------------------------
									memcpy SymbolCode,SymbolCode,4*(num_symbol - Index_���^��_focused_sub2 - 2),4*Index_���^��_focused_sub2,4*(Index_���^��_focused_sub2 + 2)	;�V�t�g
									SymbolCode(num_symbol - 2) = 0,0	;���̏I����0�Ŗ��߂�
									;--------------------------------------------------��FAST��--------------------------------------------------
								} else {	;�L��A �̉E�ׂ� - �ł������ꍇ
									SymbolCode(Index_symbol_LeftSideOfSymbolA_sub2 + 1) = 0,0,0	;�����ς̃V���{���ŁA�܂�������Ă��Ȃ����̂������B
	
									;--------------------------------------------------��SLOW��--------------------------------------------------
									;repeat num_symbol - Index_���^��_focused_sub2 - 3	; = num_symbol - Index_���^��_focused_sub2 - 1 - (num_decrement_symbol_sub2 - 2)
									;	Const_sub2 = Index_���^��_focused_sub2 + cnt
									;	SymbolCode(Const_sub2) = SymbolCode(Const_sub2 + 3)	; +3 ���R�R�ɒ���!
									;	SymbolCode(Const_sub2 + 3) = 0
									;loop
									;--------------------------------------------------��SLOW��--------------------------------------------------
									;                                                    ����
									;--------------------------------------------------��FAST��--------------------------------------------------
									memcpy SymbolCode,SymbolCode,4*(num_symbol - Index_���^��_focused_sub2 - 3),4*Index_���^��_focused_sub2,4*(Index_���^��_focused_sub2 + 3)	;�V�t�g
									SymbolCode(num_symbol - 3) = 0,0,0	;���̏I����0�Ŗ��߂�
									;--------------------------------------------------��FAST��--------------------------------------------------
								}
								
								num_symbol -= num_decrement_symbol_sub2 - 1	;�V���{���̌������X�V
								Index_RangeEnd_sub2 -= num_decrement_symbol_sub2 - 1 : width_range_sub2 -= num_decrement_symbol_sub2 - 1	;�v�Z�I���ʒu�������V���{���R�[�h���ł̃C���f�b�N�X���X�V
							;--------------------------------------------------��FAST��--------------------------------------------------
							
						;�� �t�B�M���A�R�[�h��ҏW���� ��
							;�V���Ȑ��l�f�[�^�̏������݂ƁA����ɔ��������f�[�^�̃V�t�g���s���B
							
							repeat 1;�E�o���u
								if (Type_symbol_BothSides_sub2(0) ! 0)&(Type_symbol_BothSides_sub2(1) ! 0) {	;[ �񐔒l�f�[�^ �L��A �񐔒l�f�[�^	] �̏ꍇ
									;--------------------------------------------------��SLOW��--------------------------------------------------
									;repeat num_figure - num_figure_LeftOfSymbolA_sub2	;�����f�[�^�̃V�t�g
									;	FigureCode(num_symbol - cnt) = FigureCode(num_symbol - 1 - cnt)
									;loop
									;--------------------------------------------------��SLOW��--------------------------------------------------
									;                                                    ����
									;--------------------------------------------------��FAST��--------------------------------------------------
									memcpy FigureCode,FigureCode,8*(num_figure - num_figure_LeftOfSymbolA_sub2),8*(num_figure_LeftOfSymbolA_sub2 + 1),8*num_figure_LeftOfSymbolA_sub2	;�����f�[�^�̃V�t�g
									;--------------------------------------------------��FAST��--------------------------------------------------
									FigureCode(num_figure_LeftOfSymbolA_sub2) = result_CalcOfSymbolA_sub2	;�v�Z���ʂ̑}��
									num_figure ++	;���l�f�[�^�̌������X�V
									break;�E�o
								}
								if (Type_symbol_BothSides_sub2(0) = 0)&(Type_symbol_BothSides_sub2(1) ! 0) {	;[ ���l�f�[�^ �L��A �񐔒l�f�[�^	] �̏ꍇ
									FigureCode(num_figure_LeftOfSymbolA_sub2 - 1) = result_CalcOfSymbolA_sub2	;�L��A �̍����̐��ɑΉ����鐔�l�f�[�^���v�Z���ʂŏ㏑��
									break;�E�o
								}
								if (Type_symbol_BothSides_sub2(0) ! 0)&(Type_symbol_BothSides_sub2(1) = 0) {	;[ �񐔒l�f�[�^ �L��A ���l�f�[�^	] �̏ꍇ
									FigureCode(num_figure_LeftOfSymbolA_sub2) = result_CalcOfSymbolA_sub2	;�L��A �̉E���̐��ɑΉ����鐔�l�f�[�^���v�Z���ʂŏ㏑��
									break;�E�o
								}
								if (Type_symbol_BothSides_sub2(0) = 0)&(Type_symbol_BothSides_sub2(1) = 0) {	;[ ���l�f�[�^ �L��A ���l�f�[�^		] �̏ꍇ
									FigureCode(num_figure_LeftOfSymbolA_sub2 - 1) = result_CalcOfSymbolA_sub2	;�L��A �̍����̐��ɑΉ����鐔�l�f�[�^���v�Z���ʂŏ㏑��
									;--------------------------------------------------��SLOW��--------------------------------------------------
									;repeat num_figure - num_figure_LeftOfSymbolA_sub2 - 1	;�����f�[�^�̃V�t�g
									;	FigureCode(num_figure_LeftOfSymbolA_sub2 + cnt) = FigureCode(num_figure_LeftOfSymbolA_sub2 + cnt + 1)
									;	FigureCode(num_figure_LeftOfSymbolA_sub2 + cnt + 1) = 0.0	;�ꉞ0����
									;loop
									;--------------------------------------------------��SLOW��--------------------------------------------------
									;                                                    ����
									;--------------------------------------------------��FAST��--------------------------------------------------
									memcpy FigureCode,FigureCode,8*(num_figure - num_figure_LeftOfSymbolA_sub2 - 1),8*num_figure_LeftOfSymbolA_sub2,8*(num_figure_LeftOfSymbolA_sub2 + 1)	;�����f�[�^�̃V�t�g
									FigureCode(num_figure - 1) = 0.0	;�g���Ă��Ȃ��v�f���ꉞ0�Ŗ��߂�
									;--------------------------------------------------��FAST��--------------------------------------------------
									num_figure --	;���l�f�[�^�̌������X�V
									break;�E�o
								}
							loop
						
					} else {	; * / \ �������Ȃ����ꍇ
						break	;�������I������
					}
			loop
	
			if flg1_error_sub2 = 1 : return
	
		;�� + - �̏��� ��
			repeat	; + - �������[�v�B + - �������Ȃ�܂ŌJ��Ԃ��B
	
				;�� ��ԍ����ɂ��� + - ��T�� ��
					flg1_Found�{�|_sub2 = 0	; + - �����t���O�B (0,1,2) = (NotFound,Found+,Found-)
					repeat width_range_sub2
						num1_sub2 = SymbolCode(Index_RangeStart_sub2 + cnt)
						Index_�{�|_focused_sub2 = Index_RangeStart_sub2 + cnt	;�����Ă���V���{���̃C���f�b�N�X�B + - ����������ă��[�v�𔲂�����Ŗ��ɗ��B
						if num1_sub2 = 5 : flg1_Found�{�|_sub2 = 1 : break
						if num1_sub2 = 6 : flg1_Found�{�|_sub2 = 2 : break
					loop
				
				if flg1_Found�{�|_sub2 ! 0 {	;�ǂꂩ�����������ꍇ
					;�����������Z�L���� �L��A �Ƃ���B
	
					ID_symbolA_sub2 = num1_sub2	;�L��A �̃V���{�����ʒl
					num_decrement_figure_sub2 = 0	;����̌v�Z�ŏ�������鐔�l�f�[�^�̌��̃J�E���^
					num_decrement_symbol_sub2 = 1	;����̌v�Z�ŏ��������V���{���̌��̃J�E���^
					Type_symbol_LeftSideOfSymbolA_sub2 = 0	;�L��A �̍����̐��̎�ށB(-1,0,1,2) = (null,figure,FixedNumber,Variable)
					Type_symbol_RightSideOfSymbolA_sub2 = 0	;�L��A �̉E���̐��̎�ށB(0,1,2) = (figure,FixedNumber,Variable)
	
					;�� �L��A ��荶���ɂ��鐔�l�f�[�^�̌��𒲂ׂ� ��
						count1_sub2 = 0
						repeat Index_�{�|_focused_sub2 - Index_RangeStart_sub2
							if SymbolCode(Index_�{�|_focused_sub2 - 1 - cnt) = 1 : count1_sub2 ++
						loop
						num_figure_LeftOfSymbolA_sub2 = num_figure_LeftOfRange_sub2 + count1_sub2
	
					;�� �L��A�̍����̐����擾���� ��
						if Index_�{�|_focused_sub2 = Index_RangeStart_sub2 {	;�L��A �̍����ɐ��������ꍇ
							Type_symbol_LeftSideOfSymbolA_sub2 = -1
							num_LeftSideOfSymbolA_sub2 = 0.0	;�֋X��A�L��A�̍�����0�����肷��
						} else {	;�L��A�̍����ɐ�������ꍇ
							num_decrement_symbol_sub2 ++
							Index_symbol_LeftSideOfSymbolA_sub2 = Index_�{�|_focused_sub2 - 1	;�L��A �̍��ׂ̃V���{���́A�V���{���R�[�h���ł̃C���f�b�N�X�B
							num1_sub2 = SymbolCode(Index_symbol_LeftSideOfSymbolA_sub2)	;�L��A �̍��ׂ̃V���{�����ʒl�����o��
							repeat 1;�E�o���u
								if num1_sub2 = 1 {	;���l�f�[�^�ł���ꍇ
									num_decrement_figure_sub2 ++
									Type_symbol_LeftSideOfSymbolA_sub2 = 0
									;�� ���ꂪ�V���{���R�[�h���ŉ��Ԗڂ̐��l�f�[�^�Ȃ̂����ׁA���̐��l�f�[�^�̐��l���擾���� 
										num_figure_LeftSideOfSymbolA_sub2 = num_figure_LeftOfSymbolA_sub2	;�ԍ����擾
										num_LeftSideOfSymbolA_sub2 = FigureCode(num_figure_LeftSideOfSymbolA_sub2 - 1)	;���l���擾
									
									break;�E�o
								}
								if (1001 <= num1_sub2)&(num1_sub2 <= 1002) {	;�萔�ł���ꍇ
									Type_symbol_LeftSideOfSymbolA_sub2 = 1
									repeat num_kind_FixedNumber@N_M_fx0
										if num1_sub2 = MeasurementTable_FixedNumber_num@N_M_fx0(cnt) : num_LeftSideOfSymbolA_sub2 = MeasurementTable_FixedNumber_value@N_M_fx0(cnt)
									loop
									break;�E�o
								}
								if (2001 <= num1_sub2)&(num1_sub2 <= 2052) {	;�ϐ��ł���ꍇ
									Type_symbol_LeftSideOfSymbolA_sub2 = 2
									num_LeftSideOfSymbolA_sub2 = VariableValueList(num1_sub2 - 2001)
									break;�E�o
								}
							loop
						}
	
					;�� �L��A�̉E���̐����擾���� ��
						num_decrement_symbol_sub2 ++
						num2_sub2 = SymbolCode(Index_�{�|_focused_sub2 + 1)	;�L��A �̉E�ׂ̃V���{�����ʒl�����o��
						repeat 1;�E�o���u
							if num2_sub2 = 1 {	;���l�f�[�^�ł���ꍇ
								num_decrement_figure_sub2 ++
								Type_symbol_RightSideOfSymbolA_sub2 = 0
								;�� ���ꂪ�V���{���R�[�h���ŉ��Ԗڂ̐��l�f�[�^�Ȃ̂����ׁA���̐��l�f�[�^�̐��l���擾���� ��
									num_figure_RightSideOfSymbolA_sub2 = num_figure_LeftOfSymbolA_sub2 + 1	;�ԍ����擾
								;/DEBUG/;dialog num_figure_RightSideOfSymbolA_sub2 - 1 : dialog length(FigureCode)
									num_RightSideOfSymbolA_sub2 = FigureCode(num_figure_RightSideOfSymbolA_sub2 - 1)	;���l���擾
								
								break;�E�o
							}
							if (1001 <= num2_sub2)&(num2_sub2 <= 1002) {	;�萔�ł���ꍇ
								Type_symbol_RightSideOfSymbolA_sub2 = 1
								repeat num_kind_FixedNumber@N_M_fx0
									if num2_sub2 = MeasurementTable_FixedNumber_num@N_M_fx0(cnt) : num_RightSideOfSymbolA_sub2 = MeasurementTable_FixedNumber_value@N_M_fx0(cnt)
								loop
								break;�E�o
							}
							if (2001 <= num2_sub2)&(num2_sub2 <= 2052) {	;�ϐ��ł���ꍇ
								Type_symbol_RightSideOfSymbolA_sub2 = 2
								num_RightSideOfSymbolA_sub2 = VariableValueList(num2_sub2 - 2001)
								break;�E�o
							}
						loop
	
					;�� �L��A �Ƃ��̗����̐����������� ��
						if ID_symbolA_sub2 = 5 {	;���Z�̏ꍇ
							result_CalcOfSymbolA_sub2 = num_LeftSideOfSymbolA_sub2 + num_RightSideOfSymbolA_sub2
						} else {	;���Z�̏ꍇ
							result_CalcOfSymbolA_sub2 = num_LeftSideOfSymbolA_sub2 - num_RightSideOfSymbolA_sub2
						}
	
					;�� ���ԃR�[�h�ɔ��f���� ��
					
						;�� �V���{���R�[�h��ҏW���� ��
							if Type_symbol_LeftSideOfSymbolA_sub2 = -1 {	;�L��A �̍����ɐ��������ꍇ
								SymbolCode(Index_�{�|_focused_sub2) = 1,0	;�L��A �̃V���{�����A�v�Z���ʂ̃V���{���Œu�������A����ɁA�����ς̃V���{���������B
								;�� �V���{���R�[�h���̋󂢂��ꏊ���l�߂�B ��
									;--------------------------------------------------��SLOW��--------------------------------------------------
									;repeat num_symbol - Index_�{�|_focused_sub2 - 2
									;	const1_sub2 = Index_�{�|_focused_sub2 + 1 + cnt
									;	SymbolCode(const1_sub2) = SymbolCode(const1_sub2 + 1)
									;	SymbolCode(const1_sub2 + 1) = 0
									;loop
									;--------------------------------------------------��SLOW��--------------------------------------------------
									;                                                    ����
									;--------------------------------------------------��FAST��--------------------------------------------------
									memcpy SymbolCode,SymbolCode,4*(num_symbol - Index_�{�|_focused_sub2 - 2),4*(Index_�{�|_focused_sub2 + 1),4*(Index_�{�|_focused_sub2 + 2)
									;--------------------------------------------------��FAST��--------------------------------------------------
								num_symbol --	;�V���{���̌������X�V
							} else {	;�L��A �̍����ɐ�������ꍇ
								SymbolCode(Index_�{�|_focused_sub2 - 1) = 1,0,0	;�L��A �̍����̃V���{�����A�v�Z���ʂ̃V���{���Œu�������A����ɁA�����ς̃V���{���������B
								;�� �V���{���R�[�h���̋󂢂��ꏊ���l�߂�B ��
									;--------------------------------------------------��SLOW��--------------------------------------------------
									;repeat num_symbol - Index_�{�|_focused_sub2 - 2
									;	const1_sub2 = Index_�{�|_focused_sub2 + cnt
									;	SymbolCode(const1_sub2) = SymbolCode(const1_sub2 + 2)
									;	SymbolCode(const1_sub2 + 2) = 0
									;loop
									;--------------------------------------------------��SLOW��--------------------------------------------------
									;                                                    ����
									;--------------------------------------------------��FAST��--------------------------------------------------
									memcpy SymbolCode,SymbolCode,4*(num_symbol - Index_�{�|_focused_sub2 - 2),4*Index_�{�|_focused_sub2,4*(Index_�{�|_focused_sub2 + 2)
									;--------------------------------------------------��FAST��--------------------------------------------------
								num_symbol - 2	;�V���{���̌������X�V
							}
							;num_symbol -= num_decrement_symbol_sub2 - 1	;�V���{���̌������X�V	(�p�~ (����s��))
							Index_RangeEnd_sub2 -= num_decrement_symbol_sub2 - 1 : width_range_sub2 -= num_decrement_symbol_sub2 - 1	;�v�Z�I���ʒu�������V���{���R�[�h���ł̃C���f�b�N�X���X�V
	
						;�� �t�B�M���A�R�[�h��ҏW���� ��
							;�V���Ȑ��l�f�[�^�̏������݂ƁA����ɔ��������f�[�^�̃V�t�g���s���B
	
							repeat 1;�E�o���u
								if ((Type_symbol_LeftSideOfSymbolA_sub2 = -1)&(Type_symbol_RightSideOfSymbolA_sub2 ! 0))|((Type_symbol_LeftSideOfSymbolA_sub2 ! 0)&(Type_symbol_RightSideOfSymbolA_sub2 ! 0)) {	;[�L��A �񐔒l�f�[�^] or [�񐔒l�f�[�^ �L��A �񐔒l�f�[�^] �̏ꍇ
									;--------------------------------------------------��SLOW��--------------------------------------------------
									;repeat num_figure - num_figure_LeftOfSymbolA_sub2	;�����f�[�^�̃V�t�g
									;	FigureCode(num_figure - cnt) = FigureCode(num_figure - cnt - 1)
									;loop
									;--------------------------------------------------��SLOW��--------------------------------------------------
									;                                                    ����
									;--------------------------------------------------��FAST��--------------------------------------------------
									memcpy FigureCode,FigureCode,8*(num_figure - num_figure_LeftOfSymbolA_sub2),8*(num_figure_LeftOfSymbolA_sub2 + 1),8*num_figure_LeftOfSymbolA_sub2	;�����f�[�^�̃V�t�g
									;--------------------------------------------------��FAST��--------------------------------------------------
								;/DEBUG/	�ϐ��l���X�g�������^�łȂ��ƁA�R�R�Œɂ��ڂɑ����B���Ȃ킿�A�t�B�M���A�R�[�h�������^�Ń��Z�b�g����Ă��܂��B
								;/DEBUG/;dialog length(FigureCode)
								;/DEBUG/;dialog ""+num_figure_LeftOfSymbolA_sub2+" : "+result_CalcOfSymbolA_sub2+""
									FigureCode(num_figure_LeftOfSymbolA_sub2) = result_CalcOfSymbolA_sub2	;�v�Z���ʂ̑}��
								;/DEBUG/;dialog length(FigureCode)
									num_figure ++	;���l�f�[�^�̌������X�V
									break;�E�o
								}
								if (Type_symbol_LeftSideOfSymbolA_sub2 = 0)&(Type_symbol_RightSideOfSymbolA_sub2 ! 0) {	;[���l�f�[�^ �L��A �񐔒l�f�[�^] �̏ꍇ
									FigureCode(num_figure_LeftOfSymbolA_sub2 - 1) = result_CalcOfSymbolA_sub2	;�L��A �̍����̐��ɑΉ����鐔�l�f�[�^���v�Z���ʂŏ㏑��
									break;�E�o
								}
								if ((Type_symbol_LeftSideOfSymbolA_sub2 = -1)&(Type_symbol_RightSideOfSymbolA_sub2 = 0))|((Type_symbol_LeftSideOfSymbolA_sub2 ! 0)&(Type_symbol_RightSideOfSymbolA_sub2 = 0)) {	;[�L��A ���l�f�[�^] or [�񐔒l�f�[�^ �L��A ���l�f�[�^] �̏ꍇ
									FigureCode(num_figure_LeftOfSymbolA_sub2) = result_CalcOfSymbolA_sub2	;�L��A �̉E���̐��ɑΉ����鐔�l�f�[�^���v�Z���ʂŏ㏑��
									break;�E�o
								}
								if (Type_symbol_LeftSideOfSymbolA_sub2 = 0)&(Type_symbol_RightSideOfSymbolA_sub2 = 0) {	;[���l�f�[�^ �L�� ���l�f�[�^] �̏ꍇ
									FigureCode(num_figure_LeftOfSymbolA_sub2 - 1) = result_CalcOfSymbolA_sub2	;�L��A �̍����̐��ɑΉ����鐔�l�f�[�^���v�Z���ʂŏ㏑��
									;--------------------------------------------------��SLOW��--------------------------------------------------
									;repeat num_figure - num_figure_LeftOfSymbolA_sub2 - 1	;�����f�[�^�̃V�t�g
									;	FigureCode(num_figure_LeftOfSymbolA_sub2 + cnt) = FigureCode(num_figure_LeftOfSymbolA_sub2 + cnt + 1)
									;	FigureCode(num_figure_LeftOfSymbolA_sub2 + cnt + 1) = 0.0	;�ꉞ0����
									;loop
									;--------------------------------------------------��SLOW��--------------------------------------------------
									;                                                    ����
									;--------------------------------------------------��FAST��--------------------------------------------------
									memcpy FigureCode,FigureCode,8*(num_figure - num_figure_LeftOfSymbolA_sub2 - 1),8*num_figure_LeftOfSymbolA_sub2,8*(num_figure_LeftOfSymbolA_sub2 + 1)	;�����f�[�^�̃V�t�g
									FigureCode(num_figure - 1) = 0.0	;�g���Ă��Ȃ��v�f���ꉞ0�Ŗ��߂�
									;--------------------------------------------------��FAST��--------------------------------------------------
									num_figure --	;���l�f�[�^�̌������X�V
									break;�E�o
								}
							loop
						
				} else {	; + - �������Ȃ����ꍇ
					break	;�������I������
				}
			loop
	
		;�� �Ō�Ɏc���������萔�܂��͕ϐ��Ȃ炻��𐔒l�Œu�������� ��
	
			;�� ���ۂɂ́A�Ō�ɒ萔�܂��͕ϐ����c��̂́A�S���������ŏ�����萔�܂��͕ϐ�����������ŗ^���������ȏꍇ�݂̂ł���B
		
			num1_sub2 = SymbolCode(Index_RangeStart_sub2)	;�Ō�Ɏc�����V���{�������o��
			if num1_sub2 ! 1 {	;���ꂪ���l��\�����̂ł͂Ȃ��ꍇ
				if (1001 <= num1_sub2)&(num1_sub2 <= 1002) {	;�萔�ł���ꍇ
					repeat num_kind_FixedNumber@N_M_fx0	;��̒l�𓾂�
						if num1_sub2 = MeasurementTable_FixedNumber_num@N_M_fx0(cnt) : num2_sub2 = MeasurementTable_FixedNumber_value@N_M_fx0(cnt)
					loop
				} else {	;�ϐ��ł���ꍇ
					num2_sub2 = VariableValueList(num1_sub2 - 2001)
				}
				
				SymbolCode(Index_RangeStart_sub2) = 1	;�V���{���R�[�h��ҏW
				
				;�� �t�B�M���A�R�[�h��ҏW���� ��
					;--------------------------------------------------��SLOW��--------------------------------------------------
					;repeat num_figure - num_figure_LeftOfRange_sub2	;�����f�[�^���E�ɃV�t�g
					;	FigureCode(num_figure - cnt) = FigureCode(num_figure - cnt - 1)
					;loop
					;--------------------------------------------------��SLOW��--------------------------------------------------
					;                                                    ����
					;--------------------------------------------------��FAST��--------------------------------------------------
					memcpy FigureCode,FigureCode,8*(num_figure - num_figure_LeftOfRange_sub2),8*(num_figure_LeftOfRange_sub2 + 1),8*num_figure_LeftOfRange_sub2	;�����f�[�^���E�ɃV�t�g
					;--------------------------------------------------��FAST��--------------------------------------------------
					FigureCode(num_figure_LeftOfRange_sub2) = num2_sub2	;�萔or�ϐ���蓾��ꂽ���l��}��
					num_figure ++	;���l�f�[�^�̌������X�V
			}
		
	return
#global

#module N_M_fx31
;	���������ԃR�[�h���琮�`�ϕ����񎮂𐶐�����

;	[����]
;
;		str = Mfx_ICodeToStrFormula(�ϐ���1,�ϐ���2,�ϐ���3,P1)
;
;		�ϐ���1 : �V���{���R�[�h���i�[���ꂽ�ϐ��̖��O
;		�ϐ���2 : �t�B�M���A�R�[�h���i�[���ꂽ�ϐ��̖��O
;		�ϐ���3 : �G���[�R�[�h���i�[���鐮���^�ϐ��̖��O
;		P1		: �����̕\���I�v�V�����B(1,0) = (�����̖����̘A������0���ȗ�����,�V���Ȃ�)

;	�G���[�R�[�h�̈Ӗ� : (0,1) : (�ُ�Ȃ�,�G���[)

#defcfunc Mfx_ICodeToStrFormula array SymbolCode , array FigureCode , var ErrorCode , int opt1
	num_element_SymbolCode = length(SymbolCode)	;�V���{���R�[�h�p�z��ϐ��̗v�f���B����̓t�B�M���A�R�[�h�̂���Ƌ��ʂł���B
	
	sdim result,num_element_SymbolCode*5	;���ʂ��i�[����ϐ��̏�����	(��5�ɓ��ɈӖ��͂Ȃ��B1�V���{�����K��1�����Ƃ͌���Ȃ�����A���������̖ڈ��ŁA5�B)
	
	ErrorCode = 0
	count1_num_figure = 0	;�����������l�f�[�^�̌��̃J�E���^
	repeat num_element_SymbolCode
		num1 = SymbolCode(cnt)	;1�V���{�����o��
	
		if num1 = 0 : break	;�R�[�h��ǂݏI������I��
		repeat 1	;�E�o���u
			if num1 = 1 {	;	���l�f�[�^�ł���ꍇ
				if opt1 = 1 {
					result += MCS_OmitZero(MCS_DoubleToStr64(FigureCode(count1_num_figure))) : count1_num_figure ++ : break
				} else {
					result += MCS_DoubleToStr64(FigureCode(count1_num_figure)) : count1_num_figure ++ : break
				}
			}
			;�� ���l�f�[�^�ȊO�̃V���{���̏��� ��
				flg1 = 0
				repeat num_element_MT_SCC@N_M_fx0
					if num1 = MeasurementTable_SymbolCode�\Char_Num@N_M_fx0(cnt) : result += MeasurementTable_SymbolCode�\Char_Char@N_M_fx0(cnt) : flg1 = 1 : break
				loop
				if flg1 = 1 : break
			
			ErrorCode = 1 : break	;�����܂Ŏ��s���ꂽ��G���[
		loop
		
	loop
	return result
#global