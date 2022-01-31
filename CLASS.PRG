*ออออออออออออออออออออออออออออออออออออออฟ
*  SISTEMA DE CONTROLE DE CLASSIFICADOSณ
*                                      ณ
*ฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤณ
*  Programador: VLAMIR CARBONARI       ณ
*                                      ณ
*  BLACK & WHITES Inform tica Ltda.    ณ
*ฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤณ
*  Cliente: JORNAL O PROGRESSO         ณ
*                                      ณ
*ฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤณ
*  Programa: CLASS                     ณ
*  Objetivo: Fun”es basicas do sistemaณ
*  Data Inกcio: 07/09/1993             ณ
*                                      ณ
*ออออออออออออออออออออออออออออออออออออออู

*ฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤ
 PARAMETERS VIDEO,OPERADOR,SPL
 VIDEO=IIF(PCOUNT()<1," ",VIDEO)
 OPERADOR=IIF(PCOUNT()<2," ",OPERADOR)
 SPL=IIF(PCOUNT()<3," ",SPL)
 SET DATE BRITISH
 SET ESCAPE OFF
 SET DELETED ON
 SET CONFIRM ON
 SET EPOCH TO 1950
 SET FUNCTION 10 TO CHR(23)
 SET SCOREBOARD OFF
 SETCURSOR(0)
 IF SPL="SPL"
    SET PRINTER TO PRINT.SPL
 ENDIF

 nome0 = "JORNAL O PROGRESSO"
 #include "INKEY.CH"
 #include "SET.CH"
 #include "GETEXIT.CH"

 #define TRC_80_1  REPLICATE("-",80)
 #define TRC_80_2  REPLICATE("=",80)
 #define TRC_130_1  REPLICATE("-",131)
 #define TRC_130_2  REPLICATE("=",131)
 #define DSEM { "Dom" , "Seg" , "Ter" , "Qua" , "Qui" , "Sex" , "Sab" }
 #define NMES { "Janeiro", "Fevereiro", "Maro", "Abril", "Maio", "Junho", ;
                "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro" }
 #define BOLD_1  CHR(27)+"E"
 #define BOLD_0  CHR(27)+"F"


 SETCANCEL(.F.)
*ฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤ

*ฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤ VIDEO ฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤ
 cor0 := "7/0,0/7"      && Normal
 cor1 := "7/0,0/7"      && Indicacao de sistema
 cor2 := "7/0,0/7"      && Confirma
 cor3 := "7/0,0/7"      && Achoice's
 cor4 := "7/0,0/7"      && Menus finais
 cor5 := "7/0,0/7"      && Get's / Read
 cor6 := "7/0,0/7"      && DbEdit's
 cor7 := "0/7,7/0"      && Telas especiais (destaques)
 cor8 := "0/7,7/0"      && Get's / Read (Telas esp. / destaques)
 cor9 := "7/7,7/7"      && Edio de Senhas

 box0 = "ษอปบผอศบ "          && Menus
 box1 = "ึฤทบฝฤำบ "          && Get's / Read
 box2 = "ึฤทบฝฤำบ "          && Menus de Sistemas
 box3 = "อออ อออ  "          && Help de Cadastros

 IF VIDEO="EGA"
    cor0 := "7/0,0/7"
    cor1 := "15/6,7/0"
    cor2 := "7/0,0/7"
    cor3 := "7/1,7/2"
    cor4 := "7/1,1/7"
    cor5 := "2/1,4/7,,,7/4"
    cor6 := "7/6,6/7"
    cor7 := "0/7,7/0"
    cor8 := "2/1,4/7,,,7/4"
    cor9 := "7/7,7/7"
 ENDIF
 IF VIDEO="BADEGA"
    cor0 := cor1 := cor2 := cor3 := cor4 := cor5 := cor6 := "7+/0,0/7"
    cor7 := cor8 := "0/7,7+/0"
    cor9 := "7/7,7/7"
 ENDIF
 IF VIDEO="VGA"
    box0 = "ษอปบผอศบ "
    box1 = "ีอธณพอิณ "
    box2 = "ฺฤฟณูฤภณ "
    box3 = "อออ อออ  "
    cor0 := "7/0,0/7"
    cor1 := "7/1"
    cor2 := "15/4"
    cor3 := "15/7,15/1"
    cor4 := "15/3"
    cor5 := "1/3,15/1,,,15/7"
    cor6 := "15/4,4/7"
    cor7 := "15/4"
    cor8 := "14/4,15/0,,,15/7"
    cor9 := "7/7,7/7"
 ENDIF
*ฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤ


PUBLIC op1[6],tlMens,v_sd_ok

SAVE SCREEN
CLEAR
USE CLSCAD03  ALIAS PAR  NEW
v_sd_ok := PAR->SHUT_D_OK  ;  PAR->SHUT_D_OK := .F.
USE
SETCOLOR(cor1)
@ 01,00 SAY "ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป"
@ 02,00 SAY "บ SISTEMA DE CONTROLE DE CLASSIFICADOS                                     B&W บ"
@ 03,00 SAY "วฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤยฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤถ"
@ 04,00 SAY "บ                                                             ณ                บ"
@ 04,40 SAY "Dir.:["+CURDIR()+"]"
@ 05,00 SAY "ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออฯออออออออออออออออผ"
@ 04,02 SAY M->nome0
SET CENTURY ON
@ 04,64 SAY DTOC(DATE()) + " " + DSEM[DOW(DATE())]
SET CENTURY OFF
SETCOLOR(cor0)
@ 07,00 SAY REPL("ฤ",80)
@ 23,00 SAY REPL("ฤ",80)
MENS1("")

DEF_MAT()

tam=LEN(mat0)

FOR i=1 TO tam
   col=((i-1)*14)+1
   @ 06,col SAY mat0[i]
NEXT

AFILL(op1,1)
STORE 1 TO op0,op2,optemp
DO WHILE .T.
   SETCOLOR(cor3)
   DO WHILE op2<>0
      tam0 := LEN( matriz0 := mat1[op0] )
      col=((op0-1)*14)+1
      tla0 := SAVESCREEN(06,col-1,08+tam0,col+21)
      @ 06,col SAY mat0[op0]
      @ 07,col-1,08+tam0,col+21 BOX box2
      DO WHILE op2 = op0
         MENS1("ESC - Retorna ao DOS")
         optemp := ACHOICE(08,col,07+tam0,col+20,matriz0,.T.,.F.,op1[op0])
         op1[op0] := IIF(optemp<>0,optemp,op1[op0])
         op2 := IIF(LASTKEY()=K_LEFT,op0-1,op2)
         op2 := IIF(op2<1,tam,op2)
         op2 := IIF(LASTKEY()=K_RIGHT,op0+1,op2)
         op2 := IIF(op2>tam,1,op2)
         op2 := IIF(LASTKEY()=K_ESC,0,op2)
         MENS1("")
         IF op2 # 0 .AND. optemp # 0
            DO CASE
               CASE op2 = 1 .AND. optemp = 1
                  DO SECOES
               CASE op2 = 1 .AND. optemp = 2
                  DO SUB_SECOES
               CASE op2 = 1 .AND. optemp = 3
                  DO PARAMETROS

               CASE op2 = 2 .AND. optemp = 1
                  DO CLASSIFICADOS
               CASE op2 = 2 .AND. optemp = 2
                  DO CLASSIFONE

*               CASE op2 = 3 .AND. optemp = 1
*                  DO LST_SECOES
*               CASE op2 = 3 .AND. optemp = 2
*                  DO LST_CLASS
               CASE op2 = 3 .AND. optemp = 3
                  DO LST_CLF
               CASE op2 = 3 .AND. optemp = 4
                  DO CLF_DSK
               CASE op2 = 3 .AND. optemp = 5
                  DO GERA_CLASS

               CASE op2 = 4 .AND. optemp = 1
                  DO REORG_FILES
               CASE op2 = 4 .AND. optemp = 2
                  DO MESCLA
               CASE op2 = 4 .AND. optemp = 3
                  DO COPIA_SPL
            OTHERWISE
              *
               SETCOLOR(cor1)
               tl9=SAVESCREEN(10,15,15,62)
               @ 10,15,15,62 BOX box0
               @ 12,18 SAY "<< "+mat0[op2]+" / "+mat1[op2,optemp]+" >>"
               @ 13,18 SAY "** Opo ainda no implementada ..."
               INKEY(0)
               RESTSCREEN(10,15,15,62,tl9)
              *
            ENDCASE
            SETCOLOR(cor3)
         ENDIF
      ENDDO

      RESTSCREEN(06,col-1,08+tam0,col+21,tla0)
      op0=IIF(op2<>0,op2,op0)
   ENDDO

   IF CONFIRMA("Sai do Sistema","N")
      EXIT
   ENDIF
   op2=op0
