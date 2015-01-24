all: parse csv_to_sds cat

parse:
	@python scripts/parse.py source/509015.csv > csv/509015.csv

csv_to_sds:
	@python scripts/csv_to_sds.py csv/509015.csv > sds/509015.sds

cat:
	@cd sds && cat header.sds > all.sds