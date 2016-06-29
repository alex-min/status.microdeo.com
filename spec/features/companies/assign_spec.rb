feature 'Assing a company to the user' do
  scenario 'The User already has a company' do
    when_i_try_to_assign_a_company_while_the_user_has_a_company
    then_i_should_be_redirected_to_the_clients
  end

  scenario 'The User has a demo company' do
    when_i_try_to_assign_a_company
    then_a_new_company_should_be_assigned
  end

  def when_i_try_to_assign_a_company_while_the_user_has_a_company
    login_with_default_user
    visit companies_assign_path
  end

  def then_i_should_be_redirected_to_the_clients
    expect(current_path).to eq(clients_path)
  end


  def when_i_try_to_assign_a_company
    signup_as_new_client
    visit companies_assign_path
    expect(current_path).to eq(companies_assign_path)
    expect(body).to include(I18n.t('companies.assign.add'))
  end

  def then_a_new_company_should_be_assigned

  end
end