ENDDO

USE CLSCAD03  ALIAS PAR  NEW  ;  PAR->SHUT_D_OK := .T.  ;  USE
RESTORE SCREEN
SETCURSOR(1)
RETURN
*****  Fim de Programa


*อออออออออออออออออออออออออออออออออออออออ Define Matrizes
FUNCTION DEF_MAT ( cad )

PUBLIC mat0[4],mat1[4]
mat0 := { " CADASTROS "     , ;
          " MOVIMENTOS "    , ;
          " LISTAGENS "     , ;
          " FERRAMENTAS "      }

mat1[1]={ "Se”es"       , ;
          "Sub-Se”es"   , ;
          "Parametros"      }

mat1[2]={ "Classificados"  , ;
          "Classifone"        }

mat1[3]={ "List.Se”es"         , ;
          "List.Classificados"  , ;
          "List.Classifone"     , ;
          "Classifone/Diskette" , ;
          "Gera Classificados"     }

mat1[4]={ "Reorg.Arquivos"   , ;
          "Mescla CLASS2"    , ;
          "Copia TXT's p/B:"    }

VERIF_NTX("CLSCAD01","CLS1I01","CODIGO")
VERIF_NTX("CLSCAD01","CLS2I01","NOME")

VERIF_NTX("CLSCAD02","CLS1I02","STR(SECAO)+STR(CODIGO)")

VERIF_NTX("CLSMOV10","CLS1I10","CODIGO")
VERIF_NTX("CLSMOV10","CLS2I10","ESPEC+ATIVO+STR(SECAO)+STR(SUB_SECAO)+CABEC")
VERIF_NTX("CLSMOV10","CLS3I10","DTOS(DT_INICIO)+STR(CODIGO)")

VERIF_NTX("CLSMOV11","CLS1I11","STR(TIPO)+STR(CODIGO)")
VERIF_NTX("CLSMOV11","CLS2I11","DTOS(DATA)+STR(CODIGO)")
VERIF_NTX("CLSMOV11","CLS3I11","FONE+DTOS(DATA)+STR(CODIGO)")

RETURN


*อออออออออออออออออออออออออออออออออออออออ Fun”es Gerais

FUNCTION MENS1 ( mensagem , tp )
LOCAL l := ROW(),c := COL(),cor_ant := SETCOLOR(cor0),curs_ant := SETCURSOR(0)
tp := IIF(PCOUNT()<2,0,tp)
IF tp = 0
   tlMens := SAVESCREEN(24,00,24,79)
   @ 24,00 SAY PADC(mensagem,80,"ฐ") COLOR "W+"
 ELSE
   RESTSCREEN(24,00,24,79,tlMens)
ENDIF
SETCOLOR(cor_ant)  ;  SETCURSOR(curs_ant)  ;  SETPOS(l,c)
RETURN


FUNCTION CONFIRMA ( compl,ok )
LOCAL l := ROW(),c := COL(),cor_ant := SETCOLOR(cor0),curs_ant := SETCURSOR(1),;
      conf_ant := SET(_SET_CONFIRM,.F.),mens,col
ok := IIF(PCOUNT()<2," ",ok)
MENS1(mens := compl+" (S/N) ?")
col := INT(LEN(mens)/2)+41
@ 24,col GET ok PICT "!" VALID ok $ "SN" COLOR cor2
SET ESCAPE ON ; READ ; SET ESCAPE OFF
MENS1("")
SET(_SET_CONFIRM,conf_ant)
SETCOLOR(cor_ant)  ;  SETCURSOR(curs_ant)  ;  SETPOS(l,c)
RETURN( (ok="S") .AND. (LASTKEY() <> 27) )


FUNCTION VERIF_NTX ( filename,indexname,key )
IF ! FILE(indexname+".NTX") .OR. ! v_sd_ok
  MENS1("Aguarde ... Criando indice ["+indexname+"] do arquivo ["+filename+"]")
  USE &filename NEW
  INDEX ON &key TO &indexname
  USE
  MENS1("")
ENDIF
RETURN


FUNCTION VERIF_COD ( cod,lin0,col0,tp )
PRIVATE cor_ant,st0

SEEK cod
IF ! FOUND()
   APPEND BLANK
   MENS1("INCLUSO  |  F10-Sai")
   st0 = 0
   @ lin0,col0 SAY " INCLUSO " COLOR cor2
 ELSE
   IF tp = 0
      MENS1("ALTERA€O  |  PGUP-Anterior  |  PGDN-Prขximo  |  F9-Deleta  |  F10-Sai")
    ELSE
      MENS1("ALTERA€O  |  F9-Deleta  |  F10-Sai")
   ENDIF
   st0 = 1
ENDIF

RETURN(st0)


FUNCTION FUNC09
del0 := .T.
KEYBOARD(CHR(K_CTRL_W))
RETURN


FUNCTION DELET_COD
LOCAL ok,cor_ant,log := .F.,curs_ant := SETCURSOR(1)

cor_ant=SETCOLOR(cor0)
ok = " "
MENS1("Deleta Registro (S/N) ?")
@ 24,52 GET ok PICT "!" VALID ok $ "SN" COLOR cor2
SET ESCAPE ON ; READ ; SET ESCAPE OFF
MENS1("")
IF ok = "S" .AND. LASTKEY() # K_ESC
   DELETE  ;  log=.T.
ENDIF
SETCOLOR(cor_ant)  ;  SETCURSOR(curs_ant)

RETURN(log)


FUNCTION MAT_TP (i)
RETURN(SUBSTR(PAR->TIPOS,i*10+1,10))

FUNCTION MAT_TP_OBS (i)
RETURN(SUBSTR(PAR->TIPO_OBS,i*3+1,3))


FUNCTION AC_INS ( a )
IF a=1
   InsSalva := SETKEY(K_INS)
   curs2_ant := SETCURSOR()
   SETKEY(K_INS, { || SETCURSOR( IF(READINSERT(!READINSERT()) , 1, 2) ) })
   SETCURSOR(IF(READINSERT(), 2, 1))
 ELSE
   SETCURSOR(curs2_ant)
   SETKEY(K_INS, InsSalva)
ENDIF
RETURN


FUNCTION CAB80
IF ++pag > 1  ;  EJECT  ;  ENDIF
? ""+TRC_80_2
? " SCA - Sistema de Controle de Classificados         Emisso: "+DTOC(DATE());
  +"  Pag: "+STRZERO(pag,3)
? cab1
? PADC(cab2,80,"-")
? cab3
? TRC_80_2
lin := 0
RETURN


FUNCTION CAB130
IF ++pag > 1  ;  EJECT  ;  ENDIF
? IIF(form0=1,"","")+TRC_130_2
? PADR(" SCA - Sistema de Controle de Classificados",100)+;
  " Emisso: "+DTOC(DATE())+"    Pag: "+STRZERO(pag,3)
? cab1
? PADC(cab2,131,"-")
? cab3
? TRC_130_2
lin := 0
RETURN


*อออออออออออออออออออออออออออออออออออออออ Cadastro de Se”es
PROCEDURE SECOES

PRIVATE cod,tla1,tla2,st,curs_ant,curs2_ant,del0,lk,curs_ant,InsSalva,ord0

SETCOLOR(cor4)
tla1=SAVESCREEN(05,10,12,60)
@ 05,10,12,60 BOX box1
@ 06,11 SAY " ๐๐ CADASTRO DE SE€ES ๐๐"
@ 07,11 SAY REPLICATE("ฤ",49)
@ 08,11 SAY " CODIGO.....:"
@ 10,11 SAY " Nome.......:"
tla2=SAVESCREEN(05,10,12,60)
SETCOLOR(cor5)

