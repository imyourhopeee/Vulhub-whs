# Vulhub-whs

## 요약
- WebLogic은 원래 Enterprise Java Beans 같은 기술을 지원하는 '대형 기업용 서버'라 다른 서버에 있는 객체를 호출하는 기능이 필요한데, 이때 IIOP(네트워크를 통해 다른 컴퓨터에 있는 객체를 로컬 객체처럼 호출할 수 있게 하는 통신 프로토콜)을 지원해야 함
- CVE-2020-2551 은 Oracle WebLogic Server의 IIOP 통신 프로토콜 처리에 존재하는 원격 코드 실행(RCE) 취약점(WLS 핵심모듈에 존재함)
- 공격자는 특수하게 조작된 IIOP 패킷을 전송하여, 인증 없이 원격에서 WebLogic 서버의 시스템 권한으로 임의 코드를 실행할 수 있음


## 환경 구성 및 실행 
 Dockerfile(WebLogic 설치 스크립트) / docker.compose.yml(컨테이너 실행 구성) / poc.py
 
 (PS에서 실행)
 docker-compose build
 docker-compose up 
 python poc.py 127.0.0.1 7001

 **Oracle WebLogic 설치 파일은 라이선스 문제로 포함되지 않음
 **docker 환경 구성은 완료했으나, 서버 실행은 파일을 얻을 수 없어 생략됨

## 과정 및 결과
- docker-compose build 
![스크린샷 2025-04-27 122340](https://github.com/user-attachments/assets/fd04852d-4b16-4538-88ce-d448c7d0a736)

- docker-compose up 
![스크린샷 2025-04-27 130207](https://github.com/user-attachments/assets/49eedb21-709f-481b-bc16-e1918a73e80e)

- Poc 실행화면
![스크린샷 2025-04-27 130528](https://github.com/user-attachments/assets/c7ba43f6-805c-433a-8ce6-f4ebbca710b7)
