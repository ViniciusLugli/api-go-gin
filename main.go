package main

import (
	"github.com/ViniciusLugli/api-go-gin/database"
	"github.com/ViniciusLugli/api-go-gin/routes"
)

func main() {
	database.ConectaComBancoDeDados()

	routes.HandleRequests()
}
