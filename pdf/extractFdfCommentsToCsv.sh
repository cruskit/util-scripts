# Extracts the all comments from an an Adobe FDF comment export file into csv format

 for i in *.fdf ;
 do \
    echo "Page,Author,Comment" ; \
	sed -e "s/\(<<\)/\n\1/g" "$i" \
	| grep --text Contents \
	| sed -e 's/^.*Contents.\([^\\)]*\).*\(Page[^\/]*\).*Subj.[^(]*(\([^)]*\).*/\2,\3,"\1"/';
 echo ;
 done 
 
 