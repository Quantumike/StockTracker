function Initialize()
	sFileToParse = SELF:GetOption('FileToRead')
end

function Update()
	handler = io.open(sFileToParse)
	if not handler then
		print('StockParse: unable to open file at ' .. sFileToParse)
		return
	end
	
	sFileText = handler:read("*all")
	sFileText = string.gsub(sFileText, "\t", "     ")
	io.close(handler)
	
	return tostring(sFileText)		
end
