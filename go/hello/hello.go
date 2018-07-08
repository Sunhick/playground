package main

import (
	geo "./geometry"
	grt "./greet"
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
	"sync"
)

var wg sync.WaitGroup

func main() {
	defer func() {
		fmt.Println("shutting down!")
	}()

	for i := 0; i < 10; i++ {
		log.Println("Initilizing the component")
	}

	fmt.Println("hello sunil....welcome to golang!")
	fmt.Println(grt.GreetMe("John"))

	fmt.Println("---------")
	john := grt.MakePerson("john", 45, "4300 Aurora Ave N.")
	fmt.Println(john.Details())
	fmt.Println("---------")

	john.ChangeId(99)
	fmt.Println(john.Details())

	wg.Add(1)
	go tick()

	a := [...]int{12, 78, 50}
	fmt.Println(a)

	var circle geo.Shape = geo.Circle{9, 0, 0}
	fmt.Println(circle.Area())

	wg.Add(1)
	go download()

	wg.Wait()
}

func tick() {
	defer func() {
		fmt.Println("tick tock defer")
		wg.Done()
	}()
	fmt.Println("Tick tock")
}

func download() {
	defer func() {
		fmt.Println("Done with download goroutine")
		wg.Done()
	}()

	response, error := http.Get("https://www.google.com")
	if error != nil {
		fmt.Println(error)
		return
	}
	bytes, _ := ioutil.ReadAll(response.Body)
	fmt.Println(string(bytes))

	response.Body.Close()
}
