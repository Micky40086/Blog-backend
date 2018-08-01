module ApplicationHelper
    def is_admin_path(str)
        ['admins','devise'].each do |r|
            return false if str.include?(r)
        end
        return true
    end
end
