require 'test_helper'

class DepartmentTest < ActiveSupport::TestCase
  def test_class_exist
    assert Department
  end

  def test_can_create_new_department
    a = Department.create!(name: "Marketing")
    assert a
    refute_equal nil, a.id
  end

  def test_can_add_user_to_a_department
    a = Department.create!(name: "Marketing")
    new_user = a.users.create!(name: 'Anoop', email: 'a@mail.com', phone: "8899")
    
    assert_equal new_user.department_id, a.id 
  end

  def test_can_get_user_name
    a = Department.create!(name: "Business")
    new_user = a.users.create!(name: 'Anoop', email: 'a@mail.com', phone: "8899")
    
    assert_equal 'Anoop', a.users.first.name 
  end

  def test_can_get_department_active_users
  	a = Department.create!(name: "Science")
    new_user = a.users.create!(name: 'Anoop', email: 'a@mail.com', phone: "8899", active: true)

    assert !a.active_users.empty?
  end
end