USE CLSCAD01 INDEX CLS1I01, CLS2I01  ALIAS SEC  NEW
USE CLSCAD02 INDEX CLS1I02  ALIAS SBS  NEW
USE CLSCAD03  ALIAS PAR NEW
curs_ant := SETCURSOR(1)
SELE SEC
DO WHILE .T.
   SEC->(DBSETORDER(1))
   SET KEY K_F2 TO VE_SEC
   SET KEY K_F3 TO VE_SEC
   MENS1("Cod=0/ESC-Retorna | Consultas: F2-Codigo, F3-Nome | F10-Inclui")
   cod := 0  ;  del0 := .F.
   @ 08,25 GET cod PICT "999" VALID cod>=0
   SET ESCAPE ON ; READ ; SET ESCAPE OFF
   lk := LASTKEY()
   SET KEY K_F2 TO
   SET KEY K_F3 TO
   ord0 := SEC->(INDEXORD())  ;  SEC->(DBSETORDER(1))
   MENS1("")
   cod := IIF(lk<>K_CTRL_W,cod,PAR->SEC_PROX)
   @ 08,25 SAY cod PICT "999"
   IF cod = 0 .OR. lk = 27
      EXIT
   ENDIF
   IF cod > PAR->SEC_PROX  ;  LOOP  ;  ENDIF

   st=VERIF_COD(cod,08,33,0)
   IF st = 0
      SEC->CODIGO := cod
   ENDIF
   SEC->(DBSETORDER(ord0))
   @ 10,25 GET NOME
   SEC_SKIP(0)
   IF st = 1
      SET KEY K_F9 TO FUNC09
      SET KEY K_PGUP TO SEC_SKIP
      SET KEY K_PGDN TO SEC_SKIP
   ENDIF
   AC_INS(1)
   READ
   AC_INS(0)
   SET KEY K_PGUP TO
   SET KEY K_PGDN TO
   SET KEY K_F9 TO
   MENS1("")
   IF st = 0
      IF ! CONFIRMA("Confirma Incluso","S")
         DELETE
       ELSE
         PAR->SEC_PROX := PAR->SEC_PROX+IIF(cod<>PAR->SEC_PROX,0,1)
      ENDIF
   ENDIF
   IF del0  ;  DELET_COD()  ;  ENDIF
   RESTSCREEN(05,10,12,60,tla2)
ENDDO

SETCURSOR(curs_ant)
CLOSE DATABASES
MENS1("")
RESTSCREEN(05,10,12,60,tla1)
RETURN


FUNCTION SEC_SKIP
LOCAL curs_ant, lk := IIF(PCOUNT()<>1,LASTKEY(),0), i
FOR i := 1 TO LEN(GetList)
    IF GetList[i]:PostBlock <> NIL .AND. GetList[i]:hasFocus
       IF ! EVAL(GetList[i]:PostBlock)  ;  RETURN  ;  ENDIF
    ENDIF
NEXT
curs_ant := SETCURSOR(0)
DBSKIP(IIF(lk = K_PGUP,-1,IIF(lk = K_PGDN,1,0)))
IF EOF()  ;  DBGOBOTTOM()  ;  ENDIF
@ 08,25 SAY SEC->CODIGO PICT "999"
AEVAL(GetList,{ |g| g:display() })
SETCURSOR(curs_ant)
RETURN


FUNCTION VE_SEC
PRIVATE tla4,desc0,lk,GetList := {}
lk=LASTKEY()
cmp0={ "CODIGO" , "NOME" }
cab0={ "Cod." , "Nome" }

SET KEY K_F2 TO
SET KEY K_F3 TO
SET ORDER TO -lk
tla4=SAVESCREEN(04,22,22,58)
cor_ant=SETCOLOR(cor6)
@ 04,22,22,58 BOX "ÜÜÜÝ฿฿฿Þ "
IF lk=-1
   desc0:=0 ; @ 06,24 SAY "Codigo:" GET desc0 PICT "999"
 ELSEIF lk=-2
   desc0:=SPACE(20) ; @ 06,24 SAY "Nome:" GET desc0
ENDIF
READ
DBSEEK(desc0,.T.)
DBEDIT(05,23,21,57,cmp0,.T.,.F.,cab0,"Ü","Ý")
cod=CODIGO
RESTSCREEN(04,22,22,58,tla4)
SET KEY K_F2 TO VE_SEC
SET KEY K_F3 TO VE_SEC
SETCOLOR(cor_ant)
RETURN("")


*อออออออออออออออออออออออออออออออออออออออ Cadastro de Sub-Se”es
PROCEDURE SUB_SECOES

PRIVATE cod,tla1,tla2,tla3,st,curs_ant,curs2_ant,lk,del0,curs_ant,InsSalva

SETCOLOR(cor4)
tla1=SAVESCREEN(06,10,15,60)
@ 06,10,15,60 BOX box1
@ 07,11 SAY " ๐๐ CADASTRO DE SUB-SE€ES ๐๐"
@ 08,11 SAY REPLICATE("ฤ",49)
@ 09,11 SAY " Seo.......:"
@ 11,11 SAY " SUB-SE€O Nง:"
@ 12,11 SAY " Nome........:"
@ 13,11 SAY " Carac.Cab...:"
tla2=SAVESCREEN(06,10,15,60)
SETCOLOR(cor5)

USE CLSCAD01 INDEX CLS1I01, CLS2I01  ALIAS SEC  NEW
USE CLSCAD02 INDEX CLS1I02  ALIAS SBS  NEW
curs_ant := SETCURSOR(1)
SELE SEC
DO WHILE .T.
   RESTSCREEN(06,10,15,60,tla2)
   SELE SEC
   SET KEY K_F2 TO VE_SEC
   SET KEY K_F3 TO VE_SEC
   MENS1("Codigo = 0 ou ESC - Retorna  |  F2-Cons.p/Codigo  |  F3-Cons.p/Nome")
   cod := 0
   @ 09,26 GET cod PICT "999" VALID cod>=0
   SET ESCAPE ON ; READ ; SET ESCAPE OFF
   lk := LASTKEY()
   SET KEY K_F2 TO
   SET KEY K_F3 TO
   MENS1("")
   @ 09,26 SAY cod PICT "999"
   SEC->(DBSETORDER(1))
   IF cod==0 .OR. lk=27  ;  EXIT  ;  ENDIF
   IF ! SEC->(DBSEEK(cod))  ;  LOOP  ;  ENDIF
   @ 09,31 SAY SEC->NOME

   SELE SBS
   SET KEY K_F2 TO VE_SBS
   MENS1("Codigo = 0 ou ESC - Retorna  |  F2-Consulta Sub-Se”es")
   cod := 0  ;  del0 := .F.
   @ 11,26 GET cod PICT "999" VALID cod>=0
   SET ESCAPE ON ; READ ; SET ESCAPE OFF
   SET KEY K_F2 TO
   MENS1("")
   @ 11,26 SAY cod PICT "999"
   IF cod==0 .OR. LASTKEY()=27  ;  LOOP  ;  ENDIF
   st=VERIF_COD(STR(SEC->CODIGO)+STR(cod,3),11,33,0)
   IF st = 0
      SBS->SECAO := SEC->CODIGO
      SBS->CODIGO := cod
*-------------------------------------\\
      SBS->CAR_CAB := 20
*-------------------------------------//
   ENDIF
   @ 12,26 GET NOME
   @ 13,26 GET CAR_CAB PICT "99" VALID CAR_CAB > 10 .AND. CAR_CAB <= 20
   IF st = 1
      SET KEY K_F9 TO FUNC09
      SET KEY K_PGUP TO SBS_SKIP
      SET KEY K_PGDN TO SBS_SKIP
   ENDIF
   AC_INS(1)
   READ
   AC_INS(0)
   SET KEY K_PGUP TO
   SET KEY K_PGDN TO
   SET KEY K_F9 TO
   MENS1("")
   IF st = 0
      IF ! CONFIRMA("Confirma Incluso","S")
         DELETE
      ENDIF
   ENDIF
   IF del0  ;  DELET_COD()  ;  ENDIF
ENDDO

SETCURSOR(curs_ant)
CLOSE DATABASES
MENS1("")
RESTSCREEN(06,10,15,60,tla1)
RETURN


FUNCTION SBS_SKIP
LOCAL curs_ant, lk := IIF(PCOUNT()<>1,LASTKEY(),0), i, rec_ant := SBS->(RECNO())
FOR i := 1 TO LEN(GetList)
    IF GetList[i]:PostBlock <> NIL .AND. GetList[i]:hasFocus
       IF ! EVAL(GetList[i]:PostBlock)  ;  RETURN  ;  ENDIF
    ENDIF
NEXT
curs_ant := SETCURSOR(0)
DBSKIP(IIF(lk = K_PGUP,-1,IIF(lk = K_PGDN,1,0)))
IF EOF()  ;  DBGOBOTTOM()  ;  ENDIF
IF SBS->SECAO # SEC->CODIGO  ;  GO rec_ant  ;  ENDIF
@ 11,26 SAY SBS->CODIGO PICT "999"
AEVAL(GetList,{ |g| g:display() })
SETCURSOR(curs_ant)
RETURN


FUNCTION VE_SBS
PRIVATE tla4,cor_ant
cmp0={ "CODIGO" , "NOME" , "CAR_CAB" }
pic0={ "" , "" , "99" }
cab0={ "Cod." , "Nome" , "CarCab" }

