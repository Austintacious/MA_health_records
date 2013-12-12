require 'test_helper'

class TownHealthRecordsControllerTest < ActionController::TestCase
  setup do
    @town_health_record = town_health_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:town_health_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create town_health_record" do
    assert_difference('TownHealthRecord.count') do
      post :create, town_health_record: { ages_0to19_2005: @town_health_record.ages_0to19_2005, geography: @town_health_record.geography, income_per_capita_2000: @town_health_record.income_per_capita_2000, infant_deaths_2005_2008: @town_health_record.infant_deaths_2005_2008, infant_mortality_rate_per_1000_births_2005_2008: @town_health_record.infant_mortality_rate_per_1000_births_2005_2008, over_65_2005: @town_health_record.over_65_2005, percent_C_section_deliveries_2005_2008: @town_health_record.percent_C_section_deliveries_2005_2008, percent_adequacy_prenatal: @town_health_record.percent_adequacy_prenatal, percent_low_birthweight_2005_2008: @town_health_record.percent_low_birthweight_2005_2008, percent_ppl_below_200_percent_poverty_2000: @town_health_record.percent_ppl_below_200_percent_poverty_2000, percent_publically_financed_prenatal_2005_2008: @town_health_record.percent_publically_financed_prenatal_2005_2008, percent_teen_births_2005_2008: @town_health_record.percent_teen_births_2005_2008, ppl_below_200_percent_poverty_2000: @town_health_record.ppl_below_200_percent_poverty_2000, total_pop_2005: @town_health_record.total_pop_2005 }
    end

    assert_redirected_to town_health_record_path(assigns(:town_health_record))
  end

  test "should show town_health_record" do
    get :show, id: @town_health_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @town_health_record
    assert_response :success
  end

  test "should update town_health_record" do
    patch :update, id: @town_health_record, town_health_record: { ages_0to19_2005: @town_health_record.ages_0to19_2005, geography: @town_health_record.geography, income_per_capita_2000: @town_health_record.income_per_capita_2000, infant_deaths_2005_2008: @town_health_record.infant_deaths_2005_2008, infant_mortality_rate_per_1000_births_2005_2008: @town_health_record.infant_mortality_rate_per_1000_births_2005_2008, over_65_2005: @town_health_record.over_65_2005, percent_C_section_deliveries_2005_2008: @town_health_record.percent_C_section_deliveries_2005_2008, percent_adequacy_prenatal: @town_health_record.percent_adequacy_prenatal, percent_low_birthweight_2005_2008: @town_health_record.percent_low_birthweight_2005_2008, percent_ppl_below_200_percent_poverty_2000: @town_health_record.percent_ppl_below_200_percent_poverty_2000, percent_publically_financed_prenatal_2005_2008: @town_health_record.percent_publically_financed_prenatal_2005_2008, percent_teen_births_2005_2008: @town_health_record.percent_teen_births_2005_2008, ppl_below_200_percent_poverty_2000: @town_health_record.ppl_below_200_percent_poverty_2000, total_pop_2005: @town_health_record.total_pop_2005 }
    assert_redirected_to town_health_record_path(assigns(:town_health_record))
  end

  test "should destroy town_health_record" do
    assert_difference('TownHealthRecord.count', -1) do
      delete :destroy, id: @town_health_record
    end

    assert_redirected_to town_health_records_path
  end
end
