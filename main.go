package main

import (
	"fmt"
	"github.com/gin-gonic/gin"
)

func main(){
	r:=gin.Default()
	r.GET("/ping",func(ctx * gin.Context){
		fmt.Println("pong...")
	})
}