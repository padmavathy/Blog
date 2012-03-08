require 'spec_helper'

describe ArticlesController do
		describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
		  end
	describe "GET 'new'" do
    it "should be successful" do
      @article=Article.new
      response.should be_success
    end
		  end
	describe "GET 'edit'" do
    it "should be successful" do
      Article.stub(:find) 
      response.should be_success
    end
	end
	
	describe "GET 'show'" do
    it "should be successful" do
      Article.stub(:find) 
      response.should be_success
    end
  end
	describe "PUT 'update'" do
		it "should be successful" do
			@article=Article.stub(:find)
			@article.stub(:update_attributes => true)
			response.should be_success
		end
	end
	describe "POST 'create'" do
		it "should be_success" do
			lambda do
		visit '/'
		fill_in ":title",:with => "rails"
		fill_in ":body",:with => "Article"
		fill_in ":published_at",:with => "2014-10-18 17:22:00"
		fill_in ":excerpt",:with => "musics"
		fill_in ":location",:with => "trichy"
		end
			response.should be_success
			end
		end
describe "DELETE 'destroy'" do
		it "should be successful" do
			@article=Article.stub(:find)
			@article.stub(:destroy => true)
			response.should be_success
		end
	end
	end