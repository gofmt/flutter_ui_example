package main

// #include <stdio.h>
// #include <stdlib.h>
import (
	"C"
)
import "unsafe"

//export CreateMessage
func CreateMessage(message *C.char) *C.char {
	// file, err := os.Create("./message.txt")

	// if err != nil {
	// 	panic(err)
	// }

	// defer file.Close()

	// if _, err := file.WriteString(fmt.Sprint(C.GoString(message))); err != nil {
	// 	panic(err)
	// }
	defer C.free(unsafe.Pointer(message))
	return message

}

func main() {}
