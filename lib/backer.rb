class Backer
    attr_accessor :name
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        proj_backer = ProjectBacker.all.select { |project| project.backer == self }
        proj_backer.map { |project| project.project }
    end
end 
