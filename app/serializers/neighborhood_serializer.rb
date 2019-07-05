class NeighborhoodSerializer < ActiveModel::Serializer
  attributes :id, :school_score, :average_age, :median_income, :zestimate, :match_score, :NBRHD_NAME, :POPULATION_2010, :PCT_HISPANIC, :PCT_WHITE, :PCT_BLACK, :PCT_AMERIND, :PCT_ASIAN, :PCT_HAW_PACIS, :PCT_OTHER_RACE, :PCT_TWO_OR_MORE_RACES, :FEMALE, :MALE, :PCT_LESS_18, :PCT_65_PLUS, :FAMILIES, :HOUSING_UNITS, :HU_OWNED, :HU_RENTED
end
