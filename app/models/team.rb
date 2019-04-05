class Team
  attr_accessor :name, :motto
  TEAM = []

  def intitialize(params)
    @name = params[:name]
    @motto = params[:motto]
    TEAM << self
  end

  def self.all
    TEAM
end

  def self.clear
    TEAM.clear
  end
end