IF SBS->(DBSEEK(STR(SEC->CODIGO)))
   tla4 := SAVESCREEN(04,20,21,60)
   cor_ant=SETCOLOR(cor6)
   SET KEY K_F2 TO
   SET FILTER TO SBS->SECAO = SEC->CODIGO
   @ 04,20,21,60 BOX "ÜÜÜÝ฿฿฿Þ "
   DBEDIT(05,21,20,59,cmp0,.T.,pic0,cab0,"Ü","Ý")
   cod := CODIGO
   SET FILTER TO
   SET KEY K_F2 TO VE_SBS
   SETCOLOR(cor_ant)
   RESTSCREEN(04,20,21,60,tla4)
ENDIF
RETURN


*อออออออออออออออออออออออออออออออออออออออ Cadastro de Parametros
PROCEDURE PARAMETROS

PRIVATE tla1,i,j,vTipos,vTpObs,tp[10],tpObs[10],curs_ant

SETCOLOR(cor4)
tla1=SAVESCREEN(06,10,16,66)
@ 06,10,16,66 BOX box1
@ 07,11 SAY " ๐๐ CADASTRO DE PARAMETROS ๐๐"
@ 08,11 SAY REPLICATE("ฤ",55)
@ 09,11 SAY " Prox.Cod.Sec..:                   ETIQUETAS"
@ 10,11 SAY " Prox.Cod.Clfn.:                   Carreiras.:"
@ 11,11 SAY " CLASSIFICADOS                     Linhas....:"
@ 12,11 SAY " Prox.Cod.Class:                   Colunas...:"
@ 13,11 SAY " Limite Linhas.:                   CLASSIFONE "
@ 14,11 SAY " Valor at lim.:                   Cidade....:"
@ 15,11 SAY " Lin.alm lim..:                   Cod.Entrad:"
SETCOLOR(cor5)

USE CLSCAD03  ALIAS PAR  NEW
curs_ant := SETCURSOR(1)

MENS1("Tecle F10 para sair")
DO WHILE LASTKEY()<>023
   @ 09,28 GET SEC_PROX VALID SEC_PROX >= 1
   @ 10,28 GET CLF_PROX VALID CLF_PROX >= 1
   @ 12,28 GET CLS_PROX VALID CLS_PROX >= 1
   @ 13,28 GET CLS_LIN VALID CLS_LIN >= 1
   @ 14,28 GET CLS_VAL0 PICT "@E 9,999,999.99" VALID CLS_VAL0 >= 0
   @ 15,28 GET CLS_VAL1 PICT "@E 9,999,999.99" VALID CLS_VAL1 >= 0
   @ 10,58 GET ET_CARR VALID ET_CARR>=1.AND.ET_CARR<=5
   @ 11,58 GET ET_LIN VALID ET_LIN>=5.AND.ET_LIN<=15
   @ 12,58 GET ET_COL VALID ET_COL>=31
   @ 14,58 GET CLF_CIDADE PICT "999"
   @ 15,58 GET CLF_CD_ENT PICT "999"
   READ
ENDDO

SETCURSOR(curs_ant)
USE
MENS1("")
RESTSCREEN(06,10,16,66,tla1)
RETURN


*อออออออออออออออออออออออออออออออออออออออ Lanamento de Classificados
PROCEDURE CLASSIFICADOS

PRIVATE cod,tla1,tla2,tla3,st,curs_ant,curs2_ant,del0,curs_ant,cor_ant,;
        InsSalva,cod,val0,val1,ord0

cod := 0

SETCOLOR(cor4)
tla1=SAVESCREEN(02,04,23,78)
@ 02,04,23,78 BOX box1
@ 05,45 TO 22,45
@ 03,05 SAY " ๐๐ LAN€AMENTO DE CLASSIFICADOS ๐๐"
@ 04,05 SAY REPLICATE("ฤ",73)
@ 05,05 SAY " CODIGO......:"
@ 06,05 SAY " Tipo........:   (1-Normal,2-Classifone)"
@ 07,05 SAY " SE€O.......:"
@ 08,05 SAY " SUB-SE€O...:"
@ 09,05 SAY " Periodo.....: De          a"
@ 10,05 SAY " Especial....:   (X-p/Especial)"
@ 11,05 SAY " ๐ Cabealho ๐"
@ 13,05 SAY " ๐ Texto ๐"
tla2=SAVESCREEN(02,04,23,78)
tla3=SAVESCREEN(05,46,22,77)
SETCOLOR(cor5)

USE CLSCAD01 INDEX CLS1I01, CLS2I01  ALIAS SEC  NEW
USE CLSCAD02 INDEX CLS1I02  ALIAS SBS  NEW
USE CLSCAD03  ALIAS PAR NEW
USE CLSMOV10 INDEX CLS1I10, CLS2I10, CLS3I10  ALIAS CLA  NEW
USE CLSMOV11 INDEX CLS1I11, CLS2I11, CLS3I11  ALIAS CLF  NEW
SELE CLA
IF PAR->DT_ESPEC # DATE()
   CLA->(DBSETORDER(2))
   DO WHILE CLA->(DBSEEK("X"))
      CLA->ESPEC := " "
   ENDDO
   PAR->DT_ESPEC := DATE()
ENDIF
curs_ant := SETCURSOR(1)

DO WHILE .T.
   RESTSCREEN(02,04,23,78,tla2)
   SET KEY K_F2 TO VE_CLA  ;  SET KEY K_F3 TO VE_CLA
   MENS1("Cod=0/ESC-Retorna | F2-Cons.p/Codigo | F3-Cons.Especiais | F10-Inclui")
   del0 := .F.
   @ 05,20 GET cod PICT "999999" VALID cod>=0
   SET ESCAPE ON ; READ ; SET ESCAPE OFF
   lk := LASTKEY()
   SET KEY K_F2 TO  ;  SET KEY K_F3 TO
   CLA->(DBSETORDER(1))
   MENS1("")
   cod := IIF(lk<>K_CTRL_W,cod,PAR->CLS_PROX)
   @ 05,20 SAY cod PICT "999999"
   IF cod = 0 .OR. lk = 27  ;  EXIT  ;  ENDIF
   IF cod > PAR->CLS_PROX  ;  LOOP  ;  ENDIF

   st=VERIF_COD(cod,05,30,1)
   IF st = 0
      CLA->CODIGO := cod
      CLA->DT_INICIO := CLA->DT_FIM := DATE()+1
      CLA->TIPO := 1
   ENDIF
   IF st = 1
      SET KEY K_F9 TO FUNC09
   ENDIF
   CLA->ATIVO := "*"
   ID_TIPO(TIPO)
   ID_SECAO(SECAO,07,24)
   ID_SUB_SECAO(SUB_SECAO,08,24)
   MEMOEDIT(CLA->TEXTO,14,05,22,44,.F.,.F.)
   @ 12,05 SAY CABEC
   @ 06,20 GET TIPO VALID ID_TIPO(TIPO)
   @ 07,20 GET SECAO VALID ID_SECAO(SECAO,07,24).AND.ID_SUB_SECAO(SUB_SECAO,08,24,.T.)
   @ 08,20 GET SUB_SECAO VALID ID_SUB_SECAO(SUB_SECAO,08,24)
   @ 09,23 GET DT_INICIO
   @ 09,34 GET DT_FIM VALID DT_FIM >= DT_INICIO
   @ 10,20 GET ESPEC VALID ESPEC $ " X"
   AC_INS(1)
   READ
   IF (TIPO=0) .OR. (SECAO=0) .OR. (SUB_SECAO=0)
      ID_CLF(0)  ;  DELETE  ;  LOOP
   ENDIF
   DO WHILE .T.
      SET KEY 39 TO ACENTUACAO
      SET KEY 34 TO ACENTUACAO
      SET KEY 96 TO ACENTUACAO
      SET KEY 126 TO ACENTUACAO
      SET KEY 94 TO ACENTUACAO
      SET KEY K_ALT_A TO ALT_ACENTO
      SET KEY K_ALT_O TO ALT_ACENTO
      SET KEY K_ALT_Q TO ALT_ACENTO
      SET KEY K_ALT_W TO ALT_ACENTO
      @ 12,05 GET CABEC
      READ
      IF (CABEC=SPACE(LEN(CABEC)))
         ID_CLF(0)  ;  DELETE  ;  EXIT
      ENDIF
      SET KEY K_ENTER TO KEY_OFF
      SET KEY K_ESC TO KEY_OFF
      SET KEY K_TAB TO KEY_OFF
      cor_ant := SETCOLOR(cor7)
      CLA->TEXTO := MEMOEDIT(CLA->TEXTO,14,05,22,44,.T.)
      SET KEY 39 TO
      SET KEY 34 TO
      SET KEY 96 TO
      SET KEY 126 TO
      SET KEY 94 TO
      SET KEY K_ALT_A TO
      SET KEY K_ALT_O TO
      SET KEY K_ALT_Q TO
      SET KEY K_ALT_W TO
      SET KEY K_ENTER TO
      SET KEY K_ESC TO
      SET KEY K_TAB TO
      SETCOLOR(cor_ant)
      IF LASTKEY() # 27  ;  EXIT  ;  ENDIF
   ENDDO
   IF (CABEC=SPACE(LEN(CABEC)))  ;  LOOP  ;  ENDIF
   IF TIPO = 2
      ID_CLF(2)
   ENDIF
