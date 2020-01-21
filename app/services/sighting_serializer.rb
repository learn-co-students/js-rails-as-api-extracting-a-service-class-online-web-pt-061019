class SightingSerializer
 
    def initialize(sighting_object)
      @sighting = sighting_object
    end
        # initialize will take in whatever variable we're dealing with in a particular action, and store it as an instance variable

    def to_serialized_json
        # @sighting.to_json(:include => {
        #       :bird => {:only => [:name, :species]},
        #       :location => {:only => [:latitude, :longitude]}
        #     }, :except => [:updated_at])

        # break this line up to get a better grasp of what is actually going on
        options = {
            include: {
                bird: {
                    only: [:name, :species]
                    },
                location: {
                    only: [:latitude, :longitude]
                    }
                },
                except: [:updated_at],
        }
        @sighting.to_json(options)
    end
     
end