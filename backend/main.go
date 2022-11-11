package main

import (
	"os"

	"github.com/gin-gonic/gin"

	"github.com/easbarba/apito/initializers"
)

func init() {
	initializers.LoadEnvVariables()
}

func main() {
	router := gin.Default()

	v1 := router.Group("/v1")
	{
		v1.GET("/", func(c *gin.Context) {
			c.JSON(200, gin.H{"message": "Hello, World!"})
		})
	}

	router.Run(os.Getenv("PORT"))
}
