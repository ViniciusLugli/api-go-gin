.PHONY: test run stop down logs

test:
	@echo "Rodando os testes..."
	docker-compose exec myapp go test

run:
	@echo "Subindo o docker..."
	docker-compose up -d

stop:
	@echo "Parando o docker..."
	docker-compose stop

down:
	@echo "Derrubando o docker..."
	docker-compose down

logs:
	@echo "Exibindo logs..."
	docker-compose logs -f myapp