*   val0 := PAR->CLS_VAL0
*   val1 := PAR->CLS_LIN - MLCOUNT(CLA->TEXTO,40)
*   val1 := IIF(val1<=0,0,val1 * PAR->CLS_VAL1)
*   val0 += val1
*   @ 15,46 SAY "Valor = CR$ "+TRANSFORM(val0,"@E 9,999,999.99")
   AC_INS(0)
   SET KEY K_F9 TO
   MENS1("")
   IF st = 0
      IF ! CONFIRMA("Confirma Incluso","S")
         DELETE
       ELSE
         PAR->CLS_PROX := PAR->CLS_PROX+IIF(cod<>PAR->CLS_PROX,0,1)
      ENDIF
   ENDIF
   IF del0  ;  DELET_COD()  ;  ENDIF
   COMMIT
   RESTSCREEN(02,04,23,78,tla2)
ENDDO

SETCURSOR(curs_ant)
CLOSE DATABASES
MENS1("")
RESTSCREEN(02,04,23,78,tla1)
RETURN


FUNCTION ID_TIPO (c_tipo)
IF c_tipo = 1
   RESTSCREEN(05,46,22,77,tla3)
   ID_CLF(0)
 ELSEIF c_tipo = 2
   cor_ant := SETCOLOR(cor4)
   @ 05,47 SAY "๐ CLASSIFONE ๐"
   @ 06,47 SAY "Cidade:"
   @ 07,47 SAY "Fone..:"
   @ 08,47 SAY "Valor.:"
   @ 09,47 SAY "Assin.:"
   @ 10,47 SAY "Solic.:"
   @ 11,47 SAY "Confir:"
   SETCOLOR(cor_ant)
   ID_CLF(1)
ENDIF
RETURN(STR(c_tipo)$"12")

FUNCTION ID_CLF (op)
PRIVATE GetList := {}
IF op = 0
   IF CLF->(DBSEEK("1"+STR(CLA->CODIGO)))
      CLF->(DBDELETE())
   ENDIF
   RETURN
ENDIF
IF ! CLF->(DBSEEK("1"+STR(CLA->CODIGO)))
   CLF->(DBAPPEND())
   CLF->TIPO := 1
   CLF->CODIGO := CLA->CODIGO
   CLF->CIDADE := PAR->CLF_CIDADE
ENDIF
CLF->DATA := CLA->DT_INICIO - 1
@ 06,55 GET CLF->CIDADE PICT "999"
@ 07,55 GET CLF->FONE PICT "999-9999"
@ 08,55 GET CLF->VALOR PICT "@E 999,999,999.99"
@ 09,55 GET CLF->ASSINANTE
@ 10,55 GET CLF->SOLICITANT
@ 11,55 GET CLF->CONFIRMANT
IF op = 2  ;  READ  ;  ENDIF
RETURN


FUNCTION ID_SECAO (c_sec,lin,col)
LOCAL ret := (SEC->(DBSEEK(c_sec)))
@ lin,col SAY SEC->NOME
RETURN(ret)

FUNCTION ID_SUB_SECAO (c_sbs,lin,col,lg)
LOCAL ret := (SBS->(DBSEEK(STR(CLA->SECAO)+STR(c_sbs,3))))
IF PCOUNT() = 4  ;  ret := .T.  ;  ENDIF
@ lin,col SAY SBS->NOME
RETURN(ret)


FUNCTION VE_CLA
PRIVATE tla4,desc0,lk,GetList := {}
lk=LASTKEY()
cmp0={ "CODIGO" , "ESPEC", "TIPO" , "SEC->NOME" , "DT_INICIO" , "DT_FIM" , "CABEC" }
cab0={ "Cod." , "Esp", "Tipo" , "Seo" , "Periodo" , "" , "Cabealho" }

SET KEY K_F2 TO
SET KEY K_F3 TO
SET ORDER TO -lk
SET RELATION TO SECAO INTO SEC
tla4=SAVESCREEN(04,00,22,79)
cor_ant=SETCOLOR(cor6)
@ 04,00,22,79 BOX "ÜÜÜÝ฿฿฿Þ "
IF lk=-1
   desc0:=PAR->CLS_PROX - 1 ; @ 06,03 SAY "Codigo:" GET desc0 PICT "999999"
   DBSEEK(desc0,.T.)
  ELSE
   DBSEEK("X")  ;  SET FILTER TO ESPEC = "X"
   SET KEY K_UP TO KEY_OFF
   SET KEY K_PGUP TO KEY_OFF
ENDIF
READ
IF ! ( (lk = -2) .AND. CLA->(EOF()) )
   DBEDIT(05,01,21,78,cmp0,.T.,.F.,cab0,"Ü","Ý")
ENDIF
cod=CODIGO
RESTSCREEN(04,00,22,79,tla4)
SET KEY K_F2 TO VE_CLA
SET KEY K_F3 TO VE_CLA
SET RELATION TO
SET FILTER TO
SET KEY K_UP TO
SET KEY K_PGUP TO
SETCOLOR(cor_ant)
RETURN("")


FUNCTION KEY_OFF
LASTKEY()
RETURN(.F.)

FUNCTION ACENTUACAO
LOCAL lk,letra0,cod0,letra1,mat1, ac0 := { 39,34,96,126,94 },;
    mat0   :=   {"A","E","I","O","U","a","e","i","o","u","C","c","N","n"},;
    mat1_0 := { {"ม","ษ","อ","ำ","ฺ","แ","้","ํ","๓","๚","ว","็","" ,"" },;
                {"ฤ","ห","ฯ","ึ","Ü","ไ","๋","๏","๖","ü","" ,"" ,"" ,"" },;
                {"ภ","ศ","ฬ","า","ู","เ","่","์","๒","๙","" ,"" ,"" ,"" },;
                {"ร","" ,"" ,"ี","" ,"ใ","" ,"" ,"๕","" ,"" ,"" ,"ั","๑"},;
                {"ย","ส","ฮ","ิ","Û","โ","๊","๎","๔","๛","" ,"" ,"" ,"" }  }

lk := LASTKEY()  ;  mat1 := mat1_0[ASCAN(ac0,lk)]
letra := CHR(INKEY(0))   ;   cod0 := ASCAN(mat0,letra)
*letra1 := IIF(cod0>0,mat1[cod0],CHR(lk)+IIF(letra<>" ",letra,""))
letra1 := IIF(cod0>0,mat1[cod0],letra)
KEYBOARD(letra1)
RETURN(.F.)

FUNCTION ALT_ACENTO
LOCAL tecla := { K_ALT_A, K_ALT_O, K_ALT_Q, K_ALT_W },;
      carac := { "ช", "บ", "ฒ", "ณ" }
KEYBOARD( carac[ASCAN(tecla,LASTKEY())] )
RETURN(.F.)


*อออออออออออออออออออออออออออออออออออออออ Lanamento de Classifone
PROCEDURE CLASSIFONE

PRIVATE cod,tla1,tla2,st,curs_ant,curs2_ant,del0,curs_ant,cor_ant,;
        InsSalva,cod

cod := 0

SETCOLOR(cor4)
tla1=SAVESCREEN(05,14,17,60)
@ 05,14,17,60 BOX box1
@ 06,15 SAY " ๐๐ LAN€AMENTO DE CLASSIFONE ๐๐"
@ 07,15 SAY REPLICATE("ฤ",45)
@ 08,15 SAY " CODIGO:"
@ 10,15 SAY " Data..:"
@ 11,15 SAY " Cidade:"
@ 12,15 SAY " Fone..:"
@ 13,15 SAY " Valor.:"
@ 14,15 SAY " Assin.:"
@ 15,15 SAY " Solic.:"
@ 16,15 SAY " Confir:"
tla2=SAVESCREEN(05,14,17,60)
SETCOLOR(cor5)

USE CLSCAD03  ALIAS PAR NEW
USE CLSMOV11 INDEX CLS1I11, CLS2I11, CLS3I11  ALIAS CLF  NEW
curs_ant := SETCURSOR(1)

