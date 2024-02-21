# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

  def find(id)
    # Your code Here
    return candidate[:id]
  end
  
  def experienced?(candidate)
    # Your code Here
    if candidate[:years_of_experience] > 2 do
      return true
    else
      return false
    end 
  end
  
  def qualified_candidates(candidates)
    # Your code Here
    candidates.select { |candidate|
      years_of_experience > 0
      github_points >= 100
      languages.include?("Ruby" || "Python")
      Applied <= 15.days.ago.to_date
      age > 17 
    }
  end
  
  # More methods will go below
  def ordered_by_qualifications(candidates)
    candidates.sort {
      years_of_experience
      if !years_of_experience
        github_points
      end
    }
  end