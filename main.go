package main

import (
	"github.com/gin-gonic/gin"
)

func main(){
	r:=gin.Default()
	r.GET("/ping",func(ctx * gin.Context){
		ctx.JSON(200,map[string]interface{}{
			"message": "pong",
		})
	})
	r.Run("0.0.0.0:8000")
}