DO WHILE .T.
   RESTSCREEN(05,14,17,60,tla2)
   SET KEY K_F2 TO VE_CLF
   MENS1("Cod=0/ESC-Retorna | F2-Cons.p/Codigo | F10-Inclui")
   del0 := .F.
   @ 08,24 GET cod PICT "999999" VALID cod>=0
   SET ESCAPE ON ; READ ; SET ESCAPE OFF
   lk := LASTKEY()
   SET KEY K_F2 TO
   MENS1("")
   cod := IIF(lk<>K_CTRL_W,cod,PAR->CLF_PROX)
   @ 08,24 SAY cod PICT "999999"
   IF cod = 0 .OR. lk = 27  ;  EXIT  ;  ENDIF
   IF cod > PAR->CLF_PROX  ;  LOOP  ;  ENDIF

   st=VERIF_COD("2"+STR(cod,6),08,32,1)
   IF st = 0
      CLF->CODIGO := cod
      CLF->TIPO := 2
      CLF->DATA := DATE()
      CLF->CIDADE := PAR->CLF_CIDADE
   ENDIF
   IF st = 1
      SET KEY K_F9 TO FUNC09
   ENDIF
   @ 10,24 GET DATA
   @ 11,24 GET CIDADE PICT "999"
   @ 12,24 GET FONE PICT "999-9999"
   @ 13,24 GET VALOR PICT "@E 999,999,999.99"
   @ 14,24 GET ASSINANTE
   @ 15,24 GET SOLICITANT
   @ 16,24 GET CONFIRMANT
   AC_INS(1)
   READ
   AC_INS(0)
   SET KEY K_F9 TO
   MENS1("")
   IF st = 0
      IF ! CONFIRMA("Confirma Incluso","S")
         DELETE
       ELSE
         PAR->CLF_PROX := PAR->CLF_PROX+IIF(cod<>PAR->CLF_PROX,0,1)
      ENDIF
   ENDIF
   IF del0  ;  DELET_COD()  ;  ENDIF
   RESTSCREEN(05,14,17,60,tla2)
ENDDO

SETCURSOR(curs_ant)
CLOSE DATABASES
MENS1("")
RESTSCREEN(05,14,17,60,tla1)
RETURN


FUNCTION VE_CLF
PRIVATE tla4,desc0,lk,GetList := {}
lk=LASTKEY()
cmp0={ "CODIGO" , "DATA" , "CIDADE" , "FONE" , "VALOR" , "ASSINANTE" , ;
       "SOLICITANT" , "CONFIRMANT" }
pic0={ "999999" , "" , "" , "" , "@E 999,999,999.99" , "" , "" , "" }
cab0={ "Cod." , "Data" , "Cid." , "Fone" , "  Valor" , "Assinante" , ;
       "Solicitante" , "Confirmante" }

SET KEY K_F2 TO
SET ORDER TO -lk
tla4=SAVESCREEN(04,00,22,79)
cor_ant=SETCOLOR(cor6)
@ 04,00,22,79 BOX "ÜÜÜÝ฿฿฿Þ "
IF lk=-1
   desc0:=PAR->CLF_PROX - 1 ; @ 06,03 SAY "Codigo:" GET desc0 PICT "999999"
ENDIF
READ
DBSEEK("2"+STR(desc0,6),.T.)
DBSETFILTER( { || CLF->TIPO=2 } )
DBEDIT(05,01,21,78,cmp0,.T.,pic0,cab0,"Ü","Ý")
cod=CODIGO
DBSETFILTER()
RESTSCREEN(04,00,22,79,tla4)
SET KEY K_F2 TO VE_CLF
SET RELATION TO
SETCOLOR(cor_ant)
RETURN("")



*อออออออออออออออออออออออออออออออออออออออ Listagem de Classifone
PROCEDURE LST_CLF

PRIVATE tla1,curs_ant,ink0,tp0,dt1,dt2,tot_cid,tot_cod,tot_1,tot_2,dt0,ord0
PRIVATE pag,lin,cab1,cab2,cab3,form0

tp0 := 0
dt1 := dt2 := CTOD("")
pag := 0  ;  form0 := ord0 := 1
tot_1 := tot_2 := 0

SETCOLOR(cor4)
tla1 := SAVESCREEN(08,22,15,70)
@ 08,22,15,70 BOX box1
@ 09,23 SAY " ๐๐ LISTAGEM DE CLASSIFONE ๐๐"
@ 10,23 SAY REPLICATE("ฤ",47)
@ 11,23 SAY " Tipo......:"
@ 12,23 SAY " Ordem.....:"
@ 13,23 SAY " Periodo...:          a"
@ 14,23 SAY " Formulario:"
SETCOLOR(cor5)
curs_ant := SETCURSOR(1)

USE CLSCAD03  ALIAS PAR  NEW
USE CLSMOV10 INDEX CLS1I10  ALIAS CLA  NEW
USE CLSMOV11 INDEX CLS2I11, CLS3I11  ALIAS CLF  NEW
SET RELATION TO CODIGO INTO CLA

DO WHILE .T.
   MENS1("Tipo = 0, ESC - Retorna  |  Tipo: 1-Telems, 2-Controle")
   @ 11,36 GET tp0 PICT "9" RANGE 0,2
   SET ESCAPE ON ; READ ; SET ESCAPE OFF
   IF tp0 = 0 .OR. LASTKEY() = 27  ;  EXIT  ;  ENDIF
   @ 11,38 SAY IIF(tp0=1,"Telems","Controle")

   MENS1("Ordem: 1-p/Data, 2-p/Fone")
   @ 12,36 GET ord0 PICT "9" RANGE 1,2 WHEN tp0=2
   READ
   @ 12,38 SAY IIF(ord0=1,"p/Data","p/Fone")

   MENS1("Entre com o periodo")
   @ 13,36 GET dt1
   @ 13,47 GET dt2 VALID dt2 >= dt1
   READ

   MENS1("Formul rio: (1)-80 Col, (2)-130 Col")
   @ 14,36 GET form0 PICT "9" RANGE 1,2
   READ
   @ 14,38 SAY IIF(form0=1,"80 Col","130 Col")

   IF ! CONFIRMA("Imprime Listagem de Classifone","S")
      EXIT
   ENDIF
   SETCURSOR(curs_ant)

   MENS1("Aguarde ... Imprimindo Listagem de Classifone / ESC - Interrompe")
   SET CONSOLE OFF
   SET PRINTER ON
   SET ORDER TO ord0
   cab1 := " "+PADR(nome0,32)
   cab2 := "(( LISTAGEM DE CLASSIFONE - Controle - De "+DTOC(dt1)+" a "+;
           DTOC(dt2)+" ))"
   IF ord0 = 1
      cab3 := " Codigo  Tp Data      Cid. Fone              Valor   Assinante               Solicitante             Confirmante"
    ELSE
      cab3 := " FONE      Codigo  Tp Data      Cid.         Valor   Assinante               Solicitante             Confirmante"
   ENDIF
   IF tp0 = 1  ;  CAB_CLF()  ;  ELSE  ;  CAB130()  ;  ENDIF
   IF ord0 = 1
      CLF->(DBSEEK(dt1,.T.))
    ELSE
      CLF->(DBGOTOP())
   ENDIF

   DO WHILE (ink0 := INKEY()) # K_ESC .AND. tp0 = 1 .AND. ;
        ! CLF->(EOF()) .AND. CLF->DATA <= dt2
      IF lin > 5  ;  CAB_CLF()  ;  ENDIF
      dt0 := IIF(CLF->TIPO=1,DTOC(CLA->DT_INICIO),DTOC(CLF->DATA+1))
      ? "ณ        ณ             ณ    ณ            ณ         ณ    ณ           ณ               "+;
        "ณ Data do Pedido.....: "+DTOC(CLF->DATA)+"              ณ"
      ? "ณ        ณ             ณ    ณ            ณ         ณ    ณ           ณ               "+;
        "ณ Nome do Assinante..: "+CLF->ASSINANTE+"ณ"
      ? "ณ        ณ             ณ    ณ            ณ         ณ    ณ           ณ               "+;
        "ณ Nome do Confirmante: "+CLF->SOLICITANT+"ณ"
      ? "ณ        ณ             ณ    ณ            ณ  ณ  ณ   ณ    ณ     ณ     ณ               ณ Valor da Chamada...:                       ณ"
      ? "ณ  "+CLF->CIDADE+"   ณ  "+CLF->FONE+"   ณ    ณ  "+dt0+;
        "  ณ"+TRANSFORM(PAR->CLF_CD_ENT,"@R  Xณ Xณ X")+" ณ  1 ณXX/XXณXX/XXณ "+TRANSFORM(CLF->VALOR,"@E 99,999,999.99")+;
           " ณ Valor do Classifone: "+TRANSFORM(CLF->VALOR,"@E 999,999,999.99")+"        ณ"
      ? "รฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤลฤฤมฤฤมฤฤฤลฤฤฤฤลฤฤฤฤฤมฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤลฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤด"
      tot_cid += VAL(CLF->CIDADE)
      tot_cod += VAL(PAR->CLF_CD_ENT)
      tot_1 += CLF->VALOR
      tot_2 += CLF->VALOR
      lin ++
      CLF->(DBSKIP())
   ENDDO

   DO WHILE (ink0 := INKEY()) # K_ESC .AND. tp0 = 2 .AND. ord0=1 .AND. ;
        ! CLF->(EOF()) .AND. CLF->DATA <= dt2
      IF lin > 55  ;  CAB130()  ;  ENDIF
      dt0 := IIF(CLF->TIPO=1,DTOC(CLA->DT_INICIO),DTOC(CLF->DATA+1))
      ? " "+STR(CLF->CODIGO)+"  "+STR(CLF->TIPO)+"  "+DTOC(CLF->DATA)+"  "+;
        CLF->CIDADE+"  "+CLF->FONE+"  "+TRANSFORM(CLF->VALOR,"@E 999,999,999.99  ")+;
        CLF->ASSINANTE+"  "+CLF->SOLICITANT+"  "+CLF->CONFIRMANT
      tot_1 += CLF->VALOR
      lin ++
      CLF->(DBSKIP())
   ENDDO

   DO WHILE (ink0 := INKEY()) # K_ESC .AND. tp0 = 2 .AND. ord0=2 .AND. ;
        ! CLF->(EOF())
      IF CLF->DATA<dt1.OR.CLF->DATA>dt2 ; CLF->(DBSKIP()) ; LOOP ; ENDIF
      IF lin > 55  ;  CAB130()  ;  ENDIF
      dt0 := IIF(CLF->TIPO=1,DTOC(CLA->DT_INICIO),DTOC(CLF->DATA+1))
      ? " "+CLF->FONE+"  "+STR(CLF->CODIGO)+"  "+STR(CLF->TIPO)+"  "+;
        DTOC(CLF->DATA)+"  "+CLF->CIDADE+"  "+;
        TRANSFORM(CLF->VALOR,"@E 999,999,999.99  ")+;
        CLF->ASSINANTE+"  "+CLF->SOLICITANT+"  "+CLF->CONFIRMANT
      tot_1 += CLF->VALOR
      lin ++
      CLF->(DBSKIP())
   ENDDO

   IF ink0 = K_ESC
      ? "*** Listagem interrompida por ESC ... "
     ELSE
       IF tp0 = 1
          BOT_CLF(.T.)
        ELSE
          ? REPLICATE("-",131)
          ? PADR("   *** TOTAL -->>",35)+TRANSFORM(tot_1,"@E 9,999,999,999.99")
       ENDIF
   ENDIF
   EJECT
   SET CONSOLE ON
   SET PRINT OFF
   EXIT
