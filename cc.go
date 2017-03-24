package main

import (
	"os"
	"os/exec"
	"syscall"
)

func main() {
	binary, lookErr := exec.LookPath("./cluster-compose.sh")
	if lookErr != nil {
		panic(lookErr)
	}

	args := []string{"cluster-compose.sh", "up"}

	env := os.Environ()

	execErr := syscall.Exec(binary, args, env)
	if execErr != nil {
		panic(execErr)
	}
}
