SELECT 
	(
		'[
			"Domingo", "Segunda-feira", "Terça-feira", 
			"Quarta-feira", "Quinta-feira", "Sexta-feira", "Sábado"
		]'::JSON
	)->>EXTRACT(DOW FROM NOW())::int;
