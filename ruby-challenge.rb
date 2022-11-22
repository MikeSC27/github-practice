# Ruby objects and classes Challenges 3### = done
####################################################################################################
### As a developer, I can create a class called Task.
### As a developer, I can create three instances (objects) of class Task. e.g laundry = Task.new
### As a developer, I can initialize each instance of class Task with a title.
### As a developer, I can see the title of each instance of class Task.
### As a developer, I can initialize each instance of class Task with a status that has a default value of 'incomplete'.
### As a developer, I can update the status of each instance of class Task when the task has been completed.
##################################################
### For the following ColorPalette challenge use initialize and attr_accessor methods in your class.

### As a developer, I can create a class called ColorPalette.
### As a developer, I can create three instances (objects) of class ColorPalette.
### e.g green = ColorPalette.new
### As a developer, I can initialize each instance of the class ColorPalette with three colors.
### e.g. green = ColorPalette.new('Chartreuse', 'Kelly', 'Seafoam')
### As a developer, I can print the value of each individual color.
### As a developer, I can create a method called all_colors that when called will print a sentence telling me the three colors of a given palette.
# As a developer, I can change one or more colors of a given palette.


class Task
    def initialize(title)
        @title = title
        @status = false
    end
    def set_title(title)
        @title = title
    end
    def get_title
        @title
    end
    def work_status
        @status = true
    end
end
# p Task.new

yardwork=Task.new('yardwork')
p yardwork
yardwork.set_title('Landscaping')
p yardwork.get_title

painting=Task.new('painting')
p painting
painting.set_title('Home Exterior')
p painting.get_title

sweeping=Task.new('sweeping')
p sweeping
sweeping.set_title('Debris Cleanup')
p sweeping.get_title

yardwork.work_status
p yardwork
painting.work_status
p painting 
sweeping.work_status
p sweeping
##################################################
# ColorPalette challenge

class ColorPalette
    attr_accessor :shade1, :shade2, :shade3
    def initialize(shade1, shade2, shade3)
        @shade1 = shade1
        @shade2 = shade2
        @shade3 = shade3
    end
    def print_colors
       p @shade1 = shade1
       p @shade2 = shade2
         @shade3 = shade3 
    end
    def print_pallette
        p @shade1, @shade2, @shade3
    end
    def all_colors
        "These are the colors #{shade1}, #{shade2}, #{shade3}."
    end
end
# p ColorPalette.new
color_green = ColorPalette.new('Evergreen', 'Pear', 'Lime')
p color_green

color_red = ColorPalette.new('Madder', 'Crimson', 'Cardinal')
p color_red

color_grey = ColorPalette.new('Silver', 'Haze Grey', 'Jet Grey')
p color_grey

p color_green.print_colors
p color_red.print_colors
p color_grey.print_colors

p color_green.all_colors

