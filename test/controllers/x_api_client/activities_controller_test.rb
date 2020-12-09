require 'test_helper'

module XApiClient
  class ActivitiesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @activity = x_api_client_activities(:one)
    end

    test "should get index" do
      get activities_url
      assert_response :success
    end

    test "should get new" do
      get new_activity_url
      assert_response :success
    end

    test "should create activity" do
      assert_difference('Activity.count') do
        post activities_url, params: { activity: { x_actor: @activity.x_actor, x_context: @activity.x_context, x_object: @activity.x_object, x_result: @activity.x_result, x_verb: @activity.x_verb } }
      end

      assert_redirected_to activity_url(Activity.last)
    end

    test "should show activity" do
      get activity_url(@activity)
      assert_response :success
    end

    test "should get edit" do
      get edit_activity_url(@activity)
      assert_response :success
    end

    test "should update activity" do
      patch activity_url(@activity), params: { activity: { x_actor: @activity.x_actor, x_context: @activity.x_context, x_object: @activity.x_object, x_result: @activity.x_result, x_verb: @activity.x_verb } }
      assert_redirected_to activity_url(@activity)
    end

    test "should destroy activity" do
      assert_difference('Activity.count', -1) do
        delete activity_url(@activity)
      end

      assert_redirected_to activities_url
    end
  end
end
