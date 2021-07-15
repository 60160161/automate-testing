* Setting *
Library     Selenium2Library 

Suite Teardown  Close Browser

* Variable *
${url}          https://www.youtube.com
${title}        YouTube
${box_search}   //input[@id="search"]
${btn_search}   //*[@id="search-icon-legacy"]
${text_search}  Robot framework 
* Keywords *

* Test Cases *
เข้าเว็บ
        [tags]                      success
        Open Browser                ${url}      chrome
        #Sleep                       0.5s
        TiTle Should Be             ${title}

ค้นหา
        [tags]                      success
        Input Text                  ${box_search}   ${text_search}
        #Sleep                       0.5s
        #Element Text Should Be      ${box_search}   ${text_serach}

้ทำการค้นหา
        [tags]                      success
        Click Element               ${btn_search}  
        Sleep                       1s
        Title Should Be             ${text_search} - ${title}

เข้าดู Video
        #[tags]                      success
        Sleep                       1s
        Click Element               //*[@id="dismissible"]
        Sleep                       10s

* Test Case *


