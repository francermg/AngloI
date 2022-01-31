<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Área Academica - Escola Descisivo Anglo</title>
<link href="http://www.unigran.br/anglo/html/admin/css/tabelaProfessor.css" rel="stylesheet" type="text/css" media="screen" />
<? 
   include_once('../../scriptsPadrao.php');
   include_once('../../connect2.php');
?>
<script language="javascript" src="../digitanota.js" type="text/javascript"></script>
<script language="javascript">
function enviarForm(total){
	if($('#opcao').val() == ""){
	
		jAlert("<b>Selecione uma Opção!<br/><br/>Salvar - Para salvar as notas no banco de dados!<br/><br/>Publicar - Para publicar as nota no Site!</b>"," ATENÇÃO !");	
		$('#opcao').focus();
		
		return false;
		
	}else
		if($('#opcao').val() == 2)
		{
			jConfirm('<b>Você optou por publicar as suas notas no site.<br/><br/> Lembre-se que só poderá alterá-las fazendo um requerimento à coordenação.<br/><br/> Tem certeza que deseja publicar as suas notas?<br/></b>', 'Cornfirmação de Publicação!', function(r) {
				if(r == true){$('#dados').submit();}else return false;
			});
			
			
		}//else contem.
		else
		$('#dados').submit();
}

</script>

</head>

<body>
<form action="insertNotas.php" method="post" name="dados" id="dados" enctype="multipart/form-data">


	<input type="hidden" name="disc"  id="disc"  value="<? echo $_GET['disc']  ?>"/>
    <input type="hidden" name="serie" id="serie" value="<? echo $_GET['serie'] ?>"/>
    <input type="hidden" name="turma" id="turma" value="<? echo $_GET['turma'] ?>"/>
    <input type="hidden" name="setor" id="setor" value="<? echo $_GET['setor'] ?>"/>
	<input type="hidden" name="bim"   id="bim" 	 value="<? echo $_GET['bim']   ?>"/>
    <input type="hidden" name="tipo"  id="tipo"  value="<? echo $_GET['tipo']  ?>"/>
    


<div id="sombra" style="margin-top:40px; min-height:500px;">

<div id="geral" style="min-height:500px;">

<div style="clear:both"></div>

<div id="conteudo" style="min-height:500px;">
<?

	$sql='SELECT nome FROM DISCIPLINAS WHERE codigo = '.$_GET['disc'];
	$result = ibase_query($sql);
	$materia = ibase_fetch_object($result);
?>

<div class="tamanho" id="dadosProfessor" style="margin-left:20px;">
	<img src="../../images/logoAngloPtBr.jpg" width="80" height="80"  align="left" style="padding-right:15px;" />
	<p style="padding-top:30px;">
        <b>Professor:&nbsp;</b> <? echo $_SESSION['nome']; ?>
        <span style="margin-left:20px"><b>Disciplina:&nbsp;</b> <? echo $materia->NOME; ?></span>
    </p>
    
    <p>
        <b>Série:&nbsp;</b><? echo $_GET['serie']; ?>
        
        <span style="margin-left:20px">
        <b>Turma:&nbsp;</b><? echo $_GET['turma']; ?>        
        </span>
        
        <span style="margin-left:20px">
        <b>Setor:&nbsp;</b><? echo $_GET['setor']; ?>
        </span>
    </p>
</div><!-- dados do professor -->


<?

