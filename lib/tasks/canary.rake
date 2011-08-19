class Rake::Task
  def overwrite(&block)
    @actions.clear
    prerequisites.clear
    enhance(&block)
  end
  def abandon
    prerequisites.clear
    @actions.clear
  end
end

namespace :db do
  namespace :test do
    Rake::Task[:prepare].overwrite do
      puts "booya"
    end
  end
end