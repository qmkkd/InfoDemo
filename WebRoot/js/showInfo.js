
function delcfm() {
	if (!confirm("确认要删除？")) {
		window.event.returnValue = false;
	}
}
function updcfm() {
	if (!confirm("确认要更改？")) {
		window.event.returnValue = false;
	}
}