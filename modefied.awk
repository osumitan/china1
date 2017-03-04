/Last-Modified/ {
	print(gensub(/Last-Modified: (.*)/, "\\1", "g", $0));
}

