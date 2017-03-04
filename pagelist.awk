{
	area  = $1;
	shop  = $2;
	url   = $3;
	top   = $4;
	staff = $5;
	printf("%s/access.sh %s %s %s %s %s%s\n", home, home, area, shop, "top", url, top);
	printf("%s/access.sh %s %s %s %s %s%s\n", home, home, area, shop, "staff", url, staff);
}

