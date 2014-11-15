module ApplicationHelper

  # Returns the full title on a per-page basis
  def full_title(page_title = '')                     # Method definition, parameter
    base_title = "8 Count"  # Variable assignment
    if page_title.empty?                              # Boolean test
      base_title                                      # Return string
    else
      "#{page_title} | #{base_title}"                 # String interpolation
    end
  end
end
