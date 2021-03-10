require 'pry'

class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end 

    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    def backed_projects
        #binding.pry
        backed_projects = ProjectBacker.all.select do | backed_project | 
            backed_project.backer  == self 
        end
        #binding.pry
        backed_projects.map { | project | project.project }
        
    end


end 