<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
<link href = "style.css" rel = "stylesheet" type = "text/css">
<script>
	function inputCheck() {
		if(document.regForm.passwd.value != document.regForm.repasswd.value) {
			document.regForm.repasswd.focus();
			alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�");
			return false;
		}
	}
</script>
</head>
<body>
�ؾƷ��� Edge Gym�� ��Ȱ�� ��� ���� �ʿ��� �����Դϴ�. ������ �ۼ��� �ּ���.<p><p><p>




<form name ="regForm" onsubmit = "return inputCheck()" method = "post" action = "registerProc.jsp">
	���� 1  :Edge Gym ��Ģ�� �ݵ�� �������ֽñ� �ٶ��ϴ�. Ȯ������ �ʾƼ� �߻��� �������� å������ �ʽ��ϴ�.<br>
		<input type="checkbox" value="��" name="yes" required>&nbsp;��
		 <p>
	���� 2  :	��ȣ ���� ���ü(����) ���� ��ſ��� �ؼ��� �ǹ�ȭ�մϴ�. ��Ű�� ���� ��� ¡��ó���˴ϴ�.<br>
		<input type="checkbox" value="��" name="yes" required>&nbsp;��
		 <p>
	���� 3  :	�ۼ� �ҷ� �� ����/ȫ�� Ȱ���Ͻø� ������ġ�� �����Ͻðڽ��ϱ�? �̵��ǽ� Ż��ó���˴ϴ�.<br>
		<input type="checkbox" value="��" name="yes" required>&nbsp;��
		 <p>
	���� 4  : �Ҹ����װ� ���ǻ����� ������  han01028761623@icloud.com ������ �����ֽñ� �ٶ��ϴ�.<br>
		<input type="checkbox" value="��" name="yes" >&nbsp;��
		<p><br><br>
	
	�ذ��� ��û�� �����Ǹ� '�����Ͻ� �̸���'�� �˷��帳�ϴ�.<p>
	������ ��û �� 3���� �̻� �������� ������ �ڵ� ��û ���� �˴ϴ�.<p>
	�����ǽ� ��Ȱ�� Edge Gym ��� ���� �Ŵ����� Ʈ���̳ʿ��� ���̵�, �̸�, �̸���,  Ȱ�������� Edge Gym �̿�Ⱓ ���� �����˴ϴ�.<p>
 
		
	
<table width="1000" cellpadding="5" bgcolor="#cccccc">
	<tr>
		<td colspan="2" align="center"><font color="ffffff" ><b>ȸ������</b></font></td>
	</tr>
	<tr>
		<td width = "10%" align="right" bgcolor="#f4f4f4"><font color="#ff9900">*</font>���̵�</td>
		<td width = "30%" bgcolor="#ffffff">
			<input type = "text" name = "id" size = "15" required>
			<font color="#ff9900" size="2">(4~12�� ������/���� ����)</font>
		</td>
	</tr>
	<tr>
		<td width = "10%" align="right" bgcolor="#f4f4f4"><font color="#ff9900">*</font>��й�ȣ</td>
		<td width = "30%" bgcolor="#ffffff">
			<input type = "password" name = "passwd" size = "15" required>
			<font color="#ff9900" size="2">(15�� �̳��� �Է����ּ���.)</font>
		</td>
	</tr>
	<tr>
		<td width = "10%" align="right" bgcolor="#f4f4f4"><font color="#ff9900">*</font>��й�ȣ Ȯ��</td>
		<td width = "30%" bgcolor="#ffffff">
			<input type = "password" name = "repasswd"  size = "15" required>
			<font color="#ff9900" size="2">(��й�ȣ ���Է�.)</font>
		</td>
	</tr>
	<tr>
		<td width = "10%" align="right" bgcolor="#f4f4f4"><font color="#ff9900">*</font>�̸�</td>
		<td width = "30%" bgcolor="#ffffff">
			<input type = "text" name = "name"   size = "15" required>
			<font color="#ff9900" size="2">(�ݵ�� �Է����ּ���.)</font>
		</td>
	</tr>

	<tr>
		<td width = "10%" align="right" bgcolor="#f4f4f4"><font color="#ff9900">*</font>����</td>
		<td width = "30%" bgcolor="#ffffff">
			<input type="checkbox" value="m" name="sex" >&nbsp;��
			<input type="checkbox" value="w" name="sex" >&nbsp;��
			
		</td>
	</tr>
	
	

	<tr>
		<td width = "10%" align="right" bgcolor="#f4f4f4"><font color="#ff9900">*</font>��ȭ��ȣ</td>
		<td width = "30%" bgcolor="#ffffff">
			<input type = "text" name = "phone1"   size = "10">

			
		</td>
	</tr>
	
	<tr>
		<td width = "10%" align="right" bgcolor="#f4f4f4">����</td>
		<td width = "30%" bgcolor="#ffffff">
			<input type = "text" name = "job"   size = "10">			
		</td>
	</tr>


	<tr>
		<td width = "10%" align="right" bgcolor="#f4f4f4">�ּ�</td>
		<td width = "30%" bgcolor="#ffffff">
			<input type = "text" name = "zipcode"   size = "30">
						
		</td>
	</tr>
	

	
	
	
	<tr>
		<td width = "10%" align="right" bgcolor="#f4f4f4">�̸���</td>
		<td width = "30%" bgcolor="#ffffff">
			<input type = "text" name = "email"   size = "30" >
			<font color="#ff9900" size="2"><p>�ǵ��� naver,hanmail�� ���ּ���.</font>
		</td>
	</tr>
	
	<tr>
		<td colspan = "3" align = "center" >
		<input type = "submit" value = "ȸ������" bgcolor = "#f4f4f4">
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		<input type = "reset" value = "�ٽþ���">
		</td>
	</tr>
</table>

</form>
</body>
</html>