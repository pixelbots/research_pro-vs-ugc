all: parse csv_to_sds cat

parse:
	@python scripts/parse.py source/508003.csv > csv/508003.csv
	@python scripts/parse.py source/508004.csv > csv/508004.csv
	@python scripts/parse.py source/508005.csv > csv/508005.csv
	@python scripts/parse.py source/508006.csv > csv/508006.csv
	@python scripts/parse.py source/508007.csv > csv/508007.csv
	@python scripts/parse.py source/509009.csv > csv/509009.csv
	@python scripts/parse.py source/509010.csv > csv/509010.csv
	@python scripts/parse.py source/509014.csv > csv/509014.csv
	@python scripts/parse.py source/509015.csv > csv/509015.csv
	@python scripts/parse.py source/512018.csv > csv/512018.csv
	@python scripts/parse.py source/513019.csv > csv/513019.csv
	@python scripts/parse.py source/513022.csv > csv/513022.csv
	@python scripts/parse.py source/513023.csv > csv/513023.csv
	@python scripts/parse.py source/513024.csv > csv/513024.csv
	@python scripts/parse.py source/513025.csv > csv/513025.csv
	@python scripts/parse.py source/514026.csv > csv/514026.csv
	@python scripts/parse.py source/514027.csv > csv/514027.csv
	@python scripts/parse.py source/514028.csv > csv/514028.csv
	@python scripts/parse.py source/514029.csv > csv/514029.csv
	@python scripts/parse.py source/515034.csv > csv/515034.csv
	@python scripts/parse.py source/516035.csv > csv/516035.csv
	@python scripts/parse.py source/516036.csv > csv/516036.csv
	@python scripts/parse.py source/516038.csv > csv/516038.csv
	@python scripts/parse.py source/516040.csv > csv/516040.csv


csv_to_sds:
	@python scripts/csv_to_sds.py csv/508003.csv > sds/508003.sds
	@python scripts/csv_to_sds.py csv/508004.csv > sds/508004.sds
	@python scripts/csv_to_sds.py csv/508005.csv > sds/508005.sds
	@python scripts/csv_to_sds.py csv/508006.csv > sds/508006.sds
	@python scripts/csv_to_sds.py csv/508007.csv > sds/508007.sds
	@python scripts/csv_to_sds.py csv/509009.csv > sds/509009.sds
	@python scripts/csv_to_sds.py csv/509010.csv > sds/509010.sds
	@python scripts/csv_to_sds.py csv/509014.csv > sds/509014.sds
	@python scripts/csv_to_sds.py csv/509015.csv > sds/509015.sds
	@python scripts/csv_to_sds.py csv/512018.csv > sds/512018.sds
	@python scripts/csv_to_sds.py csv/513019.csv > sds/513019.sds
	@python scripts/csv_to_sds.py csv/513022.csv > sds/513022.sds
	@python scripts/csv_to_sds.py csv/513023.csv > sds/513023.sds
	@python scripts/csv_to_sds.py csv/513024.csv > sds/513024.sds
	@python scripts/csv_to_sds.py csv/513025.csv > sds/513025.sds
	@python scripts/csv_to_sds.py csv/514026.csv > sds/514026.sds
	@python scripts/csv_to_sds.py csv/514027.csv > sds/514027.sds
	@python scripts/csv_to_sds.py csv/514028.csv > sds/514028.sds
	@python scripts/csv_to_sds.py csv/514029.csv > sds/514029.sds
	@python scripts/csv_to_sds.py csv/515034.csv > sds/515034.sds
	@python scripts/csv_to_sds.py csv/516035.csv > sds/516035.sds
	@python scripts/csv_to_sds.py csv/516036.csv > sds/516036.sds
	@python scripts/csv_to_sds.py csv/516038.csv > sds/516038.sds
	@python scripts/csv_to_sds.py csv/516040.csv > sds/516040.sds
	@python scripts/csv_to_sds.py csv/512016.csv > sds/512016.sds


cat:
	@cd sds && cat header.sds \
	508003.sds \
	508004.sds \
	508005.sds \
	508006.sds \
	508007.sds \
	509009.sds \
	509010.sds \
	509014.sds \
	509015.sds \
	512018.sds \
	513019.sds \
	513022.sds \
	513023.sds \
	513024.sds \
	513025.sds \
	514026.sds \
	514027.sds \
	514028.sds \
	514029.sds \
	515034.sds \
	516035.sds \
	516036.sds \
	516038.sds \
	516040.sds \
	512016.sds \
	> all.sds



