package main

import (
	"bufio"
	"fmt"
	"html/template"
	"log"
	"os"
)

func usage() {
	fmt.Fprintf(os.Stderr, "usage: ssg < filenames\n")
	os.Exit(2)
}

func main() {
	log.SetFlags(0)

	// Check if STDIN is present.
	fi, err := os.Stdin.Stat()
	if err != nil {
		log.Fatal(err)
	}

	if (fi.Mode() & os.ModeCharDevice) != 0 {
		usage()
	}

	filenames, err := readLines(os.Stdin)
	if err != nil {
		log.Fatal(err)
	}

	t, err := template.ParseFiles(filenames...)
	if err != nil {
		log.Fatal(err)
	}

	err = t.Execute(os.Stdout, nil)
	if err != nil {
		log.Fatal(err)
	}
}

// Read each line of file to string slice.
func readLines(f *os.File) ([]string, error) {
	var lines []string

	scanner := bufio.NewScanner(f)
	for scanner.Scan() {
		lines = append(lines, scanner.Text())
	}

	return lines, scanner.Err()
}
