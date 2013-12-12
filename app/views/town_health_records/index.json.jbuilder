json.array!(@town_health_records) do |town_health_record|
  json.extract! town_health_record, :id, :geography, :total_pop_2005, :ages_0to19_2005, :over_65_2005, :income_per_capita_2000, :ppl_below_200_percent_poverty_2000, :percent_ppl_below_200_percent_poverty_2000, :percent_adequacy_prenatal, :percent_C_section_deliveries_2005_2008, :infant_deaths_2005_2008, :infant_mortality_rate_per_1000_births_2005_2008, :percent_low_birthweight_2005_2008, :percent_publically_financed_prenatal_2005_2008, :percent_teen_births_2005_2008
  json.url town_health_record_url(town_health_record, format: :json)
end
