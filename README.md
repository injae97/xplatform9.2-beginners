## ๐ก Xplatform-9.2 Repo  
    - http://docs.tobesoft.com/getting_started_xplatform_ko#89c2178cee651c44
        
| No  | Title                                                      | 
|-----|-----------------------------------------------------------------------------| 
| Part 1. Runtime   | [ํ๋ก์ ํธ ์์ฑํ๊ธฐ(demo.xadl, demo.xprj)](https://github.com/injae97/xplatform9.2-beginners/blob/main/demo.xadl)|  
| Part 1. Runtime   | [์กฐํํ๋ฉด(person_list.xfdl)](https://github.com/injae97/xplatform9.2-beginners/blob/main/Base/person_list.xfdl) |  
| Part 1. Runtime   | [๋ฑ๋กํ๋ฉด(person_entry.xfdl)](https://github.com/injae97/xplatform9.2-beginners/blob/main/Base/person_entry.xfdl) |  
| Part 1. Runtime   | [๋ฉ๋ดํ๋ฉด ๋ง๋ค๊ธฐ(menu.xfdl)](https://github.com/injae97/xplatform9.2-beginners/blob/main/Base/menu.xfdl) |  
| Part 1. Runtime   | [์์คํ ์ ์ฒดํ๋ฉด ๊ตฌ์ฑํ๊ธฐ](https://github.com/injae97/xplatform9.2-beginners/blob/main/demo.xadl) |  
| Part 1. Runtime   | [์๋น์ค ๋ง๋ค๊ธฐ](https://github.com/injae97/xplatform9.2-beginners/tree/main/Service) |  
| Part 2. HTML5     | [HTML5 ๊ฐ๋ฐ ํ๊ฒฝ ์ค์ ](https://github.com/injae97/xplatform9.2-beginners/tree/main/???) |  
| Part 2. HTML5     | [์ํ ํ๋ก์ ํธ(๋ก์ปฌ ์คํ ํ๊ฒฝ ์ค์ )](https://github.com/injae97/xplatform9.2-beginners/tree/main/???) |  

    
## ๐ก How to download Xplatform-9.2? 

    - https://www.tobesoft.com/product/xplatform
        - ์ฒดํํ ์ ํ ๋ค์ด & ๋ผ์ด์ผ์ค ๋ฐ๊ธ 

## ๐ก How to guide Xplatform-9.2? 

    a. Document
        - http://docs.tobesoft.com/getting_started_xplatform_ko#8ba2cf6ad51eeb1c
    
    b. Youtube
        - https://www.youtube.com/watch?v=kyJ7i1Efxsw
        
    c. Community  
        - https://www.playnexacro.com/#list:community:1
		
	d. Tip
	    - http://support.tobesoft.co.kr/Support/?menu=Tip_XP&page=1
        
## ๐ก Configuration File
    
    a. default_typedef.xml
        - TypeDefinition : ์ปดํฌ๋ํธ๋ค
    
    b. globalvars.xml 
        - ์ ์ญ ๋ณ์, ๋ฐ์ดํฐ์, ๊ฐ์ฒด, ์ด๋ฏธ์ง, ์ ๋๋ฉ์ด์
        
    c. demo-Project.xadl
        - ADL 'demo' 
            - ํ๋ก์ ํธ ํ๋ฉด๋จ
    
    d. demo-Project.xprj
        - ์ด ํ์ผ๋ค์ ๊ด๋ฆฌํ๊ณ  ์๋ ํ๋ก์ ํธ ํ์ผ

## ๐ก Transaction 
    - ๋ฐ์ดํฐ์(Dataset)์ ๊ฐ์ ๊ฐฑ์ ํ๊ธฐ ์ํ ์๋น์ค๋ฅผ ํธ์ถํ๊ณ , transaction์ด ์๋ฃ๋๋ฉด CallBack Function์ ์ํํ๋ ๋ฉ์๋
        e.g transaction(strSvcID, strURL, strInDatasets, strOutDatasets, strArgument, strCallbackFunc[,bAsync[,bBinary[,bCompress]]]);
    
            a. strSvcID String transaction์ ๊ตฌ๋ถํ๊ธฐ ์ํ ID๊ฐ
            
            b. strURL String transaction์ ์์ฒญํ  ์ฃผ์๊ฐ
            
            c. strInDatasets String transaction์ ์์ฒญํ  ๋ ์๋ ฅ๊ฐ์ผ๋ก ๋ณด๋ผ Dataset ID, ๊ฐ ID์์ ๋น์นธ์ผ๋ก ๊ตฌ๋ถํ๋ฉฐ, a=b ํํ๋ก ์ค์ ์ด๋ฆ๊ณผ ๋งค์นญ
               * strInDatasets์ Dataset์ ':U', ':A', ':N' ์ต์ ์กด์ฌ
                   - ':U' ๋ ๊ฐฑ์ ๋ ๋ด์ฉ๋ง strInDatasets์ผ๋ก ๋ณด๋ด๋ฉฐ, ':A' ๋ ๋ชจ๋  ์ ๋ณด๋ฅผ ๋ณด๋
                   - ':N' ์ ํ์ฌ Delete๋ฅผ ์ ์ธํ Data๋ฅผ Normal ์ํ๋ก ๋ณด๋, ๋ํ ์ง์ ํ์ง ์๋ Dataset๋ Normal๋ก ๋์
            
            d. strOutDatasets String transaction์ ์ฒ๋ฆฌ๊ฒฐ๊ณผ๋ฅผ ๋ฐ์ Dataset ID
            
            e. strArgument String transaction์ ์ํ ์ธ์๊ฐ
            
            f. strCallbackFunc String transaction์ ๊ฒฐ๊ณผ๋ฅผ ๋๋ ค์ค Function์ ์ด๋ฆ
            
            g. bAsync String ๋น๋๊ธฐ ์ฌ๋ถ ์ง์ (Default : true)
            
            h. bBinary String Binary ํํ๋ก ์ ์กํ ์ง ์ฌ๋ถ๋ฅผ ์ง์ (Default : false)
            
            i. bCompress String ํต์ ์ PostData๋ฅผ ์์ถํ ์ง ์ฌ๋ถ๋ฅผ ์ง์ (Default : false)
           
           * ๊ธฐ๋ณธ์ผ๋ก ๋น๋๊ธฐ๋ก ๋์
           
## ๐ก ์ด๋ฒคํธ ์ ๋ณด(EventInfo) ๊ฐ์ฒด ์์ฑ

    - obj:Dataset, e:DSLoadEventInfo
        - ์ฒซ๋ฒ์งธ ์ธ์๋ โobjโ๋ก ์ด๋ฒคํธ๋ฅผ ๋ฐ์์ํจ ์ค๋ธ์ ํธ(Object)๋ฅผ ์ ๋ฌ
        - ๋๋ฒ์งธ ์ธ์๋ โeโ๋ก ์ด๋ฒคํธ์ ์ ๋ฌ๋๋ ์ฌ๋ฌ ๊ฐ์ง ์ ๋ณด๋ฅผ ๊ด๋ฆฌํ๋ ๊ฐ์ฒด
    
    * XPLATFORM์ ์ด๋ฒคํธ๋ ๋ชจ๋ ๋์ผํ ์ธ์(Argument)๊ตฌ์กฐ๋ฅผ ๊ฐ์ง(obj, e)    
    * eventid(Event ID ๋ฌธ์์ด), fromobject(Event ๋ฐ์ Object), fromreferenceobject, url(Load๋ url) ๋ฑ