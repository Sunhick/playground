package greet

import (
	"crypto/sha256"
	"fmt"
	"math/rand"
	"time"
)

type Person struct {
	Name       string
	Id         int16
	Address    string
	internalId uint64
}

func GreetMe(name string) string {
	return fmt.Sprintf("Greetings! %s", name)
}

func MakePerson(name string, id int16, address string) Person {
	fmt.Println(time.Now())
	r := rand.New(rand.NewSource(99))
	var internalId uint64 = r.Uint64()
	for i := 0; i < 10; i++ {
		fmt.Println(r.Uint64())
	}
	h := sha256.New()
	h.Write([]byte(time.Now().String()))
	fmt.Printf("%x\n", h.Sum(nil))

	return Person{Name: name, Id: id, Address: address, internalId: internalId}
}

// Value receiver. so any changes done to the person won't be visible outside
// of this function
func (person Person) Details() string {
	return fmt.Sprintf("Name: %s\nId: %d\nAddress: %s\nInternalId: %d",
		person.Name, person.Id, person.Address, person.internalId)
}

// Pointer receiver, let you modify the values of person
func (person *Person) ChangeId(id int16) {
	person.Id = id
	fmt.Println("Changing the id:", person.Id)
}
