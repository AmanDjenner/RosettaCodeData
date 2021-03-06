function testReverseWords
    testStr = {'---------- Ice and Fire ------------' ; ...
        ''                                            ; ...
        'fire, in end will world the say Some'        ; ...
        'ice. in say Some'                            ; ...
        'desire of tasted I''ve what From'            ; ...
        'fire. favor who those with hold I'           ; ...
        ''                                            ; ...
        '... elided paragraph last ...'               ; ...
        ''                                            ; ...
        'Frost Robert -----------------------'        };
    for k = 1:length(testStr)
        fprintf('%s\n', reverseWords(testStr{k}))
    end
end

function strOut = reverseWords(strIn)
    strOut = strtrim(strIn);
    if ~isempty(strOut)
        % Could use strsplit() instead of textscan() in R2013a or later
        words = textscan(strOut, '%s');
        words = words{1};
        strOut = strtrim(sprintf('%s ', words{end:-1:1}));
    end
end
