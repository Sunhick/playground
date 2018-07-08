package geometry

import "math"

type Circle struct {
	Radius uint8
	Xcoord int8
	Ycoord int8
}

func (c Circle) Area() float64 {
	return math.Pow(float64(c.Radius), 2) * math.Pi
}
