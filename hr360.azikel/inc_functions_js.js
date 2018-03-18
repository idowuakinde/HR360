// JScript File
function coreLogOut()
{
	var userOption = window.confirm("To log out and end your session, click 'OK'");
	if (userOption)
		window.open('logOff.aspx', '_parent');
}
function ChangeRowBackgroundColor(row)
{
    row.style.backgroundColor='#BABCBC';
}
function RevertRowBackgroundColor(row)
{
    row.style.backgroundColor='transparent';
}
function PrintPage()
{
    window.print();
}