if($_GET['tipo'] == 1){	 
	$query="execute procedure verifica_notas(".$_GET['serie'].", '".$_GET['turma']."', ".$_GET['bim'].", ".$_GET['disc'].")";
	ibase_query($query);

	if ($_GET['setor'] == 'A') $n = "NOTA1"; 
		if ($_GET['setor'] == 'B') $n = "NOTA2"; 
			if ($_GET['setor'] == 'C')  $n = "NOTA3"; 
	
	
//Seleciona as Notas se tiver dos alunos quando estive salvo e não publicado!

	$sql = "select distinct a.turma, a.serie, a.bimestre as BIMESTRE, a.CODIGO as RGM, 
			a.NOME, n.".$n." as NOTA, n.disciplina as DISCIPLINA
            from alunos a inner join notas n on a.codigo=n.aluno
            where a.turma='".$_GET['turma']."' and a.serie='".$_GET['serie']."' and n.disciplina='".$_GET['disc']."' and n.bimestre='".$_GET['bim']."' and n.status='S' 
			order by a.nome ";
	//print $sql.'<br/>';
	$sql2 = "select distinct count(*) as TOTAL
            from alunos a inner join notas n on a.codigo=n.aluno
            where a.turma='".$_GET['turma']."' and a.serie='".$_GET['serie']."' and n.disciplina='".$_GET['disc']."' and n.bimestre='".$_GET['bim']."' and n.status='S'";	
			
	$sql3 = "select distinct count(*) as TOTAL
			from alunos a inner join notas n on a.codigo=n.aluno
			where a.turma='".$_GET['turma']."' and a.serie='".$_GET['serie']."' and n.disciplina='".$_GET['disc']."' and n.bimestre='".$_GET['bim']."'";	//verificar aluno cadastrado
	
//echo $sql2;
	$result = ibase_query($sql);	
	$result2 = ibase_query($sql2);
	$result3 = ibase_query($sql3);
	
	
}//if tipo == 1
else
if($_GET['tipo'] == 2){		
	
	if($_GET['bim']==5){
		if ($_GET['setor'] == 'A') $n = "NOTA1"; 
			if ($_GET['setor'] == 'B') $n = "NOTA2"; 
				if ($_GET['setor'] == 'C')  $n = "NOTA3"; 
	}else{

			if ($_GET['setor'] == "A")  $n = "RECUPBIM1";
			   if ($_GET['setor'] == "B") $n = "RECUPBIM2";
            	   if ($_GET['setor'] == "C") $n = "RECUPBIM3";
		}
		
$sql ="select distinct a.turma, a.serie, a.bimestre as BIMESTRE, 
a.CODIGO as RGM,a.NOME, n.".$n." as NOTA, n.disciplina as DISCIPLINA
from alunos a inner join notas n on a.codigo=n.aluno
where a.turma='".$_GET['turma']."' and a.serie='".$_GET['serie']."' and n.disciplina='".$_GET['disc']."' and n.bimestre='".$_GET['bim']."' and n.status='S' 
order by a.nome";	

//echo "<br/><br/><br/>".$sql."<br/>";

$sql2 ="select distinct count(*) as TOTAL
from alunos a inner join notas n on a.codigo=n.aluno
where a.turma='".$_GET['turma']."' and a.serie='".$_GET['serie']."' and n.disciplina='".$_GET['disc']."' and n.bimestre='".$_GET['bim']."' and n.status='S'";	

$sql3 ="select distinct count(*) as TOTAL
from alunos a inner join notas n on a.codigo=n.aluno
where a.turma='".$_GET['turma']."' and a.serie='".$_GET['serie']."' and n.disciplina='".$_GET['disc']."' and n.bimestre='".$_GET['bim']."'";//Procurar aluno cadastrado
	
//echo $sql2;		
	$result = ibase_query($sql);
    $result2 = ibase_query($sql2);	
	$result3 = ibase_query($sql3);
	
	
}//if tipo 2

	$total=ibase_fetch_object($result2);
	$alunos=ibase_fetch_object($result3);


?>

<br style="clear:both" />
<?	
if($alunos->TOTAL == 0 ){	
?>
<div class="tamanho" style="text-align:center; font-weight:bold; color:#F00" >
	<br /><br /><br/><br /><br /><br/>
    <p>Nenhum Aluno Encontrado! Entre em contato para maiores informações!</p>
</div>
<?
}
else
if($total->TOTAL == 0 ){	
?>
<div class="tamanho" style="text-align:center; font-weight:bold; color:#F00" >
	<br /><br /><br/><br /><br /><br/>
    <p>AS NOTAS JÁ FORAM PUBLICADAS COM SUCESSO!</p>
</div>
<?
}
else{
?>

<div class="tamanho" style="text-align:center; font-weight:bold; font-size:11px; color:#06C" >
<?  if($_GET['bim'] == 5) 
		echo '<p> Inserindo notas de EXAME </p>';
	else{ ?>
		<p>Inserindo notas <? if($_GET['tipo'] == 1) echo 'Bimestral'; else echo ' de Recuperação'; ?>. </p>
 <? } ?>
</div>

<br /><br />
<table class="tabelaProfessor">
	
    <th>CODIGO</th>
    <th>NOME</th>
    <th>NOTA</th>

<?
		 $cont=0;
		 while ($saida = ibase_fetch_object($result)){
			
			$cont++;
					
			?>
				<tr <? if($cont%2 != 0)echo 'bgcolor="#DFDFDF"'; ?>>
					                   
  				   <td><? echo $saida->RGM; ?></td>
				
				   <td style="text-align:justify; padding-left:10px;"><? echo $saida->NOME; ?></td>
				
 <td <? if($saida->NOTA < 6) echo 'style="color:#F00"' ?>>
                   
<input name="vnot<? echo $saida->RGM; ?>" id="vnot<? echo $saida->RMG; ?>" type="text" size="7" maxlength="3" onkeydown="return trataoEnter(this, event);" onBlur="valida(this);" onkeypress="return teclas(this.value,event);" onFocus="realca(this);" onkeyup="trocavirgula(this);" <? if ($saida->NOTA != NULL){echo 'value="'.$saida->NOTA.'"';} ?> style="width:50px; height:13px; text-align:center; <? if($saida->NOTA <= 6 && $saida->NOTA  != NULL) echo 'color:#F00"' ?>color:#678197" />
					
                   
</td>

                   
				</tr>
			
			<?
			
		}//while
?>
</table>

<? if($cont==0)
		echo '  <div class="msg_alerta">
					<span style="color:#F00; font-weight:bold">
					Nada Encontrado, entre em contato para mais infromação!
				</span></div>';
?>
</div><!-- conteudo -->

</div>
</div>

<div style="text-align:center">
<br /><br />

<select name="opcao" id="opcao" >

	<option id="selecionar" value=""> Selecione </option>
    <option id="salvar" value="1"> Salvar Notas </option>
    <option id="publicar" value="2"> Publicar Notas </option>
            

</select>

<input type="button"  value="Confimar" title="Clcik aqui para Confimar o Lançamento" onclick="enviarForm(<? echo $cont; ?>)" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<input type="button"  value="Cancelar" title="Click aqui para cancelar!" onclick="parent.$.fn.colorbox.close();" />
</form>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<? }//else count = 0 ?>

</body>
</html>

