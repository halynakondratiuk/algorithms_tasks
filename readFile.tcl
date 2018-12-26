proc readFromFile {fileName} {
	if {[catch {set infile [open $fileName r]} ex]} {
        return "Failed to open - $ex"
    }
	set result [list]
	set max 0
	while { [gets $infile line] >= 0 } {
		set number [llength [split $line " "]]		
		if {$max < $number} {
 			set max $number
 			set result [list]
 			lappend result $line
	 	} elseif {$max eq $number} {
 			lappend result $line
 		}
	}
	close $infile
	return $result
}
set fileName "file\.txt"
puts [readFromFile $fileName]