1. Spring Starter Project 생성
	
	- Name : MosaicWeb
	- Type : Gadle (Buildship)
	- Fackaging : war
	- Group : com.hybrid
	- Artifact : MosaicWeb
	- Package : com.hybrid
	
	- Library 선택 : web
	
2. 형상관리

	- Remote Repository 생성 (github.com)
	- Local Repository 생성
		- >> notepad .gitignore
		- >> notepad .gitignore 편집
		- >> git init 
		- >> git add *
		- >> git commit -m :first commit"
			
	- Local ==> Remote push(최초 동기화)
		- >> git remote -v
		- >> git remote remove origin 
		- >> git remote add origin https://github.com/gaoara/MosaicWeb.git
		- >> git push -u origin master
	
	- 개발자 2가 Clone 수행
		- >> git clone https://github.com/gaoara/MosaicWeb.git
		- >> git clone https://github.com/gaoara/MosaicWeb.git MosaicWebDev
		- >> Eclipse Gradle Import
		
3. HTML 설정
	- 설정 불필요
	- mkdir src/main/webapp 폴더 생성
	- notepad src/main/webapp/Hello.html
	- gradle bootRun
	- Firefox ==> http://localhost:8080/Hello.html
	
4. JSP 설정
	- mvnrepository.com >> search : tomcat jasper
	- build.gradle dependency : 
		providedRuntime group: 'org.apache.tomcat.embed', name: 'tomcat-embed-jasper', version: '8.5.4'
	- Eclipse -> Gradle Refrech
	- notepad src/main/webapp/Hello.jsp
	- gradle bootRun
	- Firefox ==> http://localhost:8080/Hello.jsp
	
5. Servlet 설정
	- Prject facets 추가
		- >> Dynamic Web Module 3.1
		- >> Java 1.8
		- >> Javascript 1.0
	- MosaicWebApplication.java << @ServletComponentScan 추가
	- com.hybrid.servlet.HelloServlet.java 생성
	- gradle bootRun
	- Firefox ==> http://localhost:8080/HelloServlet

6. SpringLoaded 설정(리로드 기능)
	- mvnrepository.com >> search : spring loaded
	- build.gradle에 설정
		classpath("org.springframework:springloaded:1.2.6.RELEASE")
		compile group: 'org.springframework', name: 'springloaded', version: '1.2.6.RELEASE'
'1.2.6.RELEASE'
	- Elipse Output Directory 변경
		bin ==> build/classes/main

7.Mybatis 설정 

   - mvnrepository.com -> search : spring mybatis

   - build.gradle 에 Dependency 설정
     compile group: 'org.mybatis.spring.boot', name: 'mybatis-spring-boot-starter', version: '1.1.1'
     compile files('src/main/webapp/WEB-INF/lib/ojdbc7.jar');
   
   - application properties 작성 
      spring.datasource.driver-class-name=oracle.jdbc.OracleDriver
      spring.datasource.url=jdbc:oracle:thin:@52.78.98.194:1521:orcl
      spring.datasource.username=scott
      spring.datasource.password=tiger
   
   - Eclipse Gradle Reflash 수행
   - gradle bootRun
   
   - notepad src/main/java/com/hybrid/mapper/DeptMapper.java 인터페이스 생성
   - notepad src/main/java/com/hybrid/dao/DeptDao.java
   - notepad src/main/java/com/hybrid/domain/Dept.java
   - notepad src/test/java/com/hybrid/mapper/DeptMapperTest.java
   - notepad src/main/webapp/dept.jsp
   
8. Deploy 방법
	- gradle war
	- build/libs/MosaicWeb~~~~~~.war 이렇게 만들어진다.
	- cp MosaicWeb.war C:\Program Files\Apache Software Foundation\Tomcat 8.5\webapp
	- Firefox ==> http://localhost/MosaicWeb/index.html
		
9. Gluon 설정 

	- cp FXTempate/src/* MosaicWeb/src
	- merge FXTempate/build.gradle MosaicWeb/build.gradle
	- marge com.hybrid.fx.MainApplication / com.hybrid.MosaicApplication 
		->> spring boot + gluon start
		->> spring boot + gluon stop
		->> primaryView 에 WebView
		
10. SiteMesh 설정
	- mvnreposity.com >> search : sitemesh
	- build.gradle dependencies 추가
		->> compile group: 'org.sitemesh', name: 'sitemesh', version: '3.0.1'
		
	- com.hybrid.config -> 
		SiteMeshFilterConfig.java ->
			builder.addDecoratorPath("/deco/*", "/WEB-INF/deco/maindeco.jsp");
			
11. Spring Security 설정
	- mvnreposity.com >> search : spring boot security 	search : spring security taglibs
	- build.gradle dependencies 추가
		->> compile group: 'org.springframework.boot', name: 'spring-boot-starter-security', version: '1.3.6.RELEASE'
		->> compile group: 'org.springframework.security', name: 'spring-security-taglibs', version: '4.0.4.RELEASE'
			

