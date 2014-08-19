class DepartmentsController < ApplicationController
	before_filter :authenticate_user!
  SORT_MAP = {
    0 => "id",
    1 => "name",
    2 => "description",
    3 => "template",
    4 => "manager",
    5 => "created_at",
    6 => "status"
  }

  SORT_MAP_MEMBER = {
    0 => "id",
    1 => "full_name",
    2 => "email",
    3 => "name",
    4 => "team_leader_id"
  }

  #
  # @author DangNH
  #
  # @param source [Symbol] the format type, `:json`
  # @param target [Datatable object] the format type, `:json`
  # @return [String] the object converted into the expected format.
  # @deprecated Use {#my_new_method} instead of this method because
  #   it uses a library that is no longer supported in Ruby 1.9.
  #   The new method accepts the same parameters.
  # @note This method should only be used in outer space.
  # @todo improve this method by using Ruby-core API
  # @example Reverse a String
  #   demo = DemoClass.new
  #   demo.start!
	def index
		if request.xhr?
      organization_id = params["organization_id"]
      per_page = params[:iDisplayLength] ||  Settings.per_page
      page = params[:iDisplayStart] ? ((params[:iDisplayStart].to_i/per_page.to_i) + 1) : 1
      params[:iSortCol_0] = 1 if params[:iSortCol_0].blank?
      sort_field = SORT_MAP[params[:iSortCol_0].to_i]
      @departments = Department.get_all_departments(page, per_page, params[:sSearch], sort_field + " " + params[:sSortDir_0])
      render :json => @departments
      return
    end
	end

	def new
		@department = Department.new
	end	

	def edit
		@department = Department.find(params[:id])
		@template= @department.cds_template
		@manager = User.find(@department.manager_id)
	end

	def create
		organization_id = params["organization_id"]
		@department = Department.new(params[:department])
		@department.user_ids = params[:department][:manager_id]

		respond_to do |format|
      user = User.find(params[:department][:manager_id])
			if @department.save
        user.update_attributes(is_manager: true, team_leader_id: User.where(is_bod: true).first.id)

        if user.departments.count == 1
          user.update_attributes(main_department_id: @department.id, pre_department_id: @department.id)
        else
          user.update_attributes(main_department_id: @department.id, pre_department_id: user.main_department_id)
        end


        format.html { redirect_to "/organizations/#{organization_id}/departments/#{@department.id}/edit", notice: 'Department was successfully created.' }
        format.json { render json: @department, status: :created, location: @department }
      else
        format.html { render action: "new" }
        format.json { render json: @department.errors, status: :unprocessable_entity }
      end
		end
	end

	def update
		organization_id = params["organization_id"]
		@department = Department.find(params[:id])
		respond_to do |format|
			if @department.update_attributes(params[:department])

        if @department.manager_id != params[:department][:manager_id]
          UsersDepartment.where(user_id: @department.manager_id, department_id: @department.id).destroy_all
          UsersDepartment.create(user_id: params[:department][:manager_id], department_id: @department.id)
          User.find(params[:department][:manager_id]).update_attributes(is_manager: true, main_department_id: @department.id, pre_department_id: User.find(params[:department][:manager_id]).main_department_id)
        
          @department.users.where("users.id != (?)", @department.manager_id).each do |user|
            user.update_attributes(team_leader_id: @department.manager_id)
          end

        end

        format.html { redirect_to "/organizations/#{organization_id}/departments", notice: 'Department was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @department.errors, status: :unprocessable_entity }
      end
		end
	end

	def destroy
		@department = Department.find(params[:data])
    respond_to do |format|
      unless @department.id == 1 || @department.id == 2
        @department.users.each do |user|
          # User is manager
          if user.id == @department.manager_id
            # Get list of departments that user is manager
            department_managed = Department.where(manager_id: user.id).where("id != (?)", @department.id)
            if department_managed.count > 0
              p department_managed, "+++++++++++++"
              user.update_attributes(main_department_id: user.pre_department_id, pre_department_id: department_managed.first.id)
            elsif user.departments.where("departments.id != (?)", @department.id).count > 0
              p user.departments.where("departments.id != (?)", @department.id).count, "================"
              user.update_attributes(is_manager: nil, main_department_id: user.pre_department_id, pre_department_id: user.departments.first.id, team_leader_id: user.departments.first.manager_id)
            else
              p "OK"
              user.update_attributes(main_department_id: nil, pre_department_id: nil, is_manager: nil)
            end

          # User is team member
          else
            if user.departments.where("departments.id != (?)", @department.id).count > 0
              user.update_attributes(main_department_id: user.pre_department_id, pre_department_id: user.departments.first.id, team_leader_id: user.departments.first.manager_id)
            else
              user.update_attributes(main_department_id: nil, pre_department_id: nil, team_leader_id: nil)
            end
          end
        end
        users_department = UsersDepartment.where(department_id: @department.id).destroy_all

        if @department.destroy
          format.json { render json: @department }
        end
      else
        format.text { render text: "BoD / HR Department do not allow to delete!", status: :unprocessable_entity}
      end
    end
	end

	def get_all_members
		if request.xhr?
      organization_id = params["organization_id"]
      department_id = params[:id]
      per_page = params[:iDisplayLength] ||  Settings.per_page
      page = params[:iDisplayStart] ? ((params[:iDisplayStart].to_i/per_page.to_i) + 1) : 1
      params[:iSortCol_0] = 1 if params[:iSortCol_0].blank?
      sort_field = SORT_MAP_MEMBER[params[:iSortCol_0].to_i]
      @member_management = User.get_user_from_deparments(department_id, page, per_page, params[:sSearch], sort_field + " " + params[:sSortDir_0])
      render :json => @member_management
      return
    end
	end

	def get_user_to_teamlead
		if request.xhr?
      organization_id = params["organization_id"]
      department_id = params[:id]
      per_page = params[:iDisplayLength] ||  Settings.per_page
      page = params[:iDisplayStart] ? ((params[:iDisplayStart].to_i/per_page.to_i) + 1) : 1
      params[:iSortCol_0] = 1 if params[:iSortCol_0].blank?
      sort_field = SORT_MAP_MEMBER[params[:iSortCol_0].to_i]
      @user_teamlead = User.get_user_to_teamlead(department_id, page, per_page, params[:sSearch], sort_field + " " + params[:sSortDir_0])
      render :json => @user_teamlead
      return
    end
	end

	def get_all_user_not_in_department
		if request.xhr?
      organization_id = params["organization_id"]
      department_id = params[:id]
      per_page = params[:iDisplayLength] ||  Settings.per_page
      page = params[:iDisplayStart] ? ((params[:iDisplayStart].to_i/per_page.to_i) + 1) : 1
      params[:iSortCol_0] = 1 if params[:iSortCol_0].blank?
      sort_field = SORT_MAP_MEMBER[params[:iSortCol_0].to_i]
      @user_teamlead = User.get_all_user_not_in_department(department_id, page, per_page, params[:sSearch], sort_field + " " + params[:sSortDir_0])
      render :json => @user_teamlead
      return
    end
	end

	def add_user_to_department
		@user = User.find(params[:user_id])
    @user_department = UsersDepartment.new(user_id: @user.id, department_id: params[:id])
		respond_to do |format|
			if @user.update_attributes(team_leader_id: Department.find(params[:id]).manager_id, main_department_id: params[:id]) && @user_department.save
        if @user.departments.count == 1
          @user.update_attributes(pre_department_id: params[:id])
        end

        case params[:id]
          when "1"
            User.find(params[:user_id]).update_attributes(is_hr: true)
          when "2"
            User.find(params[:user_id]).update_attributes(is_bod: true)
        end 
        format.json { render json: @user }
      else
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
		end
	end

	def remove_user_from_department
		@user_department = UsersDepartment.where(user_id: params[:user_id], department_id: params[:id])
    @user = User.find(params[:user_id])

    respond_to do |format|
			if @user_department.destroy_all
        if @user.departments.count >= 1
          if params[:id] == @user.main_department_id
            @user.update_attributes(main_department_id: @user.pre_department_id)
            @user.update_attributes(team_leader_id: Department.find(@user.main_department_id).manager_id)
          elsif params[:id] == @user.pre_department_id
            @user.update_attributes(pre_department_id: @user.main_department_id)
            # @user.update_attributes(team_leader_id: Department.find(@user.main_department_id).manager_id)
          end
        else
          @user.update_attributes(main_department_id: nil, pre_department_id: nil)
          @user.update_attributes(team_leader_id: nil)
        end

        case params[:id]
          when "1"
            User.find(params[:user_id]).update_attributes(is_hr: nil)
          when "2"
            User.find(params[:user_id]).update_attributes(is_bod: nil)
        end
        format.json { render json: @user_department }
      else
        format.json { render json: @user_department.errors, status: :unprocessable_entity }
      end
		end
	end

end
