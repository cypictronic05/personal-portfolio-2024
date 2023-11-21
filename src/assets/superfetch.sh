#!/bin/bash

archivo="/run/media/emerson-arch/66608EBF608E9589/Repositories/Portfolio/node-folio/src/assets/ascii-art"

if [ -e "$archivo" ]; then
	ANSI_BlueE='\e[38;2;52;152;219m' # Código de color RGB para #3498db
	NC='\e[0m'                       # No Color

	while IFS= read -r line; do
		part1="${line:0:35}"
		part2="${line:36}"

		echo -e "${ANSI_BlueE}${part1}${NC} ${part2}"
	done <"$archivo"
else
	echo "El archivo \"$archivo\" no existe."
fi
