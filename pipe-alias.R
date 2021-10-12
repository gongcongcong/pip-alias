extract <- `[`
add <- `+`
sub <- `-`
add_col <- `$<-`
dt <-  function(x, a =500, b = 200) {
	DT::datatable(x, extensions = c('Buttons', 'Scroller'), 
		      options = list(buttons =c('copy', 'csv', 'excel', 'print', 'pdf'),
				     dom = c('Bfrtip'),
				     deferRender = TRUE,
				     scrollY = b,
				     scrollX = a,
				     scroller = TRUE
				     )
	)
}
Sys.setenv(`_R_USE_PIPEBIND_` = TRUE) 
