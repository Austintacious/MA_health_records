class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.string :geography
      t.integer :total_pop_2005
      t.integer :ages_0to19_2005
      t.integer :over_65_2005
      t.integer :income_per_capita_2000
      t.integer :ppl_below_200_percent_poverty_2000
      t.float :percent_ppl_below_200_percent_poverty_2000
      t.float :percent_adequacy_prenatal
      t.float :percent_C_section_deliveries_2005_2008
      t.integer :infant_deaths_2005_2008
      t.float :infant_mortality_rate_per_1000_births_2005_2008
      t.float :percent_low_birthweight_2005_2008
      t.float :percent_publically_financed_prenatal_2005_2008
      t.float :percent_teen_births_2005_2008

      t.timestamps
    end
  end
end
