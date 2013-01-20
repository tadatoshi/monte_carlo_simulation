# Based on http://www.chem.unl.edu/zeng/joy/mclab/mcintro.html

class MonteCarloSimulation::PiCalculation

  def calculate(number_of_iteration)

  	number_of_hits_in_quarter_circle = 0
    
    (1..number_of_iteration).each do |iteration_number|

      x_coordinate = rand
      y_coordinate = rand

      distance_from_origin = Math.sqrt(x_coordinate**2 + y_coordinate**2)

      if distance_from_origin <= 1.0
        number_of_hits_in_quarter_circle = number_of_hits_in_quarter_circle + 1
      end

    end

    # number_of_hits_in_quarter_circle / number_of_iteration = 1/4πr^2 / r^2 = 1/4π:
    # 4 * (number_of_hits_in_quarter_circle.to_f / number_of_iteration.to_f)
    4 * (BigDecimal(number_of_hits_in_quarter_circle.to_s) / BigDecimal(number_of_iteration.to_s))

  end  

end