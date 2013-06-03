module ProjectsHelper

	def disabled_grid?(x, y)
		if (y == 4 && x == 6) || (y == 4 && x == 7) || (y == 5 && x == 6) || (y == 5 && x == 7)
			true
		else
			false
		end
	end

	def inactive_grid?(x, y)
		"disabled" if disabled_grid?(x, y)
	end

end