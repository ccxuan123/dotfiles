" --- Functions ---
function! DoPrettyXML()
    silent %!xmllint --format %
endfunction
command! Xmlpp call DoPrettyXML()

