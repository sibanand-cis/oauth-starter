class ProfilesController < ApplicationController

	before_action :set_profile,:only=>[:show,:edit,:update,:destroy]

	def index
		@profiles = Profile.all
		respond_to do |format|
			format.html
			format.csv { send_data @profiles.to_csv }
	    format.xls # { send_data @products.to_csv(col_sep: "\t") }
	  end
	end

	def show; end

	def edit;	end

	def new
		@profile = Profile.new
	end

	def create
		@profile = Profile.new(profile_params)

		respond_to do |format|
			if @profile.save
				format.html { redirect_to @profile, notice: 'User profile was successfully created.' }
			else
				format.html { render action: 'new' }
			end
		end
	end

	def update
		respond_to do |format|
			if @profile.update(profile_params)
				format.html { redirect_to @profile, notice: 'User	 profile was successfully updated.' }
			else
				format.html {render action: 'edit'}
			end
		end
	end

	def destroy
		@profile.destroy
		respond_to do |format|
      format.html { redirect_to profiles_url }
      format.json { head :no_content }
    end
	end

	private

	def set_profile
		@profile = Profile.find(params[:id])
	end

	def profile_params
		params.require(:profile).permit(:first_name, :middle_name, :last_name, :address,:avatar)
	end
end
