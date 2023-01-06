docker:
	@docker-compose build
	@docker-compose up -d

start:
	@docker-compose start

bash:
	@docker-compose exec web bash

clean:
	@docker-compose down
	@docker system prune --volumes --force
	@rm -rf tmp/* || sudo rm -rf tmp/*
	@mkdir -p tmp/pids && touch tmp/pids/.keep

logs:
	@docker-compose logs -f --tail=0 web