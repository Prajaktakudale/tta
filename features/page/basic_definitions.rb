module Definitions
  module Basic_definitions

    def form_filling(proj_name,sub_proj_name,ci_job_name,os_name,host_name,browser,type_of_env,date_of_exec,logDir,test_type)
      fill_in UPLOAD_PROJECT_NAME, :with => proj_name
      fill_in UPLOAD_SUB_PROJECT_NAME, :with => sub_proj_name
      fill_in UPLOAD_CI_JOB_NAME, :with => ci_job_name
      fill_in UPLOAD_OS_NAME, :with => os_name
      fill_in UPLOAD_HOST_NAME, :with => host_name
      fill_in UPLOAD_BROWSER, :with => browser
      fill_in UPLOAD_ENV, :with => type_of_env
      fill_in UPLOAD_EXEC_DATE, :with => date_of_exec
      attach_file UPLOAD_FILENAME,logDir
      fill_in UPLOAD_TEST_TYPE, :with => test_type
      #click_button("SUBMIT")
    end


    def select_the_option(field, dropdown)
      #if element=="sub_proj"
      #  select option,:from => "sub_project_id"
      #end
      #if element=="proj"
      #  select option,:from => "project_id"
      #end
      select field,:from => dropdown
    end

    def navigate_to_homepage()
      visit "http://localhost:3000"
    end

    def navigate_to_page(page_name)
      sleep(10)
      click_button(page_name)
    end

    def clickButton(button)
      click_button(button)
      sleep(10)
    end




    def enter_date(sdate, edate)
      fill_in "comparative_analysis_start_date" ,:with => sdate
      fill_in "comparative_analysis_end_date" , :with => edate
    end

    def fill_in_data(fill_in_id,fill_in_value)
      fill_in fill_in_id ,:with => fill_in_value
    end






    def page_has_css?(element_css)
      assert page.has_css?(element_css),"Nothing displayed"
    end

    def verify_error_is_displayed(page_name)
    #  if page_name == "UPLOAD TEST DATA"
    #    assert page.has_content?('This field is required.')
    #  end
    #  if page_name =="COMPARATIVE ANALYSIS"
    #    assert page.has_content?('Please Enter Start date')
    #    assert page.has_content?('Please Enter End date')
    #    assert page.has_content?('Please select a Project')
    #  end
    #  if page_name =="DEFECT ANALYSIS"
    #    assert page.has_content?("No Sub-Project Selected")
    #    assert page.has_content?("No Date Selected")
    #  end
    #  if page_name =="TEST PYRAMID VIEW"
    #    assert page.has_content?("No Sub-Project Selected")
    #  end
    end



    def page_has_content?(content)
        puts content
        assert page.has_content?(content),"************ No Display ***************"
    end

  end
end
World(Definitions::Basic_definitions)