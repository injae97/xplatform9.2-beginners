## 💡 Xplatform-9.2 Repo  
    - http://docs.tobesoft.com/getting_started_xplatform_ko#89c2178cee651c44
        
| No  | Title                                                      | 
|-----|-----------------------------------------------------------------------------| 
| Part 1. Runtime  | [프로젝트 생성하기(demo.xadl, demo.xprj)](https://github.com/injae97/xplatform9.2-beginners/blob/main/demo.xadl)|  
| Part 1. Runtime   | [조회화면(person_list.xfdl)](https://github.com/injae97/xplatform9.2-beginners/blob/main/Base/person_list.xfdl) |  
| Part 1. Runtime   | [등록화면(person_entry.xfdl)](https://github.com/injae97/xplatform9.2-beginners/blob/main/Base/person_entry.xfdl) |  
| Part 1. Runtime   | [메뉴화면 만들기(menu.xfdl)](https://github.com/injae97/xplatform9.2-beginners/blob/main/Base/menu.xfdl) |  
| Part 1. Runtime   | [시스템 전체화면 구성하기](https://github.com/injae97/xplatform9.2-beginners/blob/main/demo.xadl) |  
| Part 1. Runtime   | [서비스 만들기](https://github.com/injae97/xplatform9.2-beginners/tree/main/Service) |  
| Part 2. HTML5     | [HTML5 개발 환경 설정](https://github.com/injae97/xplatform9.2-beginners/tree/main/Service) |  

    
## 💡 How to download Xplatform-9.2? 

    - https://www.tobesoft.com/product/xplatform
        - 체험판 제품 다운 & 라이센스 발급 

## 💡 How to guide Xplatform-9.2? 

    a. Document
        - http://docs.tobesoft.com/getting_started_xplatform_ko#8ba2cf6ad51eeb1c
    
    b. Youtube
        - https://www.youtube.com/watch?v=kyJ7i1Efxsw
        
    c. Community  
        - https://www.playnexacro.com/#list:community:1
		
	d. Tip
	    - http://support.tobesoft.co.kr/Support/?menu=Tip_XP&page=1
        
## 💡 Configuration File
    
    a. default_typedef.xml
        - TypeDefinition : 컴포넌트들
    
    b. globalvars.xml 
        - 전역 변수, 데이터셋, 객체, 이미지, 애니메이션
        
    c. demo-Project.xadl
        - ADL 'demo' 
            - 프로젝트 화면단
    
    d. demo-Project.xprj
        - 이 파일들을 관리하고 있는 프로젝트 파일

## 💡 Transaction 
    - 데이터셋(Dataset)의 값을 갱신하기 위한 서비스를 호출하고, transaction이 완료되면 CallBack Function을 수행하는 메소드
        e.g transaction(strSvcID, strURL, strInDatasets, strOutDatasets, strArgument, strCallbackFunc[,bAsync[,bBinary[,bCompress]]]);
    
            a. strSvcID String transaction을 구분하기 위한 ID값
            
            b. strURL String transaction을 요청할 주소값
            
            c. strInDatasets String transaction을 요청할 때 입력값으로 보낼 Dataset ID, 각 ID쌍은 빈칸으로 구분하며, a=b 형태로 실제이름과 매칭
               * strInDatasets의 Dataset에 ':U', ':A', ':N' 옵션 존재
                   - ':U' 는 갱신된 내용만 strInDatasets으로 보내며, ':A' 는 모든 정보를 보냄
                   - ':N' 은 현재 Delete를 제외한 Data를 Normal 상태로 보냄, 또한 지정하지 않는 Dataset도 Normal로 동작
            
            d. strOutDatasets String transaction의 처리결과를 받을 Dataset ID
            
            e. strArgument String transaction을 위한 인자값
            
            f. strCallbackFunc String transaction의 결과를 돌려줄 Function의 이름
            
            g. bAsync String 비동기 여부 지정(Default : true)
            
            h. bBinary String Binary 형태로 전송할지 여부를 지정(Default : false)
            
            i. bCompress String 통신시 PostData를 압축할지 여부를 지정(Default : false)
           
           * 기본으로 비동기로 동작
           
## 💡 이벤트 정보(EventInfo) 객체 속성

    - obj:Dataset, e:DSLoadEventInfo
        - 첫번째 인자는 “obj”로 이벤트를 발생시킨 오브젝트(Object)를 전달
        - 두번째 인자는 “e”로 이벤트에 전달되는 여러 가지 정보를 관리하는 객체
    
    * XPLATFORM의 이벤트는 모두 동일한 인자(Argument)구조를 가짐(obj, e)    
    * eventid(Event ID 문자열), fromobject(Event 발생 Object), fromreferenceobject, url(Load된 url) 등