package main

import (
	"log"

	"github.com/gin-gonic/gin"
)

func main() {
	router := gin.Default()
	router.GET("/hello", helloHandler)

	err := router.Run(":8081")
	if err != nil {
		log.Println("Error starting server", err)
	}
}

func helloHandler(c *gin.Context) {
	c.JSON(200, gin.H{
		"message": "hello dude",
	})
}