ENDDO

SETCURSOR(curs_ant)
CLOSE DATABASES
RESTSCREEN(08,22,15,70,tla1)
MENS1("")
RETURN


FUNCTION BOT_CLF ( fim )
PRIVATE txt_fim,txt_tot_cod
txt_fim := IIF(fim,"TOTAL GERAL: "+TRANSFORM(tot_2,"@E 999,999,999.99"),SPACE(27))
txt_tot_cod := TRANSFORM(STR(tot_cod,4),"@R XณXณXณX")
IF ++pag > 1
   ? "ณ TOTAL  ณ             ณ    ณ            ณ  TOTAL  ณ    ณTOTALณTOTALณ      TOTAL    ณ                                            ณ"
   ? "ณ "+STRZERO(tot_cid,4)+"   ณ             ณ    ณ            ณ "+txt_tot_cod+" ณ    ณXX/XXณXX/XXณ "+;
       TRANSFORM(tot_1,"@E 99,999,999.99")+" ณ      "+txt_fim+"           ณ"
   ? "ิออออออออฯอออออออออออออฯออออฯออออออออออออฯออฯอฯอฯออฯออออฯอออออฯอออออฯอออออออออออออออฯออออออออออออออออออออออออออออออออออออออออออออพ"
ENDIF
RETURN

FUNCTION CAB_CLF ( fim )
IF ++pag > 1  ;  BOT_CLF(.F.)  ;  EJECT  ;  ENDIF

? IIF(form0=1,"","")+;
  "ีอออออออออออออออออออออออัอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออัออออออออออออัอออออออออออธ"
? "ณ    EDITORA JORNAL     ณ                                                                               ณ  REGISTRO  ณ  L O T E  ณ"
? "ณ   O PROGRESSO LTDA    ณ      BOLETIM DE VALORES - CLASSIFONE           ณ      1     ณ   ณ   ณ   ณ"
? "ฦออออออออัอออออออออออออัฯอออัออออออออออออัอออออออออัออออัอออออออออออัอออออออออออออออัอออออออออออออออออออฯออออออออออออฯอออฯอออฯอออต"
? "ณ CIDADE ณ Nง TELEFONE ณ DV ณ    DATA    ณ CODIGO  ณ DP ณ  PARCELA  ณ     VALOR     ณ OUTRAS INFORMA€ES                         ณ"
? "ณ        ณ             ณ    ณ PUBLICA€O ณ ENTRADA ณ    ณFINAL INIC.ณ               ณ                                            ณ"
? "ฦออออออออุอออออออออออออุออออุออออออออออออุอออออออออุออออุอออออออออออุอออออออออออออออุออออออออออออออออออออออออออออออออออออออออออออต"

lin := tot_cid := tot_cod := tot_1 := 0
RETURN


*อออออออออออออออออออออออออออออออออออออออ Classifone / Diskette
PROCEDURE CLF_DSK

PRIVATE tla1,curs_ant,ink0,dt1,dt2,tot0,qt0,dt0,mes0,mes1,mesX,;
        ent := CHR(13)+CHR(10),hjx,dtx,totx,qtx,linha

mes0 := "  /  "
dt1 := dt2 := CTOD("")
tot0 := qt0 := 0

SETCOLOR(cor4)
tla1 := SAVESCREEN(08,22,12,70)
@ 08,22,12,70 BOX box1
@ 09,23 SAY " ๐๐ CLASSIFONE / DISKETTE ๐๐"
@ 10,23 SAY REPLICATE("ฤ",47)
@ 11,23 SAY " MES....:"
SETCOLOR(cor5)
curs_ant := SETCURSOR(1)

USE CLSMOV11 INDEX CLS2I11  ALIAS CLF  NEW

DO WHILE .T.
   MENS1("Entre com o periodo")
   @ 11,33 GET mes0 PICT "99/99" VALID VAL_MES(mes0)
   READ

   mes1 := VAL(LEFT(mes0,2))
   dt1 := CTOD("01/"+mes0)
   dt2 := CTOD("28/"+mes0)
   DO WHILE MONTH(dt2)=mes1
      dt2++
   ENDDO
   dt2--
   mesX := LEFT(mes0,2)+RIGHT(mes0,2)

   IF ! CONFIRMA("Gera Diskette Classifone","S")
      EXIT
   ENDIF
   SETCURSOR(curs_ant)

   MENS1("Aguarde ... Gerando Diskette Classifone")

   arq := FCREATE("SCF"+mesX+"1.607")
   CLF->(DBSEEK(dt1,.T.))
   DO WHILE ! CLF->(EOF()) .AND. CLF->DATA <= dt2
      qt0++
      tot0 += CLF->VALOR
      CLF->(DBSKIP())
   ENDDO
   qtx := STRZERO(qt0,9)
   totx := STRZERO(tot0*100,12)
   dtx := DTOC(DATE())
   hjx := LEFT(dtx,2)+SUBSTR(dtx,4,2)+RIGHT(dtx,2)
   FWRITE(arq,"0000000"+hjx+"CODIG"+"000000000"+qtx+totx+ent)

   CLF->(DBSEEK(dt1,.T.))
   DO WHILE ! CLF->(EOF()) .AND. CLF->DATA <= dt2
      linha := ""
      linha += LEFT(CLF->FONE,3)+RIGHT(CLF->FONE,4)
      dtx := DTOC(CLF->DATA)
      dtx := LEFT(dtx,2)+SUBSTR(dtx,4,2)+RIGHT(dtx,2)
      linha += dtx+"00607"+"00701"+mesX+STRZERO(CLF->VALOR*100,9)
      linha += CLF->SOLICITANT
      FWRITE(arq,linha+ent)
      CLF->(DBSKIP())
   ENDDO

   FWRITE(arq,"9999999"+"000000"+"00607"+"000000000000000000"+;
              "EDITORA JORNAL O PRO"+ent)

   EXIT
ENDDO

SETCURSOR(curs_ant)
CLOSE DATABASES
RESTSCREEN(08,22,12,70,tla1)
MENS1("")
RETURN


