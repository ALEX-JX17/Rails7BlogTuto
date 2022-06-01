module ApplicationHelper
    def current_controller?(controller)
        params[:controller]==controller
    end
    def nav_class_for_controller(controller)
        params[:controller] == controller ? " active" : ""
    end
end
