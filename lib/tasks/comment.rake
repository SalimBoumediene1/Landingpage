namespace :abc do
    #require 'youtube_it'
    require 'twitter'
    require 'mixpanel-ruby'

    desc "let comment on Youtube an Twitter"
    task :comment => :environment do
        Metric.new # ==> Execute tout les jours l'outils d'analytics MixPanel afin qu'on puisse recupere cces données tout les jours
        if Time.now.friday?
            Twiter.new.perform  # ==> Execute une fois par semaine un bot tweet
            puts "DONE!!!"
        end
        
    end

end