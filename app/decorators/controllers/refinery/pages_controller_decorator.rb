Refinery::PagesController.class_eval do
    
  before_filter :find_works, :find_propagandas, :find_reports, :find_activities, :find_cooperations, :find_links, :only => [:home]
  protected

  def find_propagandas
    @propagandas = Refinery::Fg::Propaganda.all
  end

  def find_works
    @works = Refinery::Fg::Work.limit 8
    @research_works = Refinery::Fg::Work.where(:research => true).limit(8)
  end

  def find_reports
    @reports = Refinery::Fg::Report.order("created_at DESC").limit(8)
  end

  def find_activities
    @activities = Refinery::Fg::Activity.limit(4)
  end

  def find_cooperations
    @cooperations = Refinery::Fg::Link.where(:cooperation => true).limit(4)
  end

  def find_links
    @links = Refinery::Fg::Link.where(:cooperation => false)
  end
end
