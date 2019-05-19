;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;
;	「mod_fx」
;
;	Ver 2.1.1
;
;	By FunnyMaker
;
;	製作開始 : 2013/5/12
;	最終更新 : 2014/1/13
;
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
#module N_M_fx0;「Name_Mod_fx0」の略
;	本モジュールで共通して使う変数のための名前空間
;	システム定義
;		[開始]
	c_pi = 0
	c_e = 0
;		[終了]
#global

#module N_M_fx1
;	初期化
#deffunc Mfx_init
	c_pi@N_M_fx0 = m_pi
	c_pi／2@N_M_fx0 = m_pi/2.0
	c_e@N_M_fx0 = 2.7182818284590452354
	
	;＜ シンボル識別値―文字列対応表 ＞
		num_element_MT_SCC@N_M_fx0 = 87	;対応表の要素数
		dim MeasurementTable_SymbolCode―Char_Num@N_M_fx0,87	;シンボル識別値表
		sdim MeasurementTable_SymbolCode―Char_Char@N_M_fx0,87	;文字列表
		MeasurementTable_SymbolCode―Char_Num@N_M_fx0(0) = 0  ,5  ,6  ,10 ,11 ,12  ,15 ,16 ,17 ,18 ,19 ,30   ,31   ,32   ,33    ,34    ,35    ,36       ,37       ,40    ,41   ,42   ,50     ,51   ,52   ,53   ,54     ,55   ,56       ,57     ,58    ,60    ,61     ,1001 ,1002  ,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2048,2049,2050,2051,2052
		MeasurementTable_SymbolCode―Char_Char@N_M_fx0(0) = "","+","-","*","/","\\","(",")","(",")",",","sin","cos","tan","asin","acos","atan","deg2rad","rad2deg","sqrt","pow","log","limit","max","min","abs","floor","int","roundup","round","ceil","perm","combi","c_e","c_pi","a" ,"b" ,"c" ,"d" ,"e" ,"f" ,"g" ,"h" ,"i" ,"j" ,"k" ,"l" ,"m" ,"n" ,"o" ,"p" ,"q" ,"r" ,"s" ,"t" ,"u" ,"v" ,"w" ,"x" ,"y" ,"z" ,"A" ,"B" ,"C" ,"D" ,"E" ,"F" ,"G" ,"H" ,"I" ,"J" ,"K" ,"L" ,"M" ,"N" ,"O" ,"P" ,"Q" ,"R" ,"S" ,"T" ,"U" ,"V" ,"W" ,"X" ,"Y" ,"Z"
	
	num_kind_function@N_M_fx0 = 22	;搭載関数の種類の数
	num_max_prm_func@N_M_fx0 = 3	;搭載されている関数のパラメータの個数のうち、最高の値。
	;＜ 関数名―シンボル識別値対応表 ＞
		;「MeasurementTable_Function_Char@N_M_fx0」文字列型配列の要素nと「MeasurementTable_Function_Num@N_M_fx0」整数型配列の要素nは対応している。
		sdim MeasurementTable_Function_Char@N_M_fx0,num_kind_function@N_M_fx0	;関数名表
		dim MeasurementTable_Function_Num@N_M_fx0,num_kind_function@N_M_fx0		;シンボル識別値表
		MeasurementTable_Function_Char@N_M_fx0(0) = 	"sin","cos","tan","asin","acos","atan","deg2rad","rad2deg","sqrt","pow","log","limit","max","min","abs","floor","int","roundup","round","ceil","perm","combi"
		MeasurementTable_Function_Num@N_M_fx0(0) =	 	30	,	31	,32	,	33	,	34	,	35,		36	,	37	,	40	,	41	,42	,	50	,	51	,52	,	53	,	54	,55	,	56	,		57	,58	,	60	,	61
	
	;＜ 関数シンボル識別値―パラメータ数対応表 ＞
		;「MeasurementTable_Function_Num@N_M_fx0」整数型配列の要素nと「MeasurementTable_num_prm_func@N_M_fx0」整数型配列の要素nは対応している。
		dim MeasurementTable_num_prm_func@N_M_fx0,num_kind_function@N_M_fx0
		;MeasurementTable_Function_Char@N_M_fx0(0) = 	"sin","cos","tan","asin","acos","atan","deg2rad","rad2deg","sqrt","pow","log","limit","max","min","abs","floor","int","roundup","round","ceil","perm","combi"
		MeasurementTable_num_prm_func@N_M_fx0(0) =        1,	1,	1,		1,		1,		2,		1,		1,		1,		2,		2,	3,		2,	2,		1,		1,	1,		1,			1,		1,	2,		2
		
	num_kind_FixedNumber@N_M_fx0 = 2	;定義済定数の種類の数
	;＜ 定数名―シンボル識別値対応表 ＞
		;「MeasurementTable_FixedNumber_char@N_M_fx0」文字列型配列の要素nと「MeasurementTable_FixedNumber_num@N_M_fx0」整数型配列の要素nは対応している。
		sdim MeasurementTable_FixedNumber_char@N_M_fx0,num_kind_FixedNumber@N_M_fx0	;定数名表
		dim MeasurementTable_FixedNumber_num@N_M_fx0,num_kind_FixedNumber@N_M_fx0	;シンボル識別値表
		MeasurementTable_FixedNumber_char@N_M_fx0(0) = "c_e","c_pi"
		MeasurementTable_FixedNumber_num@N_M_fx0(0) =	1001,1002
	
	;＜ 定数シンボル識別値―具体値対応表 ＞
		ddim MeasurementTable_FixedNumber_value@N_M_fx0,num_kind_FixedNumber@N_M_fx0
		;MeasurementTable_FixedNumber_char@N_M_fx0(0) =     "c_e"        ,    "c_pi"
		MeasurementTable_FixedNumber_value@N_M_fx0(0) = c_e@N_M_fx0 , c_pi@N_M_fx0
	
	num_kind_variable@N_M_fx0 = 52	;定義済変数の種類の数
	;＜ 変数名―シンボル識別値対応表 ＞
		sdim MeasurementTable_variable_char@N_M_fx0,num_kind_variable@N_M_fx0;変数名表
		MeasurementTable_variable_char@N_M_fx0(0)  = "a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"
		MeasurementTable_variable_char@N_M_fx0(26) = "A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"
	
	;＜ 動作プラットフォーム情報 ＞
		;(-1,0,1,2) = (unknown ,windows ,linux(common) ,android)
		buf = sysinfo(0) : k = peek(buf,0)
		repeat 1
			if k = 'w' : ID_platform_now@N_M_fx0 = 0 : break
			if k = 'a' : ID_platform_now@N_M_fx0 = 2 : break
			ID_platform_now@N_M_fx0 = -1 : break
		loop
	
	;＜ 他の名前空間で使用する変数の初期化 ＞
		result@N_M_fx16 = 0.0
		
		ddim val_prm_func_focused@N_M_fx22,num_max_prm_func@N_M_fx0
		num_decrement_symbol@N_M_fx22 = 0
		dim Type_symbol_BothSides_sub2@N_M_fx22,2
	
	return
#global

;#module N_M_fx2
;	未整形文字列式 → 整形済文字列式 変換

;	[書式]

;		buff = Mfx_MakePSCharF(文字列1)
;
;		文字列1	:	未整形文字列式

;#defcfunc Mfx_MakePSCharF str strings1;「Mod_fx_MakePlasticSurgeryCharacterFormula」の略
;	DishStrrep strings1," ",""
;	DishStrrep strings1,"{","("
;	DishStrrep strings1,"}",")"
;	return
;#global

#module N_M_fx10
;	未整形文字列式から中間コードを生成する

;	[書式]

;	Mfx_compile 文字列1,変数名1,変数名2,変数名3
;					
;	文字列1	:	未整形文字列式。(※変数名も可)
;	変数名1	:	シンボルコードの保存先の変数の名前。(初期化しておかなくてもよい)
;	変数名2	:	フィギュアコードの保存先の変数の名前。(初期化しておかなくてもよい)
;	変数名3	:	エラーコードを格納する変数。要素数3の一次元整数型配列変数として初期化される。(初期化しておかなくてもよい)

