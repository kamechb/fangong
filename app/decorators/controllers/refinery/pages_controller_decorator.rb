Refinery::PagesController.class_eval do
    
  before_filter :find_works,  :find_reports, :only => [:home]
                # :find_all_professions, :find_students,
  protected
        
  def find_all_professions
    @professions = Refinery::Fg::Profession.all
    @recommend_professions = Refinery::Fg::Profession.where(:recommend => true) # @professions where(:recommend => true)
    @open_professions = Refinery::Fg::Profession.where(:opened => true)         # where(:opened => true) @professions
  end 

  def find_works
    @works = Refinery::Fg::Work.limit 8
    @research_works = Refinery::Fg::Work.where(:research => true).limit(8)
  end

  def find_students
    @students = Refinery::Fg::Student.limit 8
    @signup_students = Refinery::Fg::Student.order("created_at DESC").limit(8)  # 这里需要该为报名的学生 order("created_at DESC").limit(8)
    @feedback_students = Refinery::Fg::Student.where("feedback NOT NULL").limit(5)
  end

  def find_reports
    @reports = Refinery::Fg::Report.order("created_at DESC").limit(8)
  end

end
