//
//  rXsWift.swift
//  AlmoFireExample
//
//  Created by ShrawanKumar Sharma on 21/07/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

//import Foundation





/*
rx SWIFT IS USED TO CALL THE OBSERVER 
 
Next* (Error | Completed)?
 
 
 Next* (Error | Completed)?
 
 This describes the following:
 
 Sequences can have 0 or more elements.
 Once an Error or Completed event is received, the sequence cannot produce any other element.
 
 
 
 
 
 Sequences in Rx are described by a push interface (aka callback).
 
 enum Event<Element>  {
 case Next(Element)      // next element of a sequence
 case Error(ErrorType)   // sequence failed with error
 case Completed          // sequence terminated successfully
 }
 
 class Observable<Element> {
 func subscribe(observer: Observer<Element>) -> Disposable
 }
 
 protocol ObserverType {
 func on(event: Event<Element>)
 }
 
 
 dispose FOR THE CALCELLATION 
 
 
 dispose IS used to cancel out the response and remove from the quesue
 
 
 DISPONSE ON THE SEQUENCE 
 let subscription = Observable<Int>.interval(0.3, scheduler: scheduler)
 .subscribe { event in
 print(event)
 }
 
 NSThread.sleepForTimeInterval(2)
 
 subscription.dispose()
 
 
 When a DisposeBag is deallocated, it will call dispose on each of the added disposables.
 

 
 */