require_relative 'side_menu_panel'
class HomePage
  include PageObject
  include SideMenuPanel

  page_url "http://puppies.herokuapp.com"

  divs(:name, :class => 'name')
  buttons(:view_detail, :value => 'View Details')

  def select_puppy(name)
    index = index_for(name)
    view_detail_elements[index].click
  end

  private

  def index_for(name)
    name_elements.find_index { |the_div| the_div.text == name }
  end
  def home(data = {})
    populate_page_with data_for(:home_page, data)
    view_detail
  end
end
