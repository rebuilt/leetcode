package main

import (
	"fmt"
)

func main() {
	heights := []int{0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1}
	fmt.Println(trap(heights))
}

func trap(height []int) int {
	waterAmount1, last_index := compute(height)

	waterAmount2, _ := compute(reverse(height[last_index:]))
	return waterAmount1 + waterAmount2
}

func compute(heights []int) (int, int) {
	if len(heights) < 2 {
		return 0, 0
	}

	left := 0
	last_index := 0
	output := 0
	tmp_water := 0

	for i := 0; i < len(heights); i++ {
		height := heights[i]

		if height >= left {
			output += tmp_water
			left = height
			last_index = i
			tmp_water = 0
			continue

		}

		tmp_water += left - height
	}

	return output, last_index
}

func reverse[S ~[]E, E any](s S) S {
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		s[i], s[j] = s[j], s[i]
	}
	return s
}