FUNCTION VAL_MES ( mes0 )
PRIVATE mes9,ano9,ret
mes9 := VAL(LEFT(mes0,2))
ano9 := VAL(RIGHT(mes0,2))
ret := IIF(mes9>0.AND.mes9<13,.T.,.F.)
RETURN ret



*อออออออออออออออออออออออออออออออออออออออ Gera Classificados
PROCEDURE GERA_CLASS

PRIVATE tla1,arq,dt0 := DATE()+1,ent := CHR(13)+CHR(10),i,;
        sec0 := subsec0 := 0, espec0 := " ", rec0

SETCOLOR(cor4)
tla1=SAVESCREEN(07,30,12,66)
@ 07,30,12,66 BOX box1
@ 08,31 SAY " ๐๐ GERA CLASSIFICADOS ๐๐"
@ 09,31 SAY REPLICATE("ฤ",35)
@ 10,31 SAY " Data..: "
SETCOLOR(cor5)

USE CLSCAD01 INDEX CLS1I01, CLS2I01  ALIAS SEC  NEW
USE CLSCAD02 INDEX CLS1I02  ALIAS SBS  NEW
USE CLSCAD03  ALIAS PAR NEW
USE CLSMOV10 INDEX CLS1I10, CLS2I10, CLS3I10  ALIAS CLA  NEW
curs_ant := SETCURSOR(1)

DO WHILE .T.
   MENS1("Data publicao")
   @ 10,40 GET dt0
   READ
   IF ! CONFIRMA("Gera Classificados para "+DTOC(dt0),"S")
      EXIT
   ENDIF
   MENS1("Aguarde ... Gerando CLASS.TXT")

   arq := FCREATE("CLASS.TXT")
   SELE CLA  ;  SET ORDER TO 2
   SET RELATION TO SECAO INTO SEC, TO STR(SECAO)+STR(SUB_SECAO) INTO SBS
   CLA->(DBSEEK(" *"))
   DO WHILE ! CLA->(EOF())
      IF (dt0 < DT_INICIO) .OR. (dt0 > DT_FIM)
         SKIP  ;  LOOP
      ENDIF
      IF CLA->ESPEC = "X" .AND. espec0 = " "
         FWRITE(arq,"<Secao>ESPECIAIS"+ent)
         espec0 := "X"
      ENDIF
      IF CLA->SECAO # sec0 .AND. espec0 = " "
         FWRITE(arq,"<Secao>"+ALLTRIM(SEC->NOME)+ent)
         sec0 := CLA->SECAO  ;  subsec0 := 0
      ENDIF
      IF CLA->SUB_SECAO # subsec0 .AND. espec0 = " "
         FWRITE(arq,"<SubSecao>"+ALLTRIM(SBS->NOME)+ent)
         subsec0 := CLA->SUB_SECAO
      ENDIF
      FWRITE(arq,"<Codigo>"+STR(CODIGO)+ent)
      FWRITE(arq,IIF(CLA->ESPEC=" ","<Cabec>","<EspCabec>")+CABEC+ent)
      FWRITE(arq,IIF(CLA->ESPEC=" ","<Texto>","<EspTexto>"))
      FOR i := 1 TO MLCOUNT(TEXTO,250)
         FWRITE(arq,RTRIM(MEMOLINE(TEXTO,250,i))+" ")
      NEXT
      FWRITE(arq,ent)
      SKIP
   ENDDO
   FCLOSE(arq)

   MENS1("Aguarde ... Pesquisando Inativos")
   CLA->(DBSEEK(" *"))
   DO WHILE ! CLA->(EOF())
      IF (dt0 < DT_INICIO) .OR. (dt0 > DT_FIM)
         SKIP  ;  rec0 := RECNO()
         SKIP - 1  ;  CLA->ATIVO := " "
         DBGOTO(rec0)
       ELSE
         SKIP
      ENDIF
   ENDDO

   MENS1("Aguarde ... Gerando REVIS.TXT")
   arq := FCREATE("REVIS.TXT")
   SELE CLA  ;  SET ORDER TO 3
   SET RELATION TO SECAO INTO SEC, TO STR(SECAO)+STR(SUB_SECAO) INTO SBS
   DBSEEK(DTOS(dt0))
   FWRITE(arq,"<Secao>Revisใo"+ent+"Data: "+DTOC(dt0)+ent)
   DO WHILE DT_INICIO=dt0 .AND. ! CLA->(EOF())
      FWRITE(arq,"<Cabec>"+CABEC+ent)
      FWRITE(arq,"<Texto>")
      FOR i := 1 TO MLCOUNT(TEXTO,250)
         FWRITE(arq,RTRIM(MEMOLINE(TEXTO,250,i))+" ")
      NEXT
      FWRITE(arq,ent)
      FWRITE(arq,"<Periodo>De "+DTOC(DT_INICIO)+" a "+DTOC(DT_FIM)+ent)
      FWRITE(arq,"<Texto>Se็ใo: "+SEC->NOME+ent)
      FWRITE(arq,"<Texto>Sub-Se็ใo: "+SBS->NOME+ent)
      FWRITE(arq,"<Texto>Cod: "+STR(CODIGO)+ent)
      SKIP
   ENDDO
   FCLOSE(arq)

   EXIT
ENDDO

SETCURSOR(curs_ant)
CLOSE DATABASES
MENS1("")
RESTSCREEN(07,30,12,66,tla1)
RETURN


*อออออออออออออออออออออออออออออออออออออออ Reorganiza Arquivos
PROCEDURE REORG_FILES

IF ! CONFIRMA("Reorganizar Arquivos")
   RETURN
ENDIF
MENS1("Aguarde ... Reorganizando Arquivos")

USE CLSCAD01 INDEX CLS1I01, CLS2I01  NEW
PACK
USE CLSCAD02 INDEX CLS1I02
PACK
USE CLSMOV10 INDEX CLS1I10, CLS2I10, CLS3I10
PACK
USE CLSMOV11 INDEX CLS1I11, CLS2I11, CLS3I11
PACK
USE

RETURN

*อออออออออออออออออออออออออออออออออออออออ Mescla CLASS2
PROCEDURE MESCLA

PRIVATE tla1,arq,dt0 := DATE()+1

SETCOLOR(cor4)
tla1=SAVESCREEN(07,30,11,56)
@ 07,30,11,56 BOX box1
@ 08,31 SAY " ๐๐ MESCLA CLASS2 ๐๐"
@ 09,31 SAY REPLICATE("ฤ",25)
@ 10,31 SAY " Data..: "
SETCOLOR(cor5)

USE CLSCAD03  ALIAS PAR  NEW
USE CLSMOV10 INDEX CLS1I10, CLS2I10, CLS3I10  ALIAS CLA  NEW
USE \CLASS2\CLSMOV10 INDEX \CLASS2\CLS1I10, \CLASS2\CLS2I10, ;
                    \CLASS2\CLS3I10  ALIAS CL2  NEW
curs_ant := SETCURSOR(1)

DO WHILE .T.
   MENS1("Data/inกcio dos classificados a mesclar")
   @ 10,40 GET dt0
   READ
   IF ! CONFIRMA("Mescla Classificados CLASS2 de "+DTOC(dt0),"S")
      EXIT
   ENDIF
   MENS1("Aguarde ... Processando")
   SELE CL2  ;  SET ORDER TO 3  ;  DBSEEK(dt0)
   DO WHILE DT_INICIO = dt0 .AND. ! CL2->(EOF())
      CLA->(DBAPPEND())
      CLA->CODIGO := PAR->CLS_PROX  ;  PAR->CLS_PROX ++
      CLA->SECAO := CL2->SECAO
      CLA->SUB_SECAO := CL2->SUB_SECAO
      CLA->DT_INICIO := CL2->DT_INICIO
      CLA->DT_FIM := CL2->DT_FIM
      CLA->CABEC := CL2->CABEC
      CLA->TEXTO := CL2->TEXTO
      CL2->(DBDELETE())  ;  CL2->(DBSEEK(dt0))
   ENDDO
   EXIT
ENDDO

SETCURSOR(curs_ant)
CLOSE DATABASES
MENS1("")
RESTSCREEN(07,30,11,56,tla1)
RETURN


*อออออออออออออออออออออออออออออออออออออออ Copia SPL p/B:
PROCEDURE COPIA_SPL
LOCAL fl0,fl1

IF ! CONFIRMA("Copia *.TXT (Classificados) p/B:","S")
   RETURN
ENDIF
MENS1("Aguarde ... Copiando *.TXT")

COPY FILE CLASS.TXT TO B:CLASS.TXT
COPY FILE REVIS.TXT TO B:REVIS.TXT

RETURN
