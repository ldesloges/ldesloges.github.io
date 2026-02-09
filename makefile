# Variables
MSG = "Mise à jour du CV"

# La règle 'all' va s'occuper de tout
all: add commit push

add:
	git add .

commit:
	@read -p "Message du commit (appuyez sur Entrée pour le message par défaut) : " message; \
	if [ -z "$$message" ]; then \
		git commit -m $(MSG); \
	else \
		git commit -m "$$message"; \
	fi

push:
	git push origin main

# Règle pour nettoyer (optionnel)
clean:
	@echo "Rien à nettoyer sur un site statique."