#deffunc Mfx_Compile str arg_Formula_NotCompleted , array SymbolCode , array FigureCode , array ErrorCode
	
	dim ErrorCode,3
	Formula_NotCompleted = arg_Formula_NotCompleted

	;＜ 整形済文字列式の生成 ＞
	
		if ID_platform_now@N_M_fx0 = 2 {;android上で実行されている場合
			DishStrrep Formula_NotCompleted," ",""
			DishStrrep Formula_NotCompleted,"{","(" : DishStrrep Formula_NotCompleted,"}",")"
			DishStrrep Formula_NotCompleted,"[","(" : DishStrrep Formula_NotCompleted,"]",")"
			DishStrrep Formula_NotCompleted,"+-","-" : DishStrrep Formula_NotCompleted,"-+","-"	;与えられた式が正常ならば、この操作の実行後の式中には「+-」,「-+」は無い。
		} else {;android以外
			strrep Formula_NotCompleted," ",""
			strrep Formula_NotCompleted,"{","(" : strrep Formula_NotCompleted,"}",")"
			strrep Formula_NotCompleted,"[","(" : strrep Formula_NotCompleted,"]",")"
			strrep Formula_NotCompleted,"+-","-" : strrep Formula_NotCompleted,"-+","-"
		}
		Formula_Completed = Formula_NotCompleted
		Num_char_Formula_Completed = strlen(Formula_Completed)
		if Num_char_Formula_Completed = "" : ErrorCode(0) = 1,1,-1 : return;式が空文字列の場合はエラー
		
		
	;＜ シンボル毎に区切る ＞
	
		;後の処理が楽になるように、まずシンボル毎に分解して配列に格納しておく。
		;「Block_Symbol_char」文字列型配列変数にシンボルを小分けにして格納する。
	
		sdim Block_Symbol_char,Num_char_Formula_Completed,Num_char_Formula_Completed
		
		count1_char_read = 0;読み進めたバイト数(=文字数)のカウンタ
		count1_symbol = 0	;分解して得られたシンボルの個数のカウンタ
		repeat Num_char_Formula_Completed	;最大ループ回数は式の文字数
			str1 = strmid(Formula_Completed,count1_char_read,1) : count1_char_read ++	;1文字取り出す
			if str1 = "" : break	;式を読み終わったらループを抜ける
			if (str1 = "+")|(str1 = "-")|(str1 = "*")|(str1 = "/")|(str1 = "\\")|(str1 = "(")|(str1 = ")")|(str1 = ",") {	;数値,変数,関数名 以外の文字の場合
				Block_Symbol_char(count1_symbol) = str1 : count1_symbol ++;「Block_Symbol_char」に保存
			} else {	;数値,変数,関数名のいずれかの先頭文字の場合
				;読み始めたシンボルを完全に読み出すためのループに入る
				str2 = str1	;←読み出した文字をストックする袋
				;＜ 式を読み終わるか、または、次に数値,変数,関数名 以外の文字を見つけるまで読み出しを続ける ＞
					repeat
						str1 = strmid(Formula_Completed,count1_char_read,1) : count1_char_read ++	;1文字取り出す
						if str1 = "" {;式を読み終わった場合
							Block_Symbol_char(count1_symbol) = str2 : count1_symbol ++;読んだところまでを「Block_Symbol_char」に保存
							count1_char_read --	;遺書を書く( = このループを抜けた後、第一階層ループでもう一度式の終わりのヌル文字が読み出されて検出されるように、カウンタに小細工を仕掛ける。)
							break
						}
						if (str1 = "+")|(str1 = "-")|(str1 = "*")|(str1 = "/")|(str1 = "\\")|(str1 = "(")|(str1 = ")")|(str1 = ",") {	;数値,変数,関数名 以外の文字の場合
							Block_Symbol_char(count1_symbol) = str2 , str1 : count1_symbol + 2;ストック済の文字列と、先程読み出した一文字を「Block_Symbol_char」に保存
							break	;読み出し完了!
						} else {	;数値,変数,関数名のいずれかの文字列の一部の場合
							str2 += str1;ストック
						}
					loop
			}
			
		loop
	
		num_symbol = count1_symbol;シンボル数の記録
		;--------------------------------------------------▽DEBUG▽--------------------------------------------------
			;repeat num_symbol : mes Block_Symbol_char(cnt) : loop
		;--------------------------------------------------△DEBUG△--------------------------------------------------
	
	;＜ 中間コードを生成する ＞
	
		;＜ 第1段階 ＞
		
			;まず、( ) と (f )f を区別せずに中間コードの一部を作る。
			;先程の区切り処理で得られたシンボルを「A族シンボル」、中間コードに登録されたシンボルを「B族シンボル」と呼ぶことにする。
			;B族の方がA族よりも少なくなる場合がある。
	
			;新規に読み出したA族シンボルが、最近に登録したB族シンボルに矛盾しないかどうかチェックする。
			; - 数値 という順序になっている部分は、まとめて一つの数値にして登録する。
	
			;この処理で検出できるエラーは文法エラーのみ。
	
			num_symbol_typeA = num_symbol;A族シンボルの個数
			dim SymbolCode,num_symbol_typeA
			ddim FigureCode,num_symbol_typeA
	
			count1_symbol_typeA_read = 0		;検査済のA族シンボル数のカウンタ
			count1_symbol_typeB_registered = 0	;登録済のB族シンボル数のカウンタ
			count1_figure_registered = 0		;フィギュアコードに登録された数値データの個数のカウンタ
			depth = 0	;深さカウンタ
			flg1_error = 0	;エラー発生検知フラグ
			ErrorCode_3rdSection = -1	;エラーが発生した場合の、エラーコードの第三セクションの値。
			repeat num_symbol_typeA
				str1 = Block_Symbol_char(count1_symbol_typeA_read) : count1_symbol_typeA_read ++	;1つ取り出す
				;▽(文字の判別)▽++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
				repeat 1;脱出装置
					if MCS_IsThisFigure(str1) = 1 {	;数字が出た場合
						if count1_symbol_typeB_registered >= 1 {;一つ前に登録済のシンボルがある場合は、それを調べる
							num1 = SymbolCode(count1_symbol_typeB_registered - 1)	;一つ前のシンボルの識別値を取得
							if (num1 ! 5)&(num1 ! 6)&(num1 ! 10)&(num1 ! 11)&(num1 ! 12)&(num1 ! 15)&(num1 ! 19) : flg1_error = 1 : ErrorCode_3rdSection = -1 : break	;それが + - * / \ ( , のいずれでもなければエラー
						}
						SymbolCode(count1_symbol_typeB_registered) = 1 : count1_symbol_typeB_registered ++	;登録(シンボルコード)
						FigureCode(count1_figure_registered) = double(str1) : count1_figure_registered ++	;〃  (フィギュアコード)
						break;脱出
					}
					
					if str1 = "+" {	;	+ が出た場合
						if count1_symbol_typeA_read = num_symbol_typeA : flg1_error = 1 : break	;この時点で式を読み終えていた場合はエラー
						if count1_symbol_typeB_registered >= 1 {	;一つ前に登録済のシンボルがある場合は、それを調べる
							num1 = SymbolCode(count1_symbol_typeB_registered - 1)	;一つ前のシンボルの識別値を取得
							if (num1 = 15)|(num1 = 19) : break	;それが ( , の場合は + は不要なので無視する
							if (num1 = 1)|(num1 = 16)|((1001 <= num1)&(num1 <= 1002))|((2001 <= num1)&(num1 < 2052)) {	;それが 数値 ) 定数名 変数名 のいずれかの場合
								SymbolCode(count1_symbol_typeB_registered) = 5 : count1_symbol_typeB_registered ++	;登録
								break;脱出
							}
							
							flg1_error = 1 : ErrorCode_3rdSection = -1 : break	;ここまで実行されたらエラー
						} else {	;一つ前に登録済のシンボルがない場合
							break	;今回の + は不要なので無視する
						}
					}
				
					if str1 = "-" {	; - が出た場合
						if count1_symbol_typeA_read = num_symbol_typeA : flg1_error = 1 : ErrorCode_3rdSection = -1 : break	;この時点で式を読み終えていた場合はエラー
						if count1_symbol_typeB_registered >= 1 {	;一つ前に登録済のシンボルがある場合は、それを調べる
							num1 = SymbolCode(count1_symbol_typeB_registered - 1)	;一つ前のシンボルの識別値を取得
							if (num1 = 10)|(num1 = 11)|(num1 =12)|(num1 = 15)|(num1 = 19) {	;それが * / \ ( , のいずれかである場合
								str2 = Block_Symbol_char(count1_symbol_typeA_read) : count1_symbol_typeA_read ++	;次のシンボルを取り出す
								if MCS_IsThisFigure(str2) = 1 {	;それが数字である場合
									SymbolCode(count1_symbol_typeB_registered) = 1 : count1_symbol_typeB_registered ++ : FigureCode(count1_figure_registered) = -double(str2) : count1_figure_registered ++	;読み出した2シンボルをマイナスの数としてまとめて登録
									break;脱出
								} else {	;それが数字でない場合
									SymbolCode(count1_symbol_typeB_registered) = 6 : count1_symbol_typeB_registered ++	; - を登録
									count1_symbol_typeA_read --	;遺書を書く( = str2として取り出したシンボルを次のループで再び検査に掛けてもらうように手配する)
									break;脱出
								}
							}
							if (num1 = 1)|(num1 = 16)|((1001 <= num1)&(num1 <= 1002))|((2001 <= num1)&(num1 <= 2052)) {	;一つ前のシンボルが 数値 ) 定数名 変数名 のずれかである場合
								SymbolCode(count1_symbol_typeB_registered) = 6 : count1_symbol_typeB_registered ++	; - を登録
								break;脱出
							}
							
							flg1_error = 1 : ErrorCode_3rdSection = -1 : break	;ここまで実行されたらエラー
						} else {	;一つ前に登録済のシンボルがない場合
							str2 = Block_Symbol_char(count1_symbol_typeA_read) : count1_symbol_typeA_read ++	;次のシンボルを取り出す
							if MCS_IsThisFigure(str2) = 1 {	;それが数字である場合
								SymbolCode(count1_symbol_typeB_registered) = 1 : count1_symbol_typeB_registered ++ : FigureCode(count1_figure_registered) = -double(str2) : count1_figure_registered ++	;読み出した2シンボルをマイナスの数としてまとめて登録
								break;脱出
							} else {	;それが数字でない場合
								SymbolCode(count1_symbol_typeB_registered) = 6 : count1_symbol_typeB_registered ++	; - を登録
								count1_symbol_typeA_read --	;遺書を書く( = str2として取り出したシンボルを次のループで再び検査に掛けてもらうように手配する)
								break;脱出
							}
						}
					}
				
					;＜ * / \ , ) であるかどうかのチェック ＞
					flg1 = 0	; * / \ , ) のいずれかであるかどうかのフラグ。
					num1 = 0	; * / \ , ) のいずれかである場合に、そのシンボル識別値が格納される
					if str1 = "*" : flg1 = 1 : num1 = 10
					if str1 = "/" : flg1 = 1 : num1 = 11
					if str1 = "\\" : flg1 = 1 : num1 = 12
					if str1 = ")" : flg1 = 1 : num1 = 16 : depth --	;深さDown
					if str1 = "," : flg1 = 1 : num1 = 19
					if flg1 = 1 {	;いずれかである場合
						if (num1 ! 16)&(count1_symbol_typeA_read = num_symbol_typeA) : flg1_error = 1 : ErrorCode_3rdSection = -1 : break	;取り出したシンボルが ) でなく、かつこの時点で式を読み終えていた場合はエラー
						if count1_symbol_typeB_registered < 1 : flg1_error = 1 : ErrorCode_3rdSection = -1 : break	;一つ前に登録済のシンボルが無い場合はエラー
						num2 = SymbolCode(count1_symbol_typeB_registered - 1)	;一つ前のシンボルの識別値を取得
						if (num2 = 1)|(num2 = 16)|((1001 <= num2)&(num2 <= 1002))|((2001 <= num2)&(num2 <= 2052)) { } else { flg1_error = 1 : break } 	;それが 数値 ) 定数名 変数名 のいずれでもなければエラー
						SymbolCode(count1_symbol_typeB_registered) = num1 : count1_symbol_typeB_registered ++	;登録
						break;脱出
					}
					
					if str1 = "(" {	; ( が出た場合
						depth ++	;深さUp
						if count1_symbol_typeA_read = num_symbol_typeA : flg1_error = 1 : ErrorCode_3rdSection = -1 : break	;この時点で式を読み終えていた場合はエラー
						if count1_symbol_typeB_registered >= 1 {	;一つ前に登録済のシンボルがある場合は、それを調べる
							num1 = SymbolCode(count1_symbol_typeB_registered - 1)	;一つ前のシンボルの識別値を取得
							if (num1 = 5)|(num1 = 6)|(num1 = 10)|(num1 = 11)|(num1 = 12)|(num1 = 15)|(num1 = 19)|((30 <= num1)&(num1 <= 61)) { } else { flg1_error = 1 : : ErrorCode_3rdSection = -1 : break };それが + - * / \ ( , 関数名 のいずれでもなければエラー
						}
						SymbolCode(count1_symbol_typeB_registered) = 15 : count1_symbol_typeB_registered ++	;登録
						break;脱出
					}
					
					;＜ 関数名であるかどうかのチェック ＞
						flg1_IsThisFunction = 0	;フラグ。(0,1) = (not a function , function)
						repeat num_kind_function@N_M_fx0
							if str1 = MeasurementTable_Function_Char@N_M_fx0(cnt) {	;検索にかかった場合
								flg1_IsThisFunction = 1
								num1 = cnt	;対応表内でのIDを記録
								break
							}
						loop
						if flg1_IsThisFunction = 1 {	;関数名であった場合
							if count1_symbol_typeA_read = num_symbol_typeA : flg1_error = 1 : ErrorCode_3rdSection = MeasurementTable_Function_Num@N_M_fx0(num1) : break	;この時点で式を読み終えていた場合はエラー
							if count1_symbol_typeB_registered >= 1 {	;一つ前に登録済のシンボルがある場合は、それを調べる
								num2 = SymbolCode(count1_symbol_typeB_registered - 1)	;一つ前のシンボルの識別値を取得
								if (num2 = 5)|(num2 = 6)|(num2 = 10)|(num2 = 11)|(num2 = 12)|(num2 = 15)|(num2 = 19) { } else { flg1_error = 1 : ErrorCode_3rdSection = MeasurementTable_Function_Num@N_M_fx0(num1) : break };それが + - * / \ ( , のいずれでもなければエラー
							}
							SymbolCode(count1_symbol_typeB_registered) = MeasurementTable_Function_Num@N_M_fx0(num1) : count1_symbol_typeB_registered ++	;登録
							break	;脱出
						}
					
					;＜ 定数名であるかどうかのチェック ＞
						flg1_IsThisFixedNumber = 0	;フラグ。(0,1) = (not a FixedNumber , FixedNumber)
						repeat num_kind_FixedNumber@N_M_fx0
							if str1 = MeasurementTable_FixedNumber_char@N_M_fx0(cnt) {	;検索にかかった場合
								flg1_IsThisFixedNumber = 1
								num1 = cnt	;対応表内でのIDを記録
								break
							}
						loop
						if flg1_IsThisFixedNumber = 1 {	;定数名であった場合
							if count1_symbol_typeB_registered >= 1 {	;一つ前に登録済のシンボルがある場合は、それを調べる
								num2 = SymbolCode(count1_symbol_typeB_registered - 1)	;一つ前のシンボルの識別値を取得
								if (num2 = 5)|(num2 = 6)|(num2 = 10)|(num2 = 11)|(num2 = 12)|(num2 = 15)|(num2 = 19) { } else { flg1_error = 1 : break };それが + - * / \ ( , のいずれでもなければエラー
							}
							SymbolCode(count1_symbol_typeB_registered) = MeasurementTable_FixedNumber_num@N_M_fx0(num1) : count1_symbol_typeB_registered ++	;登録
							break;脱出
						}
				
					;＜ 変数名であるかどうかのチェック ＞
						flg1_IsThisVariable = 0	;フラグ。(0,1) = (not a variable , variable)
						repeat num_kind_variable@N_M_fx0
							if str1 = MeasurementTable_variable_char@N_M_fx0(cnt) {	;検索にかかった場合
								flg1_IsThisVariable = 1
								num1 = cnt	;対応表内でのIDを記録
								break
							}
						loop
						if flg1_IsThisVariable = 1 {	;変数名であった場合
							if count1_symbol_typeB_registered >= 1 {	;一つ前に登録済のシンボルがある場合は、それを調べる
								num2 = SymbolCode(count1_symbol_typeB_registered - 1)	;一つ前のシンボルの識別値を取得
								if (num2 = 5)|(num2 = 6)|(num2 = 10)|(num2 = 11)|(num2 = 12)|(num2 = 15)|(num2 = 19) { } else { flg1_error = 1 : break };それが + - * / \ ( , のいずれでもなければエラー
							}
							SymbolCode(count1_symbol_typeB_registered) = 2001+num1 : count1_symbol_typeB_registered ++	;登録
							break;脱出
						}
					
					flg1_error = 1 : break	;ここまで実行されたらエラー
				loop
				;△(文字の判別)△++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
				if flg1_error = 1 : break
				if depth < 0 : flg1_error = 1 : break	;深さがマイナスになっていたらエラー
				if count1_symbol_typeA_read = num_symbol_typeA : break;式を読み終えたら終了
			loop
			if flg1_error = 1 {
				ErrorCode(0) = 1,1,ErrorCode_3rdSection : return	;エラー
			}
			if depth ! 0 : ErrorCode(0) = 1,1,ErrorCode_3rdSection : return	;この時点で深さが0でなければエラー
	
	
	
			num_symbol = count1_symbol_typeB_registered	;シンボルコード内のシンボル数
			num_figure = count1_figure_registered		;シンボルコード内の数値シンボルの数
	
		;＜ 第2段階 ＞
	
			;(f )f を検出する。
			;左端にある関数名から順に検索して処理していく。
	
			flg1_ProcessedAllFunc = 0	;関数サーチ処理完了フラグ
			bookmark1_frontier_SearchingFunc = 0	;関数のサーチ処理でシンボルコード内で読み進めたシンボル数
			flg1_error = 0	;エラー発生検知フラグ
			ErrorCode_3rdSection = -1	;エラーが発生した場合の、エラーコードの第三セクションの値。
			repeat num_symbol	;最大繰り返し回数はシンボル数
			
				;＜ 次の関数名を検索 ＞
					repeat num_symbol - bookmark1_frontier_SearchingFunc
						kind_symbol_picked = SymbolCode(bookmark1_frontier_SearchingFunc) : bookmark1_frontier_SearchingFunc ++	;シンボル識別値を一つ取り出す
						if (30 <= kind_symbol_picked)&(kind_symbol_picked <= 61) : break	;関数を検知したらループを抜ける
						if bookmark1_frontier_SearchingFunc = num_symbol : flg1_ProcessedAllFunc = 1 : break	;式を読み終えた!
					loop
					if flg1_ProcessedAllFunc = 1 : break	;式を読み終えたら終了
					
				;＜ 取り出した関数名の (f )f を検出 ＞
					SymbolCode(bookmark1_frontier_SearchingFunc) = 17 : bookmark1_frontier_SearchingFunc ++	;取り出した関数の ( を (f に置き換える
					depth_BasedOnTheFunc’sPrm = 0	;取り出した関数の (f の右隣を基準とした深さカウンタ
					count1_symbol_prm_read = 0	;検査したパラメータシンボルの個数のカウンタ
					repeat num_symbol - bookmark1_frontier_SearchingFunc
						num1 = SymbolCode(bookmark1_frontier_SearchingFunc + count1_symbol_prm_read) : count1_symbol_prm_read ++	;パラメータシンボル識別値を一つ取り出す
						if (num1 = 15)|(num1 = 17) : depth_BasedOnTheFunc’sPrm ++	;それが ( (f なら深さUp
						if (num1 = 16)|(num1 = 18) : depth_BasedOnTheFunc’sPrm --	;それが ) )f なら深さDown
						if depth_BasedOnTheFunc’sPrm = -1 : SymbolCode(bookmark1_frontier_SearchingFunc + count1_symbol_prm_read - 1) = 18 : break	;深さが-1になったら、それが )f である。
						if bookmark1_frontier_SearchingFunc + count1_symbol_prm_read = num_symbol : flg1_error = 1 : ErrorCode_3rdSection = kind_symbol_picked : break	;この時点で式を読み終えていた場合はエラー
					loop
				
				if flg1_error = 1 : break
			loop
			if flg1_error = 1 : ErrorCode(0) = 1,1,ErrorCode_3rdSection : return
	
		;＜ 第3段階 ＞
			
			;不正な , がないかチェックする。
	
			;式の左端から右へ向かってチェックする。
	
			num_func_considered = 0	;読み進めたところまででチェックにおいて考慮すべき関数(ここでは「要注意関数」とする)の個数
			dim num1_depth_BasedOnEachFuncs,num_symbol,2	;各要注意関数の (f の右隣を基準とした深さカウンタ。1次元目について、(0,1) = (要素使用中 , 要素開放中)。使用中の要素について、2次元目には深さが記録される。
			flg1_error = 0	;エラー発生検知フラグ
			repeat num_symbol
				num1 = SymbolCode(cnt)	;シンボルを一つ取り出す
				repeat 1;脱出装置
					if (num1 = 15)|(num1 = 17) {	; ( (f の場合
						;＜ 要注意関数のパラメータの深さカウンタリストを編集する ＞
							count1 = 0	;調べ終わった要注意関数の個数のカウンタ
							repeat num_symbol
								if num1_depth_BasedOnEachFuncs(cnt,0) = 1 : count1 ++ : num1_depth_BasedOnEachFuncs(cnt,1) ++	;深さUp
								if count1 = num_func_considered : break	;すべての要注意関数を調べたら抜ける
							loop
						break;脱出
					}
					if (num1 = 16)|(num1 = 18) {	; ) )f の場合
						;＜ 要注意関数のパラメータの深さカウンタリストを編集する ＞
							count1 = 0	;調べ終わった要注意関数の個数のカウンタ
							repeat num_symbol
								if num1_depth_BasedOnEachFuncs(cnt,0) = 1 {	;使用中の要素を見つけた場合
									count1 ++
									if num1_depth_BasedOnEachFuncs(cnt,1) >= 1 {	;その関数パラメータの深さカウンタが1以上なら、1だけ引く。
										num1_depth_BasedOnEachFuncs(cnt,1) --
									} else {	;	カウンタが0以下になっているものは、今回の ) )f の発見によって、その関数は要注意関数から除外される。(すなわち、以降の , に影響力を持たないことが保証される。)
										num1_depth_BasedOnEachFuncs(cnt,0) = 0
									}
								}
								if count1 = num_func_considered : break	;すべての要注意関数を調べたら抜ける
							loop
						break;脱出
					}
					if (30 <= num1)&(num1 <= 61) {	;関数である場合
						;＜ 要注意関数のパラメータの深さカウンタリストを編集する ＞
							repeat num_symbol
								if num1_depth_BasedOnEachFuncs(cnt,0) = 0 : num1_depth_BasedOnEachFuncs(cnt,0) = 1 : num1_depth_BasedOnEachFuncs(cnt,1) = -1 : num_func_considered ++ : break	;要注意関数として追加。 -1 は、次に必ず現れる (f の通過後に深さカウンタが 0 になるようにするための帳尻合わせ。
							loop
						break;脱出
					}
					if num1 = 19 {	; , である場合
						;＜ その主人を探す ＞
							flg1 = 0	;今回の , の主人為る関数が存在するかどうかのフラグ
							repeat num_symbol
								if (num1_depth_BasedOnEachFuncs(cnt,0) = 1)&(num1_depth_BasedOnEachFuncs(cnt,1) = 0) : flg1 = 1 : break
							loop
							if flg1 ! 1 : flg1_error = 1 : break	;主人が見つからなければエラー
						break;脱出
					}
				loop
				if flg1_error = 1 : break
				
			loop
			if flg1_error = 1 : ErrorCode(0) = 1,1,-1 : return
		
		;＜ 第4段階 ＞
	
			;関数のパラメータの個数をチェックする
	
			;左端にある関数からチェックしていく
			
			flg1_ProcessedAllFunc = 0	;関数サーチ処理完了フラグ
			bookmark1_frontier_SearchingFunc = 0	;関数のサーチ処理でシンボルコード内で読み進めたシンボル数のカウンタ
			flg1_error = 0	;エラー発生検知フラグ
			repeat num_symbol	;最大繰り返し回数はシンボル数
				
				;＜ 次の関数名を検索 ＞
					repeat num_symbol - bookmark1_frontier_SearchingFunc
						kind_symbol_picked = SymbolCode(bookmark1_frontier_SearchingFunc) : bookmark1_frontier_SearchingFunc ++	;シンボル識別値を一つ取り出す
						if (30 <= kind_symbol_picked)&(kind_symbol_picked <= 61) : break	;関数を検知したらループを抜ける
						if bookmark1_frontier_SearchingFunc = num_symbol : flg1_ProcessedAllFunc = 1 : break	;式を読み終えた!
					loop
					if flg1_ProcessedAllFunc = 1 : break	;式を読み終えたら終了
	
				;＜ (f )f の、シンボルコード内でのインデックスを求める ＞
					index_（f = bookmark1_frontier_SearchingFunc : bookmark1_frontier_SearchingFunc ++	; (f のインデックス
					
					;＜ )f のインデックスを求める ＞
						depth_BasedOnTheFunc’sPrm = 0	;取り出した関数の (f の右隣を基準とした深さカウンタ
						count1_symbol_prm_read = 0	;検査したパラメータシンボルの個数のカウンタ
						repeat num_symbol - bookmark1_frontier_SearchingFunc
							num1 = SymbolCode(bookmark1_frontier_SearchingFunc + count1_symbol_prm_read) : count1_symbol_prm_read ++	;パラメータシンボル識別値を一つ取り出す
							if (num1 = 15)|(num1 = 17) : depth_BasedOnTheFunc’sPrm ++	;それが ( (f なら深さUp
							if (num1 = 16)|(num1 = 18) : depth_BasedOnTheFunc’sPrm --	;それが ) )f なら深さDown
							if depth_BasedOnTheFunc’sPrm = -1 : index_）f = bookmark1_frontier_SearchingFunc + count1_symbol_prm_read - 1 : break	;深さが-1になったら、それが )f である。
							;if bookmark1_frontier_SearchingFunc + count1_symbol_prm_read = num_symbol : flg1_error = 1 : ErrorCode_3rdSection = kind_symbol_picked : break	;この時点で式を読み終えていた場合はエラー	←(∵このエラーが起こらないことは保証されている)
						loop
	
				;if flg1_error = 1 : break
	
				;＜ パラメータの個数をチェックする ＞
				
					;＜ あるべきパラメータの個数を求める ＞
						repeat num_kind_function@N_M_fx0
							if kind_symbol_picked = MeasurementTable_Function_Num@N_M_fx0(cnt) : num_prm_ideal = MeasurementTable_num_prm_func@N_M_fx0(cnt) : break
						loop
					
					;＜ 実際のパラメータの個数を調べる ＞
						depth_BasedOnTheFunc’sPrm = 0	;取り出した関数の (f の右隣を基準とした深さカウンタ
						count1_prm = 1	;検出されたパラメータの個数のカウンタ
						repeat index_）f - index_（f - 1
							num1 = SymbolCode(index_（f + 1 + cnt)	;シンボル識別値を一つ取り出す
							if (num1 = 15)|(num1 = 17) : depth_BasedOnTheFunc’sPrm ++	;それが ( (f なら深さUp
							if (num1 = 16)|(num1 = 18) : depth_BasedOnTheFunc’sPrm --	;それが ) )f なら深さDown
							;if depth_BasedOnTheFunc’sPrm < 0 : flg1_error = 1 : ErrorCode_3rdSection = kind_symbol_picked : break	;深さがマイナスになったらエラー	←(∵このエラーが起こらないことは保証されている)
							if (num1 = 19)&(depth_BasedOnTheFunc’sPrm = 0) : count1_prm ++	;深さ0のところで , があったなら、それは今着目している関数のパラメータ区切りである。
						loop
	
					if count1_prm ! num_prm_ideal : flg1_error = 1 : ErrorCode_3rdSection = kind_symbol_picked : break	;理想と現実が一致しないならエラー
			loop
			if flg1_error = 1 : ErrorCode(0) = 1,1,ErrorCode_3rdSection : return
	
	return
#global

#module N_M_fx15
;	変数値リスト内の変数に値を代入する。

;	[書式]
;
;		Mfx_substitute 変数名1,"文字列1",数値1
;
;		変数名1	: 変数値リスト。要素0～51まで確保されている実数型一次元配列変数。
;		文字列1 : a～Zのアルファベット。ここで指定した名前の変数に値を代入する。
;		数値1   : 代入する実数値。

;		(例) : Mfx_substitute VarList,"G",6.67

;	エラーが発生した場合はstatの値が1になり、それ以外の場合は0になる。

;	※この命令を使用しなくても、変数値リストを配列変数と同様に直接操作してもかまわない。
;	　例えば、上の (例) は、次の記述で置き換えることができる。
;	　VarList(32) = 6.67
;	　しかし、これを見てもどの変数に代入されているのか分かりづらい。そのようなときに、この命令「Mfx_substitute」を使うのがよいだろう。
;	　この命令は、どの変数に代入しているのか、スクリプトを見て即座に判断できるよう、見やすさを向上させるために使うものである。

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
;--------------------------------------------------▽DEBUG▽--------------------------------------------------
;Mfx_init
;ddim VariableValueList,52 : Mfx_substitute VariableValueList,"G",6.67 : mes VariableValueList(32)
;--------------------------------------------------△DEBUG△--------------------------------------------------

#module N_M_fx16
;	変数値リスト内の変数に代入されている値を調べる

;	[書式]
;
;		val = Mfx_SeeVarValue(変数名1,"文字列1",変数名2)
;
;		変数名1 : 変数値リスト。要素0～51まで確保されている実数型一次元配列変数。
;		文字列1 : a～Zのアルファベット。ここで指定した名前の変数が参照される。
;		変数名2 : エラー情報を格納する変数
;
;		(例) : mes Mfx_SeeVarValue(VarList,"G")

;	エラーが発生した場合は 第3パラメータで指定された変数に1が代入され、それ以外の場合は0が代入される。

;	※この命令を使用しなくても、変数値リストから配列変数と同様に直接参照してもかまわない。
;	　例えば、上の (例) は、次の記述で置き換えることができる。
;	　mes VarList(32)
;	　しかし、これを見てもどの変数が参照されているのか分かりづらい。そのようなときに、この関数「Mfx_SeeVarValue」を使うのがよいだろう。
;	　この関数は、どの変数を参照しているのか、スクリプトを見て即座に判断できるよう、見やすさを向上させるために使うものである。

#defcfunc Mfx_SeeVarValue array VariableValueList , str target , var ErrorInfo
	if vartype(VariableValueList) ! 3 : return 1
	if length(VariableValueList) < 52 : return 1
	ErrorInfo = 0
	flg_saw = 0
	;result = 0.0	(∵初期化処理で初期化済)
	repeat 52
		if target = MeasurementTable_variable_char@N_M_fx0(cnt) : result = VariableValueList(cnt) : flg_saw = 1 : break
	loop
	if flg_saw = 0 : ErrorInfo = 1
	return result
#global
;--------------------------------------------------▽DEBUG▽--------------------------------------------------
;Mfx_init
;ddim VariableValueList,52 : Mfx_substitute VariableValueList,"G",6.67
;mes Mfx_SeeVarValue(VariableValueList,"G",ErrorInfo)
;--------------------------------------------------△DEBUG△--------------------------------------------------

#module N_M_fx22
;	中間コードに従って数式を計算する

;	[書式]
;
;		Mfx_calc 変数名1 ,変数名2,変数名3,変数名4,変数名5
;
;		変数名1 : 計算結果を格納する変数の名前
;		変数名2 : シンボルコードが格納された変数の名前
;		変数名3 : フィギュアコードが格納された変数の名前
;		変数名4 : 変数値リストが格納された変数、すなわち要素0～51まで確保されている実数型一次元配列変数の名前。(※式中に変数が無い場合は適当な変数を指定してかまわない)
;		変数名5 : エラーコードを格納する変数の名前。(初期化しておかなくてもよい)

;	エラーが発生した場合はstatの値が1に、それ以外の場合は0になる。

#deffunc Mfx_calc  var CalcResult ,array SymbolCode_original ,array FigureCode_original ,array VariableValueList ,array ErrorCode

	num_element_SymbolCode = length(SymbolCode_original)	;シンボルコード用配列変数の要素数。これはフィギュアコードのそれと共通である。
	dim ErrorCode,3
	
	;＜ シンボル・数値データの個数を調べる ＞
		count1 = 0	;シンボル数のカウンタ
		count2 = 0	;数値データの数のカウンタ
		repeat num_element_SymbolCode
			if SymbolCode_original(cnt) = 0 : break
			count1 ++
			if SymbolCode_original(cnt) = 1 : count2 ++
		loop
		num_symbol_original = count1
		num_figure_original = count2
	
	;＜ 作業用変数を作成 ＞
		;作業用変数の内容は変化する
		num_symbol = num_symbol_original	;シンボルの個数
		num_figure = num_figure_original	;数値データの個数
		dim SymbolCode,num_element_SymbolCode : memcpy SymbolCode,SymbolCode_original,4*num_element_SymbolCode	;シンボルコード
		ddim FigureCode,num_element_SymbolCode : memcpy FigureCode,FigureCode_original,8*num_element_SymbolCode	;フィギュアコード
	
	;＜ 処理開始 ＞
		flg1_error = 0	;エラー検知フラグ
		repeat	;関数検索ループ。関数が無くなるまで繰り返す。
		
		;＜ 一番右側の関数名を探す ＞
			;←向きに探索
			flg1_FoundFunc = 0	;関数発見フラグ
			repeat num_symbol
				num1 = SymbolCode(num_symbol - 1 - cnt)	;シンボル識別値を一つ取り出す。
				if (30 <= num1)&(num1 <= 61) {	;それが関数だった場合
					flg1_FoundFunc = 1
					ID_func_focused = num1	;今着目している関数のシンボル識別値
					Index_name_func_focused = num_symbol - 1 - cnt	;今着目している関数名の、シンボルコード内でのインデックス。
					break
				}
			loop
	
			if flg1_FoundFunc = 1 {	;関数が見つかった場合
				
				;＜ その関数に対応する (f )f のインデックス・パラメータの個数・各パラメータの、シンボルコード内での開始,終了インデックスを調べる ＞
					Index_（f_focused = Index_name_func_focused + 1	; (fのインデックス
					
					count1_depth_BasedOnTheFunc’sPrm = 0	;着目している関数の (f の右隣を基準とした深さカウンタ
					count2_num_prm_func_focused = 1	;見つけたパラメータの個数のカウンタ
					dim Index_prm_focused,num_max_prm_func@N_M_fx0,2	;各パラメータの、シンボルコード内での開始,終了インデックス。要素(n,0),(n,1)にそれぞれ第n+1パラメータの開始,終了インデックスが格納される。
					Index_prm_focused(0,0) = Index_（f_focused + 1	;第一パラメータの開始インデックス
					repeat num_symbol - Index_（f_focused - 1
						Index_symbol_investigation = Index_（f_focused + 1 + cnt	;調べるシンボルのインデックス
						num1 = SymbolCode(Index_symbol_investigation)	;シンボル識別値を一つ取り出す。
						if (num1 = 15)|(num1 = 17) : count1_depth_BasedOnTheFunc’sPrm ++	;それが ( (f なら深さUp
						if (num1 = 16)|(num1 = 18) : count1_depth_BasedOnTheFunc’sPrm --	;それが ) )f なら深さDown
						if count1_depth_BasedOnTheFunc’sPrm = -1 {
							Index_）f_focused = Index_symbol_investigation	;深さが-1になったら、それが )f である。
							Index_prm_focused(count2_num_prm_func_focused - 1,1) = Index_symbol_investigation - 1	;直前まで調べていたパラメータの終了インデックスが分かる
							break
						}
						if num1 = 19 {	;それが , である場合
							Index_prm_focused(count2_num_prm_func_focused - 1,1) = Index_symbol_investigation - 1	;直前まで調べていたパラメータの終了インデックスが分かる
							count2_num_prm_func_focused ++	;パラメータの数のカウンタUp
							Index_prm_focused(count2_num_prm_func_focused - 1,0) = Index_symbol_investigation + 1	;これから調べるパラメータの開始インデックス
						}
					loop
					num_prm_func_focused = count2_num_prm_func_focused	;見つかったパラメータの個数
					
				;＜ 見つけた各パラメータを処理する ＞
					;右側のパラメータから処理していく。なぜならば、そうすれば、処理待ちの、左側のパラメータのシンボルの位置が動かされずに済むので処理が容易になるからである。
					repeat num_prm_func_focused
						Index_RangeStart_sub1 = Index_prm_focused(num_prm_func_focused - 1 - cnt,0)
						Index_RangeEnd_sub1 = Index_prm_focused(num_prm_func_focused - 1 - cnt,1)
						gosub *CalcP
						if flg1_error_sub1 = 1 : flg1_error = 1 : break
					loop
					if flg1_error = 1 : break
	
				;＜ 処理されて数値データとなったパラメータを取得する ＞
					
					;＜ 今着目している関数より左側にある数値データの個数を求める ＞
						num_figure_LeftOfFocusedFunc = 0	;見つかった数値データの個数のカウンタ
						repeat Index_name_func_focused
							if SymbolCode(cnt) = 1 : num_figure_LeftOfFocusedFunc ++
						loop
	
					;(パラメータの取得)
					;ddim val_prm_func_focused,num_max_prm_func@N_M_fx0	(∵初期化処理で初期化済)
					repeat num_prm_func_focused
						val_prm_func_focused(cnt) = FigureCode(num_figure_LeftOfFocusedFunc + cnt)
					loop
				
				;＜ 数として得られたパラメータを使って関数を処理する ＞
	
					;(変数)					:	(内容)
					;num_decrement_symbol	:	今回の関数の処理で消費されるシンボルの数
					;num_decrement_figure	:	今回の関数の処理で消費される数値データの個数
					
					repeat 1;脱出装置
					
						if ID_func_focused = 30 {	;sin
							num_decrement_symbol = 4
							num_decrement_figure = 1
							result_calc_func_focused = sin(val_prm_func_focused(0))
							break;脱出
						}
						if ID_func_focused = 31 {	;cos
							num_decrement_symbol = 4
							num_decrement_figure = 1
							result_calc_func_focused = cos(val_prm_func_focused(0))
							break;脱出
						}
						if ID_func_focused = 32 {	;tan
							num_decrement_symbol = 4
							num_decrement_figure = 1
							if (val_prm_func_focused(0) - c_pi／2@N_M_fx0)\m_pi = 0 : flg1_error = 1 : ErrorCode(0) = 1,2,32 : break
							result_calc_func_focused = tan(val_prm_func_focused(0))
							break;脱出
						}
						if ID_func_focused = 33 {	;asin
							num_decrement_symbol = 4
							num_decrement_figure = 1
							result_calc_func_focused = atan(val_prm_func_focused(0),sqrt(1.0 - val_prm_func_focused(0)*val_prm_func_focused(0)))
							break;脱出
						}
						if ID_func_focused = 34 {	;acos
							num_decrement_symbol = 4
							num_decrement_figure = 1
							result_calc_func_focused = atan(sqrt(1.0 - val_prm_func_focused(0)*val_prm_func_focused(0)),val_prm_func_focused(0))
							break;脱出
						}
						if ID_func_focused = 35 {	;atan
							num_decrement_symbol = 6
							num_decrement_figure = 2
							result_calc_func_focused = atan(val_prm_func_focused(0),val_prm_func_focused(1))
							break;脱出
						}
						if ID_func_focused = 36 {	;deg2rad
							num_decrement_symbol = 4
							num_decrement_figure = 1
							result_calc_func_focused = deg2rad(val_prm_func_focused(0))
							break;脱出
						}
						if ID_func_focused = 37 {	;rad2deg
							num_decrement_symbol = 4
							num_decrement_figure = 1
							result_calc_func_focused = rad2deg(val_prm_func_focused(0))
							break;脱出
						}
						if ID_func_focused = 40 {	;sqrt
							num_decrement_symbol = 4
							num_decrement_figure = 1
							if val_prm_func_focused(0) < 0 : flg1_error = 1 : ErrorCode(0) = 1,2,40 : break
							result_calc_func_focused = sqrt(val_prm_func_focused(0))
							break;脱出
						}
						if ID_func_focused = 41 {	;pow
							num_decrement_symbol = 6
							num_decrement_figure = 2
							if (val_prm_func_focused(0) < 0.0)&(val_prm_func_focused(1)\1 ! 0.0) : flg1_error = 1 : ErrorCode(0) = 1,2,41 : break	;{底が負で、かつ、指数が非整数ならばエラー
							result_calc_func_focused = powf(val_prm_func_focused(0),val_prm_func_focused(1))
							break;脱出
						}
						if ID_func_focused = 42 {	;log
							num_decrement_symbol = 6
							num_decrement_figure = 2
							if (val_prm_func_focused(0) <= 0.0)|(val_prm_func_focused(0) = 1.0)|(val_prm_func_focused(1) <= 0.0) : flg1_error = 1 : ErrorCode(0) = 1,2,42 : break	;底 ≦ 0 または 底 = 1 または 真数 ≦ 0 ならエラー
							result_calc_func_focused = logf(val_prm_func_focused(1))/logf(val_prm_func_focused(0))
							break;脱出
						}
						if ID_func_focused = 50 {	;limit
							num_decrement_symbol = 8
							num_decrement_figure = 3
							;if val_prm_func_focused(1) > val_prm_func_focused(2) : flg1_error = 1 : ErrorCode(0) = 1,2,50 : break	;下限 > 上限 ならエラー
							result_calc_func_focused = limitf(val_prm_func_focused(0),val_prm_func_focused(1),val_prm_func_focused(2))
							break;脱出
						}
						if ID_func_focused = 51 {	;max
							num_decrement_symbol = 6
							num_decrement_figure = 2
							if val_prm_func_focused(0) < val_prm_func_focused(1) { result_calc_func_focused = val_prm_func_focused(1) } else { result_calc_func_focused = val_prm_func_focused(0) }
							break;脱出
						}
						if ID_func_focused = 52 {	;min
							num_decrement_symbol = 6
							num_decrement_figure = 2
							if val_prm_func_focused(0) > val_prm_func_focused(1) { result_calc_func_focused = val_prm_func_focused(1) } else { result_calc_func_focused = val_prm_func_focused(0) }
							break;脱出
						}
						if ID_func_focused = 53 {	;abs
							num_decrement_symbol = 4
							num_decrement_figure = 1
							result_calc_func_focused = absf(val_prm_func_focused(0))
							break;脱出
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
							break;脱出
						}
						if ID_func_focused = 55 {	;int
							num_decrement_symbol = 4
							num_decrement_figure = 1
							result_calc_func_focused = double(int(val_prm_func_focused(0)))
							break;脱出
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
							break;脱出
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
							break;脱出
						}
						if ID_func_focused = 60 {	;perm
							num_decrement_symbol = 6
							num_decrement_figure = 2
							if (val_prm_func_focused(0)\1.0 ! 0.0)|(val_prm_func_focused(1)\1.0 ! 0.0) : flg1_error = 1 : ErrorCode(0) = 1,3,60 : break
							if val_prm_func_focused(0) < val_prm_func_focused(1) : flg1_error = 1 : ErrorCode(0) = 1,3,60 : break
							if val_prm_func_focused(1) < 0 : flg1_error = 1 : ErrorCode(0) = 1,2,60 : break
							;↑※エラーチェックの順番に意味がある
							
							if val_prm_func_focused(1) = 0 : result_calc_func_focused = 1.0 : break
							
							result_calc_func_focused = val_prm_func_focused(0) : num2 = val_prm_func_focused(0) - 1.0
							repeat val_prm_func_focused(1) - 1
								result_calc_func_focused*(num2 - cnt)
							loop
							break;脱出
						}
						if ID_func_focused = 61 {	;combi
							num_decrement_symbol = 6
							num_decrement_figure = 2
							if (val_prm_func_focused(0)\1.0 ! 0.0)|(val_prm_func_focused(1)\1.0 ! 0.0) : flg1_error = 1 : ErrorCode(0) = 1,3,61 : break
							if val_prm_func_focused(0) < val_prm_func_focused(1) : flg1_error = 1 : ErrorCode(0) = 1,3,61 : break
							if val_prm_func_focused(1) < 0 : flg1_error = 1 : ErrorCode(0) = 1,2,61 : break
							;※↑エラーチェックの順番に意味がある
	
							;求める値を nCr とする。
							
							if val_prm_func_focused(1) = 0 : result_calc_func_focused = 1.0 : break	;	nC0 = 1
	
	
							;(r! を求める)
							numtmp1 = val_prm_func_focused(1) : num1 = val_prm_func_focused(1) - 1.0
							repeat val_prm_func_focused(1) - 1
								numtmp1*(num1 - cnt)
							loop
	
							;(nPr を求める)
							numtmp2 = val_prm_func_focused(0) : num1 = val_prm_func_focused(0) - 1.0
							repeat val_prm_func_focused(1) - 1
								numtmp2*(num1 - cnt)
							loop
	
							result_calc_func_focused = numtmp2/numtmp1
							break;脱出
						}
						
					loop
					if flg1_error = 1 : break
	
				;＜ 関数名(f ～ )f の一連のシンボルを計算結果のシンボルで置き換える ＞
					SymbolCode(Index_name_func_focused) = 1	;着目している関数名のシンボルを、「数値データ」を表すシンボルで置き換える。
					
					;＜ 処理済のシンボルで、まだ消されていないものを消す ＞
						;repeat num_decrement_symbol - 1
						;	SymbolCode(Index_name_func_focused + 1 + cnt) = 0
						;loop
						;↓
						memset SymbolCode,0,4*(num_decrement_symbol - 1),4*(Index_name_func_focused + 1)
					
					;＜ 後続データを左にシフトして隙間を詰める ＞
						;--------------------------------------------------▽SLOW▽--------------------------------------------------
						;repeat num_symbol - Index_name_func_focused - num_decrement_symbol	; = num_symbol - (Index_name_func_focused + num_decrement_symbol - 1) - 1
						;	SymbolCode(Index_name_func_focused + 1 + cnt) = SymbolCode(Index_name_func_focused + num_decrement_symbol + cnt)	;※ Index_name_func_focused + num_decrement_symbol + cnt = Index_name_func_focused + 1 + (num_decrement_symbol - 1) + cnt
						;	SymbolCode(Index_name_func_focused + num_decrement_symbol + cnt) = 0
						;loop
						;--------------------------------------------------△SLOW△--------------------------------------------------
						;                                                    ↓↓
						;--------------------------------------------------▽FAST▽--------------------------------------------------
						memcpy SymbolCode,SymbolCode,4*(num_symbol - Index_name_func_focused - num_decrement_symbol),4*(Index_name_func_focused + 1),4*(Index_name_func_focused + num_decrement_symbol)	;シフト
						memset SymbolCode,0,4*(num_decrement_symbol - 1),4*(num_symbol - num_decrement_symbol + 1)	;式の終わりを0で埋める
						;--------------------------------------------------△FAST△--------------------------------------------------
	
					num_symbol -= num_decrement_symbol - 1	;シンボルの個数情報を更新
					
	
				;＜ フィギュアコードを編集する ＞
					FigureCode(num_figure_LeftOfFocusedFunc) = result_calc_func_focused	;関数の処理で得られた結果を挿入
	
					;＜ 既存データを左へシフト ＞
					
						;--------------------------------------------------▽ A ▽--------------------------------------------------
						;移動すべき数値データの個数は num_figure - num_figure_LeftOfFocusedFunc - num_decrement_figure で与えられ、
						;移動先インデックスは num_figure_LeftOfFocusedFunc + 1 + cnt で与えられ、
						;移動元インデックスは num_figure_LeftOfFocusedFunc + 1 + cnt + (num_decrement_figure - 1) = num_figure_LeftOfFocusedFunc + cnt + num_decrement_figure で与えられる。
						;ほとんどの関数は、入力1個で出力も1個なので移動距離は0となる。
	
						;repeat num_figure - num_figure_LeftOfFocusedFunc - num_decrement_figure
						;	num1 = num_figure_LeftOfFocusedFunc + 1 + cnt						;移動先インデックス
						;	num2 = num_figure_LeftOfFocusedFunc + cnt + num_decrement_figure	;移動元インデックス
						;	if num1 < num2 {
						;		FigureCode(num1) = FigureCode(num2)
						;		FigureCode(num2) = 0.0	;一応0書き
						;	}
						;loop
						;--------------------------------------------------△ A △--------------------------------------------------
						;                                                    ↓↓
						;                     A,Bで、処理時間はほとんど変わらない (Bの方が1000回ループで1ms位早い)
						;                                                    ↓↓
						;--------------------------------------------------▽ B ▽--------------------------------------------------
						;移動すべきデータのサイズは、8*(移動すべき数値データの個数) = 8*(num_figure - num_figure_LeftOfFocusedFunc - num_decrement_figure) で与えられる。
						
						memcpy FigureCode,FigureCode,8*(num_figure - num_figure_LeftOfFocusedFunc - num_decrement_figure),8*(num_figure_LeftOfFocusedFunc + 1),8*(num_figure_LeftOfFocusedFunc + num_decrement_figure)	;シフト
						memset FigureCode,0,8*(num_decrement_figure - 1),8*(num_figure - num_decrement_figure + 1)	;使われていない要素を一応0で埋める
						;--------------------------------------------------△ B △--------------------------------------------------
					
					num_figure -= num_decrement_figure - 1	;数値データの個数情報を更新
					
			} else {	;関数が無くなった場合
				break	;関数検索を終了する
			}
			
		loop
	
		if flg1_error = 1 : return 1
	
		;＜ 残った式全体をサブルーチン CalcP に処理させる＞
			Index_RangeStart_sub1 = 0
			Index_RangeEnd_sub1 = num_symbol - 1
			gosub *CalcP
	
		if flg1_error_sub1 = 1 : return 1
	
	CalcResult = FigureCode(0)
	return 0

*CalcP
	;中間コードに従って、 + - * / \ 数 () のみで表現された多項式を計算するサブルーチン。
	;式の一部分を処理する
	
	;計算開始,終了位置を示すシンボルコード内でのインデックスはそれぞれ Index_RangeStart_sub1 , Index_RangeEnd_sub1 整数型変数で
	;与えられたものを使用する。
	;こうして与えられた式の部分を「担当部分」と呼ぶことにする。
	
	;処理が正常に終了したら flg1_error_sub1 整数型変数の内容が 0 になり、エラーが発生した場合は 1 になる。
	
	;本サブルーチン内で完結する変数の名前の末尾には sub1 を付けている。
	
	flg1_error_sub1 = 0	;エラー検知フラグ
	width_range_sub1 = Index_RangeEnd_sub1 - Index_RangeStart_sub1 + 1	;担当している区間のシンボルの数
	
	;＜ 処理開始 ＞
		repeat	; ( 検索ループ。 ( が無くなるまで繰り返す
	
			;＜ 一番右側の ( を探す ＞
				;←向きに探索
				flg1_Found（_sub1 = 0	; ( 発見フラグ
				repeat width_range_sub1
					if SymbolCode(Index_RangeEnd_sub1 - cnt) = 15 {
						flg1_Found（_sub1 = 1
						Index_（_focused_sub1 = Index_RangeEnd_sub1 - cnt	;一番右側の ( の、シンボルコード内でのインデックス。
						break
					}
				loop
	
				if flg1_Found（_sub1 = 1 {	; ( が見つかった場合
				
					;＜ 対応する ) を探す ＞
						repeat Index_RangeEnd_sub1 - Index_（_focused_sub1
							if SymbolCode(Index_（_focused_sub1 + 1 + cnt) = 16 {
								Index_）_focused_sub1 = Index_（_focused_sub1 + 1 + cnt	;対応する ) の、シンボルコード内でのインデックス。
								widh_contents_（）_focused_sub1 = cnt	;着目している ( ) の中身のシンボル数
								break
							}
						loop
	
					;＜ 見つけた ( ) より左側にある数値データの個数を調べる ＞
						num_figure_LeftOfRange_sub2 = 0	;見つけた数値データの個数のカウンタ
						repeat Index_（_focused_sub1
							if SymbolCode(cnt) = 1 : num_figure_LeftOfRange_sub2 ++
						loop
					
					;＜ 見つけた ( ) の中身を処理する ＞
						Index_RangeStart_sub2 = Index_（_focused_sub1 + 1
						Index_RangeEnd_sub2 = Index_）_focused_sub1 - 1
						gosub *CalcNoPP
						if flg1_error_sub2 = 1 : flg1_error_sub1 = 1 : break
					
					;＜ 中身を処理した ( ) を取り払う ＞
						SymbolCode(Index_（_focused_sub1) = SymbolCode(Index_（_focused_sub1 + 1) : SymbolCode(Index_（_focused_sub1 + 1) = 0,0	; ( を消してその隣のシンボル(=先程処理された中身)で上書き。 その後、消された ( の右側にある2シンボル(すなわち、 数値と) )を消す。
	
						;--------------------------------------------------▽SLOW▽--------------------------------------------------
						;repeat num_symbol - Index_（_focused_sub1 - 3; = num_symbol - Index_（_focused_sub1 - 1 - 2	; ) を消して、それより右側のシンボルを全部左へ2だけシフト。repeatのパラメータは、移動させるべきシンボルの個数。-2 は ( ) が消えたことにより、左に2シンボル分シフトすることを意味する。 
						;	SymbolCode(Index_（_focused_sub1 + 1 + cnt) = SymbolCode(Index_（_focused_sub1 + 3 + cnt)	;※ Index_（_focused_sub1 + 3 + cnt = Index_（_focused_sub1 + 1 + cnt + 2
						;	SymbolCode(Index_（_focused_sub1 + 1 + cnt + 2) = 0
						;loop
						;--------------------------------------------------△SLOW△--------------------------------------------------
						;                                                    ↓↓
						;--------------------------------------------------▽FAST▽--------------------------------------------------
						memcpy SymbolCode,SymbolCode,4*(num_symbol - Index_（_focused_sub1 - 3),4*(Index_（_focused_sub1 + 1),4*(Index_（_focused_sub1 + 3)	;シフト
						SymbolCode(num_symbol - 2) = 0,0;式の終わりを0で埋める
						;--------------------------------------------------△FAST△--------------------------------------------------
						
						num_symbol - 2	;シンボルの個数情報を更新
						Index_RangeEnd_sub1 -= widh_contents_（）_focused_sub1 + 1 : width_range_sub1 -= widh_contents_（）_focused_sub1 + 1	;担当部分の範囲情報を更新
					
				} else {	;( が無くなった場合
					break	; ( の検索をを終了する
				}
		loop
	
		if flg1_error_sub1 = 1 : return
	
		;＜ 残っている担当部分全体ををサブルーチン CalcNoPP に処理させる ＞
			Index_RangeStart_sub2 = Index_RangeStart_sub1
			Index_RangeEnd_sub2 = Index_RangeEnd_sub1
			
			;＜ 残っている担当部分より左側にある数値データの個数を調べる ＞
				num_figure_LeftOfRange_sub2 = 0	;見つかった数値データの個数のカウンタ
				repeat Index_RangeStart_sub2
					if SymbolCode(cnt) = 1 : num_figure_LeftOfRange_sub2 ++
				loop
			
			gosub *CalcNoPP
	
		if flg1_error_sub2 = 1 : flg1_error_sub1 = 1 : return
	
	return

*CalcNoPP
	;中間コードに従って、 + - * / \ 数 のみで表現された多項式を計算するサブルーチン。
	;式の一部分を処理する。
	
	;計算開始,終了位置を示すシンボルコード内でのインデックスはそれぞれ Index_RangeStart_sub2 , Index_RangeEnd_sub2 整数型変数で
	;与えられたものを使用する。
	;こうして与えられた式の部分を「担当部分」と呼ぶことにする。
	;担当部分より左側にある数値データの個数の情報は、「num_figure_LeftOfRange_sub2」整数型変数で与えられたものを使用する。
	
	;この処理が終わるまでに、担当部分にあるすべての定数や変数は数値に置き換えられる。
	
	;処理が正常に終了したら flg1_error_sub2 整数型変数の内容が 0 になり、エラーが発生した場合は 1 になる。
	
	;本サブルーチン内で完結する変数の名前の末尾には sub2 を付けている。
	
	flg1_error_sub2 = 0	;エラー検知フラグ
	width_range_sub2 = Index_RangeEnd_sub2 - Index_RangeStart_sub2 + 1	;担当している区間のシンボルの数

	;＜ 処理開始 ＞
	
		;＜ * / \ の処理 ＞
	
			; * / \ の中で着目する記号を「記号A」と呼ぶことにすると、それを処理するときは、その右側の数については、記号Aの右隣に - がある場合はさらに右側のシンボルより得られた数を-1倍したものを記号Aの右側の数として扱う。
			;記号Aの左側の数については、記号Aの左隣のシンボルより得られた数を、記号Aの左側の数として扱う。つまり、記号Aの2つ左に - があってもそれには手を出さない。
			;こうすることで、演算記号としての役割を持つ - が消されて式が壊れることのないようにしている。
			
			repeat	; * / \ 検索ループ。 * / \ が無くなるまで繰り返す。
	
				;＜ 一番左にある * / \ を探す ＞
					flg1_Found＊／￥_sub2 = 0	; * / \ 発見フラグ。(0,1,2,3) = (NotFound,*,/,\)
					repeat width_range_sub2
						num1_sub2 = SymbolCode(Index_RangeStart_sub2 + cnt)
						Index_＊／￥_focused_sub2 = Index_RangeStart_sub2 + cnt	;今見ているシンボルのインデックス。 * / \ が発見されてループを抜けた後で役に立つ。
						if num1_sub2 = 10 : flg1_Found＊／￥_sub2 = 1 : break
						if num1_sub2 = 11 : flg1_Found＊／￥_sub2 = 2 : break
						if num1_sub2 = 12 : flg1_Found＊／￥_sub2 = 3 : break
					loop

				if flg1_Found＊／￥_sub2 ! 0 {	;どれかが見つかった場合
					;見つかった演算記号を 記号A とする。
					
					ID_symbolA_sub2 = num1_sub2	;記号A のシンボル識別値
					num_decrement_symbol_sub2 = 1	;今回の計算で消化されるシンボルの個数のカウンタ
					num_decrement_figure_sub2 = 0	;今回の計算で消化される数値データの個数のカウンタ
					;dim Type_symbol_BothSides_sub2,2	(∵初期化処理で初期化済)
						;↑記号A の両サイドの数の種類。(0,1,2) = (figure,FixedNumber,Variable)。要素0,1はそれぞれ左,右サイドの情報。
					;TOF_Is－OnTheRightSideOfSymbolA_sub2	:	記号A の右隣に - があるかどうか。(0,1) = (ない,ある)
					;num_corrector_RightSideOfSymbolA_sub2	:	記号A の右側の数の先頭に掛ける補正数
	
					;＜ 記号A より左側にある数値データの個数を調べる ＞
						count1_sub2 = 0
						repeat Index_＊／￥_focused_sub2 - Index_RangeStart_sub2
							if SymbolCode(Index_＊／￥_focused_sub2 - 1 - cnt) = 1 : count1_sub2 ++
						loop
						num_figure_LeftOfSymbolA_sub2 = num_figure_LeftOfRange_sub2 + count1_sub2
						
					;＜ 記号Aの左側の数を取得する ＞
						
						num_decrement_symbol_sub2 ++
						Index_symbol_LeftSideOfSymbolA_sub2 = Index_＊／￥_focused_sub2 - 1	;記号A の左隣のシンボルの、シンボルコード内でのインデックス。
						num1_sub2 = SymbolCode(Index_symbol_LeftSideOfSymbolA_sub2)	;記号A の左隣のシンボル識別値を取り出す
						repeat 1;脱出装置
							if num1_sub2 = 1 {	;数値データである場合
								num_decrement_figure_sub2 ++
								Type_symbol_BothSides_sub2(0) = 0
								;＜ それがシンボルコード内で何番目の数値データなのか調べ、その数値データの数値を取得する 
									num_figure_LeftSideOfSymbolA_sub2 = num_figure_LeftOfSymbolA_sub2	;番号を取得
									num_LeftSideOfSymbolA_sub2 = FigureCode(num_figure_LeftSideOfSymbolA_sub2 - 1)	;数値を取得
								break;脱出
							}
							if (1001 <= num1_sub2)&(num1_sub2 <= 1002) {	;定数である場合
								Type_symbol_BothSides_sub2(0) = 1
								repeat num_kind_FixedNumber@N_M_fx0
									if num1_sub2 = MeasurementTable_FixedNumber_num@N_M_fx0(cnt) : num_LeftSideOfSymbolA_sub2 = MeasurementTable_FixedNumber_value@N_M_fx0(cnt)
								loop
								break;脱出
							}
							if (2001 <= num1_sub2)&(num1_sub2 <= 2052) {	;変数である場合
								Type_symbol_BothSides_sub2(0) = 2
								num_LeftSideOfSymbolA_sub2 = VariableValueList(num1_sub2 - 2001)
								break;脱出
							}
						loop
					
					;＜ 記号Aの右側の数を取得する ＞
						
						num2_sub2 = SymbolCode(Index_＊／￥_focused_sub2 + 1)	;記号A の右隣のシンボル識別値を取り出す
						if num2_sub2 = 6 {	;それが - である場合
							TOF_Is－OnTheRightSideOfSymbolA_sub2 = 1
							num_corrector_RightSideOfSymbolA_sub2 = -1.0	;補正数反転
							num2_sub2 = SymbolCode(Index_＊／￥_focused_sub2 + 2)	;さらに右隣のシンボル識別値を取り出す
							num_decrement_symbol_sub2 + 2
						} else {
							num_decrement_symbol_sub2 ++
							num_corrector_RightSideOfSymbolA_sub2 = 1.0	;補正数は1
						}
						repeat 1;脱出装置
							if num2_sub2 = 1 {	;数値データである場合
								num_decrement_figure_sub2 ++
								Type_symbol_BothSides_sub2(1) = 0
								;＜ それがシンボルコード内で何番目の数値データなのか調べ、その数値データの数値を取得する ＞
									num_figure_RightSideOfSymbolA_sub2 = num_figure_LeftOfSymbolA_sub2 + 1	;番号を取得
									num_RightSideOfSymbolA_sub2 = num_corrector_RightSideOfSymbolA_sub2*FigureCode(num_figure_RightSideOfSymbolA_sub2 - 1)	;数値を取得
								break;脱出
							}
							if (1001 <= num2_sub2)&(num2_sub2 <= 1002) {	;定数である場合
								Type_symbol_BothSides_sub2(1) = 1
								repeat num_kind_FixedNumber@N_M_fx0
									if num2_sub2 = MeasurementTable_FixedNumber_num@N_M_fx0(cnt) : num_RightSideOfSymbolA_sub2 = num_corrector_RightSideOfSymbolA_sub2*MeasurementTable_FixedNumber_value@N_M_fx0(cnt)
								loop
								break;脱出
							}
							if (2001 <= num2_sub2)&(num2_sub2 <= 2052) {	;変数である場合
								Type_symbol_BothSides_sub2(1) = 2
								num_RightSideOfSymbolA_sub2 = num_corrector_RightSideOfSymbolA_sub2*VariableValueList(num2_sub2 - 2001)
								break;脱出
							}
						loop

					;＜ 記号A とその両側の数を処理する ＞
						repeat 1;脱出装置
							if ID_symbolA_sub2 = 10 {	;乗算の場合
								result_CalcOfSymbolA_sub2 = num_LeftSideOfSymbolA_sub2*num_RightSideOfSymbolA_sub2
								break;脱出
							}
							if ID_symbolA_sub2 = 11 {	;除算の場合
								if num_RightSideOfSymbolA_sub2 = 0.0 : flg1_error_sub2 = 1 : ErrorCode = 1,2,0 : break	;0除算エラー
								result_CalcOfSymbolA_sub2 = num_LeftSideOfSymbolA_sub2/num_RightSideOfSymbolA_sub2
								break;脱出
							}
							if ID_symbolA_sub2 = 12 {	;余りを求める場合
								if num_RightSideOfSymbolA_sub2 = 0.0 : flg1_error_sub2 = 1 : ErrorCode = 1,2,0 : break	;0除算エラー
								result_CalcOfSymbolA_sub2 = num_LeftSideOfSymbolA_sub2\num_RightSideOfSymbolA_sub2
								break;脱出
							}
						loop

					if flg1_error_sub2 = 1 : break

					;＜ 中間コードに反映する ＞
					
						;＜ シンボルコードを編集する ＞
							SymbolCode(Index_symbol_LeftSideOfSymbolA_sub2) = 1	;記号A の左隣のシンボルを、計算結果のシンボルで上書きする。
							;＜ シンボルコード中の空いた場所を詰める。 ＞
								;--------------------------------------------------▽SLOW▽--------------------------------------------------
								;repeat num_symbol - Index_＊／￥_focused_sub2 - 1 - (num_decrement_symbol_sub2 - 2)
								;	SymbolCode(Index_＊／￥_focused_sub2 + cnt) = SymbolCode(Index_＊／￥_focused_sub2 + cnt + (2 + TOF_Is－OnTheRightSideOfSymbolA_sub2))
								;	SymbolCode(Index_＊／￥_focused_sub2 + cnt + (2 + TOF_Is－OnTheRightSideOfSymbolA_sub2)) = 0
								;loop
								;--------------------------------------------------△SLOW△--------------------------------------------------
								;                                                     ↓
								;--------------------------------------------------▽FAST▽--------------------------------------------------

								if TOF_Is－OnTheRightSideOfSymbolA_sub2 = 0 {	;記号A の右隣が - でなかった場合
									SymbolCode(Index_symbol_LeftSideOfSymbolA_sub2 + 1) = 0,0	;処理済のシンボルで、まだ消されていないものを消す。
	
									;--------------------------------------------------▽SLOW▽--------------------------------------------------
									;repeat num_symbol - Index_＊／￥_focused_sub2 - 2	; = num_symbol - Index_＊／￥_focused_sub2 - 1 - (num_decrement_symbol_sub2 - 2)
									;	Const_sub2 = Index_＊／￥_focused_sub2 + cnt
									;	SymbolCode(Const_sub2) = SymbolCode(Const_sub2 + 2)	; +2 ←ココに注目!
									;	SymbolCode(Const_sub2 + 2) = 0
									;loop
									;--------------------------------------------------△SLOW△--------------------------------------------------
									;                                                    ↓↓
									;--------------------------------------------------▽FAST▽--------------------------------------------------
									memcpy SymbolCode,SymbolCode,4*(num_symbol - Index_＊／￥_focused_sub2 - 2),4*Index_＊／￥_focused_sub2,4*(Index_＊／￥_focused_sub2 + 2)	;シフト
									SymbolCode(num_symbol - 2) = 0,0	;式の終わりを0で埋める
									;--------------------------------------------------△FAST△--------------------------------------------------
								} else {	;記号A の右隣が - であった場合
									SymbolCode(Index_symbol_LeftSideOfSymbolA_sub2 + 1) = 0,0,0	;処理済のシンボルで、まだ消されていないものを消す。
	
									;--------------------------------------------------▽SLOW▽--------------------------------------------------
									;repeat num_symbol - Index_＊／￥_focused_sub2 - 3	; = num_symbol - Index_＊／￥_focused_sub2 - 1 - (num_decrement_symbol_sub2 - 2)
									;	Const_sub2 = Index_＊／￥_focused_sub2 + cnt
									;	SymbolCode(Const_sub2) = SymbolCode(Const_sub2 + 3)	; +3 ←ココに注目!
									;	SymbolCode(Const_sub2 + 3) = 0
									;loop
									;--------------------------------------------------△SLOW△--------------------------------------------------
									;                                                    ↓↓
									;--------------------------------------------------▽FAST▽--------------------------------------------------
									memcpy SymbolCode,SymbolCode,4*(num_symbol - Index_＊／￥_focused_sub2 - 3),4*Index_＊／￥_focused_sub2,4*(Index_＊／￥_focused_sub2 + 3)	;シフト
									SymbolCode(num_symbol - 3) = 0,0,0	;式の終わりを0で埋める
									;--------------------------------------------------△FAST△--------------------------------------------------
								}
								
								num_symbol -= num_decrement_symbol_sub2 - 1	;シンボルの個数情報を更新
								Index_RangeEnd_sub2 -= num_decrement_symbol_sub2 - 1 : width_range_sub2 -= num_decrement_symbol_sub2 - 1	;計算終了位置を示すシンボルコード内でのインデックスを更新
							;--------------------------------------------------△FAST△--------------------------------------------------
							
						;＜ フィギュアコードを編集する ＞
							;新たな数値データの書き込みと、それに伴う既存データのシフトを行う。
							
							repeat 1;脱出装置
								if (Type_symbol_BothSides_sub2(0) ! 0)&(Type_symbol_BothSides_sub2(1) ! 0) {	;[ 非数値データ 記号A 非数値データ	] の場合
									;--------------------------------------------------▽SLOW▽--------------------------------------------------
									;repeat num_figure - num_figure_LeftOfSymbolA_sub2	;既存データのシフト
									;	FigureCode(num_symbol - cnt) = FigureCode(num_symbol - 1 - cnt)
									;loop
									;--------------------------------------------------△SLOW△--------------------------------------------------
									;                                                    ↓↓
									;--------------------------------------------------▽FAST▽--------------------------------------------------
									memcpy FigureCode,FigureCode,8*(num_figure - num_figure_LeftOfSymbolA_sub2),8*(num_figure_LeftOfSymbolA_sub2 + 1),8*num_figure_LeftOfSymbolA_sub2	;既存データのシフト
									;--------------------------------------------------△FAST△--------------------------------------------------
									FigureCode(num_figure_LeftOfSymbolA_sub2) = result_CalcOfSymbolA_sub2	;計算結果の挿入
									num_figure ++	;数値データの個数情報を更新
									break;脱出
								}
								if (Type_symbol_BothSides_sub2(0) = 0)&(Type_symbol_BothSides_sub2(1) ! 0) {	;[ 数値データ 記号A 非数値データ	] の場合
									FigureCode(num_figure_LeftOfSymbolA_sub2 - 1) = result_CalcOfSymbolA_sub2	;記号A の左側の数に対応する数値データを計算結果で上書き
									break;脱出
								}
								if (Type_symbol_BothSides_sub2(0) ! 0)&(Type_symbol_BothSides_sub2(1) = 0) {	;[ 非数値データ 記号A 数値データ	] の場合
									FigureCode(num_figure_LeftOfSymbolA_sub2) = result_CalcOfSymbolA_sub2	;記号A の右側の数に対応する数値データを計算結果で上書き
									break;脱出
								}
								if (Type_symbol_BothSides_sub2(0) = 0)&(Type_symbol_BothSides_sub2(1) = 0) {	;[ 数値データ 記号A 数値データ		] の場合
									FigureCode(num_figure_LeftOfSymbolA_sub2 - 1) = result_CalcOfSymbolA_sub2	;記号A の左側の数に対応する数値データを計算結果で上書き
									;--------------------------------------------------▽SLOW▽--------------------------------------------------
									;repeat num_figure - num_figure_LeftOfSymbolA_sub2 - 1	;既存データのシフト
									;	FigureCode(num_figure_LeftOfSymbolA_sub2 + cnt) = FigureCode(num_figure_LeftOfSymbolA_sub2 + cnt + 1)
									;	FigureCode(num_figure_LeftOfSymbolA_sub2 + cnt + 1) = 0.0	;一応0書き
									;loop
									;--------------------------------------------------△SLOW△--------------------------------------------------
									;                                                    ↓↓
									;--------------------------------------------------▽FAST▽--------------------------------------------------
									memcpy FigureCode,FigureCode,8*(num_figure - num_figure_LeftOfSymbolA_sub2 - 1),8*num_figure_LeftOfSymbolA_sub2,8*(num_figure_LeftOfSymbolA_sub2 + 1)	;既存データのシフト
									FigureCode(num_figure - 1) = 0.0	;使われていない要素を一応0で埋める
									;--------------------------------------------------△FAST△--------------------------------------------------
									num_figure --	;数値データの個数情報を更新
									break;脱出
								}
							loop
						
					} else {	; * / \ が無くなった場合
						break	;検索を終了する
					}
			loop
	
			if flg1_error_sub2 = 1 : return
	
		;＜ + - の処理 ＞
			repeat	; + - 検索ループ。 + - が無くなるまで繰り返す。
	
				;＜ 一番左側にある + - を探す ＞
					flg1_Found＋－_sub2 = 0	; + - 発見フラグ。 (0,1,2) = (NotFound,Found+,Found-)
					repeat width_range_sub2
						num1_sub2 = SymbolCode(Index_RangeStart_sub2 + cnt)
						Index_＋－_focused_sub2 = Index_RangeStart_sub2 + cnt	;今見ているシンボルのインデックス。 + - が発見されてループを抜けた後で役に立つ。
						if num1_sub2 = 5 : flg1_Found＋－_sub2 = 1 : break
						if num1_sub2 = 6 : flg1_Found＋－_sub2 = 2 : break
					loop
				
				if flg1_Found＋－_sub2 ! 0 {	;どれかが見つかった場合
					;見つかった演算記号を 記号A とする。
	
					ID_symbolA_sub2 = num1_sub2	;記号A のシンボル識別値
					num_decrement_figure_sub2 = 0	;今回の計算で消化される数値データの個数のカウンタ
					num_decrement_symbol_sub2 = 1	;今回の計算で消化されるシンボルの個数のカウンタ
					Type_symbol_LeftSideOfSymbolA_sub2 = 0	;記号A の左側の数の種類。(-1,0,1,2) = (null,figure,FixedNumber,Variable)
					Type_symbol_RightSideOfSymbolA_sub2 = 0	;記号A の右側の数の種類。(0,1,2) = (figure,FixedNumber,Variable)
	
					;＜ 記号A より左側にある数値データの個数を調べる ＞
						count1_sub2 = 0
						repeat Index_＋－_focused_sub2 - Index_RangeStart_sub2
							if SymbolCode(Index_＋－_focused_sub2 - 1 - cnt) = 1 : count1_sub2 ++
						loop
						num_figure_LeftOfSymbolA_sub2 = num_figure_LeftOfRange_sub2 + count1_sub2
	
					;＜ 記号Aの左側の数を取得する ＞
						if Index_＋－_focused_sub2 = Index_RangeStart_sub2 {	;記号A の左側に数が無い場合
							Type_symbol_LeftSideOfSymbolA_sub2 = -1
							num_LeftSideOfSymbolA_sub2 = 0.0	;便宜上、記号Aの左側に0を仮定する
						} else {	;記号Aの左側に数がある場合
							num_decrement_symbol_sub2 ++
							Index_symbol_LeftSideOfSymbolA_sub2 = Index_＋－_focused_sub2 - 1	;記号A の左隣のシンボルの、シンボルコード内でのインデックス。
							num1_sub2 = SymbolCode(Index_symbol_LeftSideOfSymbolA_sub2)	;記号A の左隣のシンボル識別値を取り出す
							repeat 1;脱出装置
								if num1_sub2 = 1 {	;数値データである場合
									num_decrement_figure_sub2 ++
									Type_symbol_LeftSideOfSymbolA_sub2 = 0
									;＜ それがシンボルコード内で何番目の数値データなのか調べ、その数値データの数値を取得する 
										num_figure_LeftSideOfSymbolA_sub2 = num_figure_LeftOfSymbolA_sub2	;番号を取得
										num_LeftSideOfSymbolA_sub2 = FigureCode(num_figure_LeftSideOfSymbolA_sub2 - 1)	;数値を取得
									
									break;脱出
								}
								if (1001 <= num1_sub2)&(num1_sub2 <= 1002) {	;定数である場合
									Type_symbol_LeftSideOfSymbolA_sub2 = 1
									repeat num_kind_FixedNumber@N_M_fx0
										if num1_sub2 = MeasurementTable_FixedNumber_num@N_M_fx0(cnt) : num_LeftSideOfSymbolA_sub2 = MeasurementTable_FixedNumber_value@N_M_fx0(cnt)
									loop
									break;脱出
								}
								if (2001 <= num1_sub2)&(num1_sub2 <= 2052) {	;変数である場合
									Type_symbol_LeftSideOfSymbolA_sub2 = 2
									num_LeftSideOfSymbolA_sub2 = VariableValueList(num1_sub2 - 2001)
									break;脱出
								}
							loop
						}
	
					;＜ 記号Aの右側の数を取得する ＞
						num_decrement_symbol_sub2 ++
						num2_sub2 = SymbolCode(Index_＋－_focused_sub2 + 1)	;記号A の右隣のシンボル識別値を取り出す
						repeat 1;脱出装置
							if num2_sub2 = 1 {	;数値データである場合
								num_decrement_figure_sub2 ++
								Type_symbol_RightSideOfSymbolA_sub2 = 0
								;＜ それがシンボルコード内で何番目の数値データなのか調べ、その数値データの数値を取得する ＞
									num_figure_RightSideOfSymbolA_sub2 = num_figure_LeftOfSymbolA_sub2 + 1	;番号を取得
								;/DEBUG/;dialog num_figure_RightSideOfSymbolA_sub2 - 1 : dialog length(FigureCode)
									num_RightSideOfSymbolA_sub2 = FigureCode(num_figure_RightSideOfSymbolA_sub2 - 1)	;数値を取得
								
								break;脱出
							}
							if (1001 <= num2_sub2)&(num2_sub2 <= 1002) {	;定数である場合
								Type_symbol_RightSideOfSymbolA_sub2 = 1
								repeat num_kind_FixedNumber@N_M_fx0
									if num2_sub2 = MeasurementTable_FixedNumber_num@N_M_fx0(cnt) : num_RightSideOfSymbolA_sub2 = MeasurementTable_FixedNumber_value@N_M_fx0(cnt)
								loop
								break;脱出
							}
							if (2001 <= num2_sub2)&(num2_sub2 <= 2052) {	;変数である場合
								Type_symbol_RightSideOfSymbolA_sub2 = 2
								num_RightSideOfSymbolA_sub2 = VariableValueList(num2_sub2 - 2001)
								break;脱出
							}
						loop
	
					;＜ 記号A とその両側の数を処理する ＞
						if ID_symbolA_sub2 = 5 {	;加算の場合
							result_CalcOfSymbolA_sub2 = num_LeftSideOfSymbolA_sub2 + num_RightSideOfSymbolA_sub2
						} else {	;減算の場合
							result_CalcOfSymbolA_sub2 = num_LeftSideOfSymbolA_sub2 - num_RightSideOfSymbolA_sub2
						}
	
					;＜ 中間コードに反映する ＞
					
						;＜ シンボルコードを編集する ＞
							if Type_symbol_LeftSideOfSymbolA_sub2 = -1 {	;記号A の左側に数が無い場合
								SymbolCode(Index_＋－_focused_sub2) = 1,0	;記号A のシンボルを、計算結果のシンボルで置き換え、さらに、処理済のシンボルを消す。
								;＜ シンボルコード中の空いた場所を詰める。 ＞
									;--------------------------------------------------▽SLOW▽--------------------------------------------------
									;repeat num_symbol - Index_＋－_focused_sub2 - 2
									;	const1_sub2 = Index_＋－_focused_sub2 + 1 + cnt
									;	SymbolCode(const1_sub2) = SymbolCode(const1_sub2 + 1)
									;	SymbolCode(const1_sub2 + 1) = 0
									;loop
									;--------------------------------------------------△SLOW△--------------------------------------------------
									;                                                    ↓↓
									;--------------------------------------------------▽FAST▽--------------------------------------------------
									memcpy SymbolCode,SymbolCode,4*(num_symbol - Index_＋－_focused_sub2 - 2),4*(Index_＋－_focused_sub2 + 1),4*(Index_＋－_focused_sub2 + 2)
									;--------------------------------------------------△FAST△--------------------------------------------------
								num_symbol --	;シンボルの個数情報を更新
							} else {	;記号A の左側に数がある場合
								SymbolCode(Index_＋－_focused_sub2 - 1) = 1,0,0	;記号A の左側のシンボルを、計算結果のシンボルで置き換え、さらに、処理済のシンボルを消す。
								;＜ シンボルコード中の空いた場所を詰める。 ＞
									;--------------------------------------------------▽SLOW▽--------------------------------------------------
									;repeat num_symbol - Index_＋－_focused_sub2 - 2
									;	const1_sub2 = Index_＋－_focused_sub2 + cnt
									;	SymbolCode(const1_sub2) = SymbolCode(const1_sub2 + 2)
									;	SymbolCode(const1_sub2 + 2) = 0
									;loop
									;--------------------------------------------------△SLOW△--------------------------------------------------
									;                                                    ↓↓
									;--------------------------------------------------▽FAST▽--------------------------------------------------
									memcpy SymbolCode,SymbolCode,4*(num_symbol - Index_＋－_focused_sub2 - 2),4*Index_＋－_focused_sub2,4*(Index_＋－_focused_sub2 + 2)
									;--------------------------------------------------△FAST△--------------------------------------------------
								num_symbol - 2	;シンボルの個数情報を更新
							}
							;num_symbol -= num_decrement_symbol_sub2 - 1	;シンボルの個数情報を更新	(廃止 (∵実行済))
							Index_RangeEnd_sub2 -= num_decrement_symbol_sub2 - 1 : width_range_sub2 -= num_decrement_symbol_sub2 - 1	;計算終了位置を示すシンボルコード内でのインデックスを更新
	
						;＜ フィギュアコードを編集する ＞
							;新たな数値データの書き込みと、それに伴う既存データのシフトを行う。
	
							repeat 1;脱出装置
								if ((Type_symbol_LeftSideOfSymbolA_sub2 = -1)&(Type_symbol_RightSideOfSymbolA_sub2 ! 0))|((Type_symbol_LeftSideOfSymbolA_sub2 ! 0)&(Type_symbol_RightSideOfSymbolA_sub2 ! 0)) {	;[記号A 非数値データ] or [非数値データ 記号A 非数値データ] の場合
									;--------------------------------------------------▽SLOW▽--------------------------------------------------
									;repeat num_figure - num_figure_LeftOfSymbolA_sub2	;既存データのシフト
									;	FigureCode(num_figure - cnt) = FigureCode(num_figure - cnt - 1)
									;loop
									;--------------------------------------------------△SLOW△--------------------------------------------------
									;                                                    ↓↓
									;--------------------------------------------------▽FAST▽--------------------------------------------------
									memcpy FigureCode,FigureCode,8*(num_figure - num_figure_LeftOfSymbolA_sub2),8*(num_figure_LeftOfSymbolA_sub2 + 1),8*num_figure_LeftOfSymbolA_sub2	;既存データのシフト
									;--------------------------------------------------△FAST△--------------------------------------------------
								;/DEBUG/	変数値リストが実数型でないと、ココで痛い目に遭う。すなわち、フィギュアコードが整数型でリセットされてしまう。
								;/DEBUG/;dialog length(FigureCode)
								;/DEBUG/;dialog ""+num_figure_LeftOfSymbolA_sub2+" : "+result_CalcOfSymbolA_sub2+""
									FigureCode(num_figure_LeftOfSymbolA_sub2) = result_CalcOfSymbolA_sub2	;計算結果の挿入
								;/DEBUG/;dialog length(FigureCode)
									num_figure ++	;数値データの個数情報を更新
									break;脱出
								}
								if (Type_symbol_LeftSideOfSymbolA_sub2 = 0)&(Type_symbol_RightSideOfSymbolA_sub2 ! 0) {	;[数値データ 記号A 非数値データ] の場合
									FigureCode(num_figure_LeftOfSymbolA_sub2 - 1) = result_CalcOfSymbolA_sub2	;記号A の左側の数に対応する数値データを計算結果で上書き
									break;脱出
								}
								if ((Type_symbol_LeftSideOfSymbolA_sub2 = -1)&(Type_symbol_RightSideOfSymbolA_sub2 = 0))|((Type_symbol_LeftSideOfSymbolA_sub2 ! 0)&(Type_symbol_RightSideOfSymbolA_sub2 = 0)) {	;[記号A 数値データ] or [非数値データ 記号A 数値データ] の場合
									FigureCode(num_figure_LeftOfSymbolA_sub2) = result_CalcOfSymbolA_sub2	;記号A の右側の数に対応する数値データを計算結果で上書き
									break;脱出
								}
								if (Type_symbol_LeftSideOfSymbolA_sub2 = 0)&(Type_symbol_RightSideOfSymbolA_sub2 = 0) {	;[数値データ 記号 数値データ] の場合
									FigureCode(num_figure_LeftOfSymbolA_sub2 - 1) = result_CalcOfSymbolA_sub2	;記号A の左側の数に対応する数値データを計算結果で上書き
									;--------------------------------------------------▽SLOW▽--------------------------------------------------
									;repeat num_figure - num_figure_LeftOfSymbolA_sub2 - 1	;既存データのシフト
									;	FigureCode(num_figure_LeftOfSymbolA_sub2 + cnt) = FigureCode(num_figure_LeftOfSymbolA_sub2 + cnt + 1)
									;	FigureCode(num_figure_LeftOfSymbolA_sub2 + cnt + 1) = 0.0	;一応0書き
									;loop
									;--------------------------------------------------△SLOW△--------------------------------------------------
									;                                                    ↓↓
									;--------------------------------------------------▽FAST▽--------------------------------------------------
									memcpy FigureCode,FigureCode,8*(num_figure - num_figure_LeftOfSymbolA_sub2 - 1),8*num_figure_LeftOfSymbolA_sub2,8*(num_figure_LeftOfSymbolA_sub2 + 1)	;既存データのシフト
									FigureCode(num_figure - 1) = 0.0	;使われていない要素を一応0で埋める
									;--------------------------------------------------△FAST△--------------------------------------------------
									num_figure --	;数値データの個数情報を更新
									break;脱出
								}
							loop
						
				} else {	; + - が無くなった場合
					break	;検索を終了する
				}
			loop
	
		;＜ 最後に残った数が定数または変数ならそれを数値で置き換える ＞
	
			;※ 実際には、最後に定数または変数が残るのは、担当部分が最初から定数または変数ただ一つだけで与えられる特殊な場合のみである。
		
			num1_sub2 = SymbolCode(Index_RangeStart_sub2)	;最後に残ったシンボルを取り出す
			if num1_sub2 ! 1 {	;それが数値を表すものではない場合
				if (1001 <= num1_sub2)&(num1_sub2 <= 1002) {	;定数である場合
					repeat num_kind_FixedNumber@N_M_fx0	;具体値を得る
						if num1_sub2 = MeasurementTable_FixedNumber_num@N_M_fx0(cnt) : num2_sub2 = MeasurementTable_FixedNumber_value@N_M_fx0(cnt)
					loop
				} else {	;変数である場合
					num2_sub2 = VariableValueList(num1_sub2 - 2001)
				}
				
				SymbolCode(Index_RangeStart_sub2) = 1	;シンボルコードを編集
				
				;＜ フィギュアコードを編集する ＞
					;--------------------------------------------------▽SLOW▽--------------------------------------------------
					;repeat num_figure - num_figure_LeftOfRange_sub2	;既存データを右にシフト
					;	FigureCode(num_figure - cnt) = FigureCode(num_figure - cnt - 1)
					;loop
					;--------------------------------------------------△SLOW△--------------------------------------------------
					;                                                    ↓↓
					;--------------------------------------------------▽FAST▽--------------------------------------------------
					memcpy FigureCode,FigureCode,8*(num_figure - num_figure_LeftOfRange_sub2),8*(num_figure_LeftOfRange_sub2 + 1),8*num_figure_LeftOfRange_sub2	;既存データを右にシフト
					;--------------------------------------------------△FAST△--------------------------------------------------
					FigureCode(num_figure_LeftOfRange_sub2) = num2_sub2	;定数or変数より得られた数値を挿入
					num_figure ++	;数値データの個数情報を更新
			}
		
	return
#global

#module N_M_fx31
;	正しい中間コードから整形済文字列式を生成する

;	[書式]
;
;		str = Mfx_ICodeToStrFormula(変数名1,変数名2,変数名3,P1)
;
;		変数名1 : シンボルコードが格納された変数の名前
;		変数名2 : フィギュアコードが格納された変数の名前
;		変数名3 : エラーコードを格納する整数型変数の名前
;		P1		: 数字の表示オプション。(1,0) = (数字の末尾の連続する0を省略する,〃しない)

;	エラーコードの意味 : (0,1) : (異常なし,エラー)

#defcfunc Mfx_ICodeToStrFormula array SymbolCode , array FigureCode , var ErrorCode , int opt1
	num_element_SymbolCode = length(SymbolCode)	;シンボルコード用配列変数の要素数。これはフィギュアコードのそれと共通である。
	
	sdim result,num_element_SymbolCode*5	;結果を格納する変数の初期化	(※5に特に意味はない。1シンボルが必ず1文字とは限らないから、だいたいの目安で、5。)
	
	ErrorCode = 0
	count1_num_figure = 0	;見つかった数値データの個数のカウンタ
	repeat num_element_SymbolCode
		num1 = SymbolCode(cnt)	;1シンボル取り出す
	
		if num1 = 0 : break	;コードを読み終えたら終了
		repeat 1	;脱出装置
			if num1 = 1 {	;	数値データである場合
				if opt1 = 1 {
					result += MCS_OmitZero(MCS_DoubleToStr64(FigureCode(count1_num_figure))) : count1_num_figure ++ : break
				} else {
					result += MCS_DoubleToStr64(FigureCode(count1_num_figure)) : count1_num_figure ++ : break
				}
			}
			;＜ 数値データ以外のシンボルの処理 ＞
				flg1 = 0
				repeat num_element_MT_SCC@N_M_fx0
					if num1 = MeasurementTable_SymbolCode―Char_Num@N_M_fx0(cnt) : result += MeasurementTable_SymbolCode―Char_Char@N_M_fx0(cnt) : flg1 = 1 : break
				loop
				if flg1 = 1 : break
			
			ErrorCode = 1 : break	;ここまで実行されたらエラー
		loop
		
	loop
	return result
#global