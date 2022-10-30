# Please copy/paste all three classes into this file to submit your solution!
# class Article
class Article
    @@all = []
    attr_reader :magazine, :title 

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
 
    end

    def author 
        @author.name
    end

    def self.all
        @@all
end


end

# class author
class Author
    attr_reader :name
  
    def initialize(name)
      @name = name
    end
  
  
    def articles 
      Article.all.filter {|article| article.author == @name}
      end
  
    def magazines 
    articles.map { |article| article.magazine }.uniq
    end
  
    def add_article(magazine, title)
      Article.new(magazine, self, title)
    end
  
    def topics_areas
      magazines.map { |magazine| magazine.category }.uniq
   end
  
  end
  
# class magazine
class Author
    attr_reader :name
  
    def initialize(name)
      @name = name
    end
  
  
    def articles 
      Article.all.filter {|article| article.author == @name}
      end
  
    def magazines 
    articles.map { |article| article.magazine }.uniq
    end
  
    def add_article(magazine, title)
      Article.new(magazine, self, title)
    end
  
    def topics_areas
      magazines.map { |magazine| magazine.category }.uniq
   end
  
  end
  
  
  
