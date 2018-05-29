package main;

public aspect HelloAspectJ {	
    // Define a Pointcut is
    // collection of JoinPoint call sayHello of class HelloAspectJDemo.
    pointcut callSayHello(): call(* HelloAspectJDemo.sayHello()); 
    before() : callSayHello() {
        System.out.println("Before call sayHello");
    } 
    after() : callSayHello()  {
        System.out.println("After call sayHello");
    }  
    
    
    //Definiendo el PointCut al momento de llamar a la funcion greeting
    pointcut callGreeting(): call(* HelloAspectJDemo.greeting());
    after() : callGreeting(){
    	long startTime = System.currentTimeMillis();
    	System.out.println("StartTime: "+ startTime);
    	long estimatedTime = System.currentTimeMillis() - startTime;
    	System.out.println("EstimatedTime: "+ startTime);
    }
    
}  

