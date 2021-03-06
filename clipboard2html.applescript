try
	set c2html to (the clipboard as «class HTML»)
	data2str(c2html)
end try

on data2str(dat)
	set accessRef to (open for access file ((path to temporary items as text) & "str.dat") with write permission)
	try
		set eof accessRef to 0
		write dat to accessRef
		set str to (read accessRef from 1 as «class utf8»)
	end try
	close access accessRef
	
	return str
end data2str