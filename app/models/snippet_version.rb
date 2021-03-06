# The Supplejack Worker code is Crown copyright (C) 2014, New Zealand Government, 
# and is licensed under the GNU General Public License, version 3. 
# See https://github.com/DigitalNZ/supplejack_worker for details. 
# 
# Supplejack was created by DigitalNZ at the National Library of NZ
# and the Department of Internal Affairs. http://digitalnz.org/supplejack

class SnippetVersion < ActiveResource::Base

  self.site = ENV['MANAGER_HOST'] + "/snippets/:snippet_id/"
  self.user = ENV['MANAGER_API_KEY']
  self.element_name = "version"

  def snippet_id
    @attributes[:snippet_id] || @prefix_options[:snippet_id]
  end

end
