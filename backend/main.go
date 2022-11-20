package main

import (
	"github.com/gin-gonic/gin"
)

func init() {

}

func main() {
	router := gin.Default()

	v1 := router.Group("/v1")
	{
		v1.GET("/", func(c *gin.Context) {
			c.JSON(200, gin.H{"message": "Hello, World!"})
		})
	}

	router.Run(":8888")
}
