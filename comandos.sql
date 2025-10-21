SELECT * FROM municipios;

SELECT * FROM municipios WHERE municipio_id = 7;

INSERT INTO public.municipios (
    nome,
    estado,
    caracteristica
)
VALUES (
    'Taquara',
    'RS',
    'Metropolitana'
);

INSERT INTO public.municipios (
    nome,
    estado,
    caracteristica
)
VALUES (
    'Taquara',
    'RS',
    'Metropolitana'
)
RETURNING *;


UPDATE public.municipios
SET nome = 'Parobé',
    estado = 'RS',
    caracteristica = 'Grota'
WHERE municipio_id = 11;


UPDATE public.municipios
SET nome = 'Parobé',
    estado = 'RS',
    caracteristica = 'Grota'
WHERE municipio_id = 11
RETURNING *;

DELETE FROM public.municipios
WHERE municipio_id = 11
RETURNING *;

