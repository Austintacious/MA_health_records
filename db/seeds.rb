# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

health_records = Rails.root + "db/data/mass_health_data.csv"

def format_num(row)
  row.to_s.delete("$,")
end

CSV.foreach(health_records, headers:true) do |row|
  row.each {|rec| rec[1] = format_num(rec[1])}
  TownHealthRecord.find_or_initialize_by(geography: row['Geography']) do |rec|
    rec.geography = row["Geography"]
    rec.total_pop_2005 = row["total pop, year 2005"].to_i
    rec.ages_0to19_2005 = row["age 0-19, year 2005"].to_i
    rec.over_65_2005 = row["age 65+, year 2005"].to_i
    rec.income_per_capita_2000 = row["Per Capita Income, year 2000"].to_i
    rec.ppl_below_200_percent_poverty_2000 = row["Persons Living Below 200% Poverty Level, year 2000"].to_f
    rec.percent_ppl_below_200_percent_poverty_2000 = row["% all Persons Living Below 200% Poverty Level, year 2000"].to_f
    rec.percent_adequacy_prenatal = row["% adequacy prenatal care (kotelchuck)"].to_f
    rec.percent_C_section_deliveries_2005_2008 = row["% C-section deliveries, 2005-2008"].to_f
    rec.infant_deaths_2005_2008 = row["Number of infant deaths, 2005-2008"].to_i
    rec.infant_mortality_rate_per_1000_births_2005_2008 = row["Infant mortality rate (deaths per 1000 live births), 2005-2008"].to_i
    rec.percent_low_birthweight_2005_2008 = row["% low birthweight 2005-2008"].to_f
    rec.multiple_births_2005_2008 = row["% multiple births, 2005-2008"].to_f
    rec.percent_publically_financed_prenatal_2005_2008 = row["% publicly financed prenatal care, 2005-2008"].to_f
    rec.percent_teen_births_2005_2008 = row["% teen births, 2005-2008"].to_f

    rec.save!
  end
end