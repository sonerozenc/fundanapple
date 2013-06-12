class ChargesController < ApplicationController

	def new
	end

	def create

	begin
	  # Amount in cents
	  @user = current_user
	  @amount = @user.artworks.length * 10 * 100

	  @project = Project.find(params[:project_id])

	  @amount = @project.grids.length * 10 * 100
	  
	  customer = Stripe::Customer.create(
	    :email => @user.email,
	    :card  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => @amount,
	    :description => @user.first_name + ' s payment',
	    :currency    => 'usd'
	  )

	  # add charge to grid model
	  Grid.where('project_id = ?', @project.id).each do |grid|
	  	grid.Paidfor = true
	  	grid.save
	  end

		rescue Stripe::CardError => e
		  flash[:error] = e.message
		  redirect_to charges_path
		end

		redirect_to project_path @project

	end

end
