class Magazine
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
    end

    def articles 
      Article.all.filter{|article| article.magazine.name == @name}
      end


    def contributors
     self.articles.map { |article|article.author}.uniq
        end


    def self.find_by_name (name)
      self.all.find  {|magazine| magazine.name == name} 
  end

  
    def article_titles
    self.articles.map { | article | article.title}
    end
    

    def contributing_authors 
      self.contributors.filter { |author| author.articles.count > 2}
      end
    end
    