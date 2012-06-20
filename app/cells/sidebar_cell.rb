class SidebarCell < Cell::Rails
  helper Rails.application.helpers
  helper Refinery::Core::Engine.helpers

  # cache :online
  # cache :professions
  # cache :signup_note
  # cache :open_professions
  # cache :recommend_professions
  # cache :signup_students
  # cache :students_feedback

  def all
    render
  end

  def online
    render
  end

  def professions
    @professions = Refinery::Fg::Profession.limit(8)
    render
  end

  def signup_note
    render
  end

  def open_professions
    @open_professions = Refinery::Fg::Profession.where(:opened => true).limit(5)         # where(:opened => true) @professions
    render
  end
  
  def recommend_professions
    @recommend_professions = Refinery::Fg::Profession.where(:recommend => true) # @professions where(:recommend => true)
    render
  end

  def signup_students
    @signup_students = Refinery::Fg::Student.order("created_at DESC").limit(5)  # 这里需要该为报名的学生 order("created_at DESC").limit(8)
    render
  end

  def students_feedback
    @feedback_students = Refinery::Fg::Student.where("feedback NOT NULL").limit(5)
    render
  end

  def jobs
    @jobs = Refinery::Fg::Job.order("created_at DESC").limit(5)
    render
  end
  
  def cooperation
    render
  end

end
