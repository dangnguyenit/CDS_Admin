#encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

if Permission.count == 0
  full_org = Permission.create(     :name => "Full Access on Organization Management",                 :code => "full_organization_management",                 :group_permission_name => "Manage Organizations")
  view_org = Permission.create(     :name => "View List of Organization(s)",                           :code => "view_organization",                            :group_permission_name => "Manage Organizations")
  create_org = Permission.create(   :name => "Create List of Organization(s)",                         :code => "create_organization",                          :group_permission_name => "Manage Organizations")
  update_org = Permission.create(   :name => "Update List of Organization(s)",                         :code => "update_organization",                          :group_permission_name => "Manage Organizations")
  delete_org = Permission.create(   :name => "Delete List of Organization(s)",                         :code => "delete_organization",                          :group_permission_name => "Manage Organizations")

  full_group = Permission.create(   :name => "Full Access on Functional User Group",                   :code => "full_group_management",                          :group_permission_name => "Manage User Groups")
  view_group = Permission.create(   :name => "View  User Group",                                       :code => "view_group",                                     :group_permission_name => "Manage User Groups")
  create_group = Permission.create( :name => "Create  User Group",                                     :code => "create_group",                                   :group_permission_name => "Manage User Groups")
  update_group = Permission.create( :name => "Update  User Group",                                     :code => "update_group",                                   :group_permission_name => "Manage User Groups")
  delete_group = Permission.create( :name => "Delete  User Group",                                     :code => "delete_group",                                   :group_permission_name => "Manage User Groups")


  full_user = Permission.create(    :name => "Full Access on User Management",                         :code => "full_user_management",                           :group_permission_name => "Manage Users")
  view_user = Permission.create(    :name => "View User",                                              :code => "view_user",                                      :group_permission_name => "Manage Users")
  create_user = Permission.create(  :name => "Create User",                                            :code => "create_user",                                    :group_permission_name => "Manage Users")
  update_user = Permission.create(  :name => "Update User",                                            :code => "update_user",                                    :group_permission_name => "Manage Users")
  delete_user = Permission.create(  :name => "Delete User",                                            :code => "delete_user",                                    :group_permission_name => "Manage Users")
  user_pa = Permission.create(      :name => "User PA",                                                :code => "user_pa",                                        :group_permission_name => "Manage Users")

  full_dep   = Permission.create(   :name => "Full Access on Department Management",                   :code => "full_department_management",                     :group_permission_name => "Manage Department")
  view_dep   = Permission.create(   :name => "View Department Management",                             :code => "view_department",                                :group_permission_name => "Manage Department")
  create_dep = Permission.create(   :name => "Create Department Management",                           :code => "create_department",                              :group_permission_name => "Manage Department")
  update_dep = Permission.create(   :name => "Update Department Management",                           :code => "update_department",                              :group_permission_name => "Manage Department")
  delete_dep = Permission.create(   :name => "Delete Department Management",                           :code => "delete_department",                              :group_permission_name => "Manage Department")

  # view_log = Permission.create(     :name => "View Log",                                               :code => "view_log",                                       :group_permission_name => "Manage Logs")

  full_term   = Permission.create(  :name => "Full Access on Term Management",                         :code => "full_term_management",                           :group_permission_name => "Manage PA Term")
  view_term   = Permission.create(  :name => "View Term Management",                                   :code => "view_term",                                      :group_permission_name => "Manage PA Term")
  create_term = Permission.create(  :name => "Create Term Management",                                 :code => "create_term",                                    :group_permission_name => "Manage PA Term")
  update_term = Permission.create(  :name => "Update Term Management",                                 :code => "update_term",                                    :group_permission_name => "Manage PA Term")
  delete_term = Permission.create(  :name => "Delete Term Management",                                 :code => "delete_term",                                    :group_permission_name => "Manage PA Term")

  full_scoring_scale   = Permission.create(  :name => "Full Access on Scoring Scale Management",     :code => "full_scoring_scale_management",            :group_permission_name => "Manage Scoring Scale")
  view_scoring_scale   = Permission.create(  :name => "View Scoring Scale ",                         :code => "view_scoring_scale",                       :group_permission_name => "Manage Scoring Scale")
  create_scoring_scale = Permission.create(  :name => "Create Scoring Scale ",                       :code => "create_scoring_scale",                     :group_permission_name => "Manage Scoring Scale")
  update_scoring_scale = Permission.create(  :name => "Update Scoring Scale ",                       :code => "update_scoring_scale_",                    :group_permission_name => "Manage Scoring Scale")
  delete_scoring_scale = Permission.create(  :name => "Delete Scoring Scale ",                       :code => "delete_scoring_scale",                     :group_permission_name => "Manage Scoring Scale")

  full_other_subject   = Permission.create(    :name => "Full Access on Other Subject Management",      :code => "full_other_subject_management",              :group_permission_name => "Manage Other Subject")
  view_other_subject   = Permission.create(    :name => "View Other Subject",                           :code => "view_other_subject",                         :group_permission_name => "Manage Other Subject")
  create_other_subject   = Permission.create(  :name => "Create Other Subject",                         :code => "create_other_subject",                       :group_permission_name => "Manage Other Subject")
  update_other_subject   = Permission.create(  :name => "Update Other Subject",                         :code => "update_other_subject",                       :group_permission_name => "Manage Other Subject")
  delete_other_subject   = Permission.create(  :name => "Delete Other Subject",                         :code => "delete_other_subject",                       :group_permission_name => "Manage Other Subject")

  full_title = Permission.create(   :name => "Full Access on Title",                             :code => "full_title",                                     :group_permission_name => "Manage Title")
  view_title = Permission.create(   :name => "View Title",                                       :code => "view_title",                                     :group_permission_name => "Manage Title")
  create_title = Permission.create( :name => "Create Title",                                     :code => "create_title",                                   :group_permission_name => "Manage Title")
  update_title = Permission.create( :name => "Update Title",                                     :code => "update_title",                                   :group_permission_name => "Manage Title")
  delete_title = Permission.create( :name => "Delete Title",                                     :code => "delete_title",                                   :group_permission_name => "Manage Title")

  full_template = Permission.create(  :name => "Full Access on Template",                              :code => "full_template",                                     :group_permission_name => "Manage Template")
  view_template = Permission.create(  :name => "View Template",                                        :code => "view_template",                                     :group_permission_name => "Manage Template")
  create_template = Permission.create( :name => "Create Template",                                     :code => "create_template",                                   :group_permission_name => "Manage Template")
  update_template = Permission.create( :name => "Update Template",                                     :code => "update_template",                                   :group_permission_name => "Manage Template")
  delete_template = Permission.create( :name => "Delete Template",                                     :code => "delete_template",                                   :group_permission_name => "Manage Template")

  full_pa = Permission.create(   :name => "Full Access on Performance Appraisal",                             :code => "full_pa",                                     :group_permission_name => "Manage Performance Appraisal")
  view_pa = Permission.create(   :name => "View Performance Appraisal",                                       :code => "view_pa",                                     :group_permission_name => "Manage Performance Appraisal")
  create_pa = Permission.create( :name => "Create Performance Appraisal",                                     :code => "create_pa",                                   :group_permission_name => "Manage Performance Appraisal")
  update_pa = Permission.create( :name => "Update Performance Appraisal",                                     :code => "update_pa",                                   :group_permission_name => "Manage Performance Appraisal")
  delete_pa = Permission.create( :name => "Delete Performance Appraisal",                                     :code => "delete_pa",                                   :group_permission_name => "Manage Performance Appraisal")

  full_cdp = Permission.create(   :name => "Full Access on Career Development Plan",                             :code => "full_cdp",                                     :group_permission_name => "Manage Career Development Plan")
  view_cdp = Permission.create(   :name => "View Career Development Plan",                                       :code => "view_cdp",                                     :group_permission_name => "Manage Career Development Plan")
  create_cdp = Permission.create( :name => "Create Career Development Plan",                                     :code => "create_cdp",                                   :group_permission_name => "Manage Career Development Plan")
  update_cdp = Permission.create( :name => "Update Career Development Plan",                                     :code => "update_cdp",                                   :group_permission_name => "Manage Career Development Plan")
  delete_cdp = Permission.create( :name => "Delete Career Development Plan",                                     :code => "delete_cdp",                                   :group_permission_name => "Manage Career Development Plan")

  full_statistic = Permission.create(   :name => "Full Access on Statistic",                             :code => "full_statistic",                                     :group_permission_name => "Manage Statistic")
  view_statistic = Permission.create(   :name => "View Statistic",                                       :code => "view_statistic",                                     :group_permission_name => "Manage Statistic")
  create_statistic = Permission.create( :name => "Create Statistic",                                     :code => "create_statistic",                                   :group_permission_name => "Manage Statistic")
  update_statistic = Permission.create( :name => "Update Statistic",                                     :code => "update_statistic",                                   :group_permission_name => "Manage Statistic")
  delete_statistic = Permission.create( :name => "Delete Statistic",                                     :code => "delete_statistic",                                   :group_permission_name => "Manage Statistic")

  full_comment = Permission.create( :name => "Reading and Commenting in All CDS/CDP - Full",                 :code => "full_comment",                        :group_permission_name => "Read and Comment in All CDS/CDP")
  view_comment = Permission.create( :name => "Reading and Commenting in All CDS/CDP - View",                 :code => "view_comment",                        :group_permission_name => "Read and Comment in All CDS/CDP")
  create_comment = Permission.create( :name => "Reading and Commenting in All CDS/CDP - Create",                 :code => "create_comment",                        :group_permission_name => "Read and Comment in All CDS/CDP")
  update_comment = Permission.create( :name => "Reading and Commenting in All CDS/CDP - Update",                 :code => "update_comment",                        :group_permission_name => "Read and Comment in All CDS/CDP")
  delete_comment = Permission.create( :name => "Reading and Commenting in All CDS/CDP - Delete",                 :code => "delete_comment",                        :group_permission_name => "Read and Comment in All CDS/CDP")

  full_review_cdp = Permission.create(   :name => "Review CDP - All",                                            :code => "review_cdp",                          :group_permission_name => "Review CDP")
  view_review_cdp = Permission.create(   :name => "Review CDP - View",                                            :code => "view_review_cdp",                          :group_permission_name => "Review CDP")
  create_review_cdp = Permission.create(   :name => "Review CDP - Create",                                            :code => "create_review_cdp",                          :group_permission_name => "Review CDP")
  update_review_cdp = Permission.create(   :name => "Review CDP - Update",                                            :code => "update_review_cdp",                          :group_permission_name => "Review CDP")
  delete_review_cdp = Permission.create(   :name => "Review CDP - Delete",                                            :code => "delete_review_cdp",                          :group_permission_name => "Review CDP")
  



end

if Organization.count == 0
  admin_org = Organization.create(
    name: "Super Organization",
    description: "Organization for admin"
  )
  admin_org.is_super_org = true
  admin_org.save
end

if UserGroup.count == 0
  group = UserGroup.create({
    name:"Administrator",
    permissions: Permission.all,
    organization: admin_org
  })
  group_hr = UserGroup.create(name: "HR", organization: admin_org)
    group_hr.permission_ids = [full_org.id, full_group.id, full_user.id, full_dep.id]

  group_bod = UserGroup.create(name: "BoD", organization: admin_org)

  group_staff = UserGroup.create(name: "Staff", organization: admin_org)
    group_staff.permission_ids = user_pa.id

end

if User.count == 0
  
  creaate_user = User.create(first_name: 'Site', last_name: "Administrator", email: "admin@elarion.com", password: "123456", password_confirmation: "123456", is_admin: true, user_groups: [group], organization: admin_org, staff_number: "32767")
  hr_user = User.create(first_name: 'Human Resource', last_name: "HR", email: "hr@gmail.com", password: "123456", password_confirmation: "123456", user_groups: [group_hr], organization: admin_org, staff_number: "32766")
  bod_user = User.create(first_name: 'Broad of Director', last_name: "BoD", email: "bod@gmail.com", password: "123456", password_confirmation: "123456", user_groups: [group_bod], organization: admin_org, staff_number: "32765")

end

if ScoringScale.count == 0
  scoring_scale_for_template = ScoringScale.create(name: "Scoring Scale for SDC", description: "Scoring scale for all slot in template of SDC")
    scoring1_for_template = Scoring.create(score: "1", description: "Does Not Meet Minimum Standards ", scoring_scale_id: scoring_scale_for_template.id)
    scoring2_for_template = Scoring.create(score: "2", description: "Needs Improvement", scoring_scale_id: scoring_scale_for_template.id)
    scoring3_for_template = Scoring.create(score: "3", description: "Meets Expectations", scoring_scale_id: scoring_scale_for_template.id)
    scoring4_for_template = Scoring.create(score: "4", description: "Exceeds expectations", scoring_scale_id: scoring_scale_for_template.id)
    scoring5_for_template = Scoring.create(score: "5", description: "Outstanding", scoring_scale_id: scoring_scale_for_template.id)
  scoring_scale_for_english = ScoringScale.create(name: "Scoring Scale for English", description: "Scoring scale for English")
    scoring1_for_english = Scoring.create(score: "1", description: "Level B", scoring_scale_id: scoring_scale_for_english.id)
    scoring2_for_english = Scoring.create(score: "2", description: "Level C (Internal)", scoring_scale_id: scoring_scale_for_english.id)
    scoring3_for_english = Scoring.create(score: "3", description: "Level C", scoring_scale_id: scoring_scale_for_english.id)
    scoring4_for_english = Scoring.create(score: "4", description: "TOEIC 750", scoring_scale_id: scoring_scale_for_english.id)
    scoring5_for_english = Scoring.create(score: "5", description: "TOEIC 800", scoring_scale_id: scoring_scale_for_english.id)
  scoring_scale_for_working_exp = ScoringScale.create(name: "Scoring Scale for Working Experience", description: "Scoring Scale for Working Experience")
    scoring1_for_working = Scoring.create(score: "1", description: "N/A", scoring_scale_id: scoring_scale_for_working_exp.id)
    scoring2_for_working = Scoring.create(score: "2", description: "1 Year", scoring_scale_id: scoring_scale_for_working_exp.id)
    scoring3_for_working = Scoring.create(score: "3", description: "2 Years", scoring_scale_id: scoring_scale_for_working_exp.id)
    scoring4_for_working = Scoring.create(score: "4", description: "3 Years", scoring_scale_id: scoring_scale_for_working_exp.id)
    scoring5_for_working = Scoring.create(score: "5", description: "4 Years (technical expert)", scoring_scale_id: scoring_scale_for_working_exp.id)
    scoring6_for_working = Scoring.create(score: "6", description: "5 Years (technical expert)", scoring_scale_id: scoring_scale_for_working_exp.id)
    scoring7_for_working = Scoring.create(score: "7", description: "1 Year (project management)", scoring_scale_id: scoring_scale_for_working_exp.id)
    scoring8_for_working = Scoring.create(score: "8", description: "3 Years (project management)", scoring_scale_id: scoring_scale_for_working_exp.id)
    scoring9_for_working = Scoring.create(score: "9", description: "5 Years (project management)", scoring_scale_id: scoring_scale_for_working_exp.id)
  scoring_scale_for_ba = ScoringScale.create(name: "Scoring Scale for BA Skills", description: "Scoring Scale for Working Experience")
    scoring1_for_ba = Scoring.create(score: "1", description: "N/A", scoring_scale_id: scoring_scale_for_ba.id)
    scoring2_for_ba = Scoring.create(score: "2", description: "Qualitative", scoring_scale_id: scoring_scale_for_ba.id)
  scoring_scale_for_testing = ScoringScale.create(name: "Scoring Scale for Testing Skills", description: "Scoring Scale for Testing Skills")
    scoring1_for_testing = Scoring.create(score: "1", description: "N/A", scoring_scale_id: scoring_scale_for_testing.id)
    scoring2_for_testing = Scoring.create(score: "2", description: "CTFL (internal)", scoring_scale_id: scoring_scale_for_testing.id)
    scoring3_for_testing = Scoring.create(score: "3", description: "CTFL (external)", scoring_scale_id: scoring_scale_for_testing.id)
  scoring_scale_for_technique = ScoringScale.create(name: "Scoring Scale for Technical Skills")
    scoring1_for_technique = Scoring.create(score: "1", description: "N/A", scoring_scale_id: scoring_scale_for_technique.id)
    scoring2_for_technique = Scoring.create(score: "2", description: "1 year (technical area)", scoring_scale_id: scoring_scale_for_technique.id)
    scoring3_for_technique = Scoring.create(score: "3", description: "TBD", scoring_scale_id: scoring_scale_for_technique.id)
    scoring4_for_technique = Scoring.create(score: "3", description: "PMP (internal)", scoring_scale_id: scoring_scale_for_technique.id)
    scoring5_for_technique = Scoring.create(score: "4", description: "PMP", scoring_scale_id: scoring_scale_for_technique.id)
end

if OtherSubject.count == 0
  other_subject_english = OtherSubject.create(name: "English Level", scoring_scale_id: scoring_scale_for_english.id)
  other_subject_working_exp = OtherSubject.create(name: "Working Experience", scoring_scale_id: scoring_scale_for_working_exp.id)
  other_subject_ba = OtherSubject.create(name: "BA Skills", scoring_scale_id: scoring_scale_for_ba.id)
  other_subject_testing = OtherSubject.create(name: "Testing Skills", scoring_scale_id: scoring_scale_for_testing.id)
  other_subject_technique = OtherSubject.create(name: "Technical Skills", scoring_scale_id: scoring_scale_for_technique.id)
end

if Competency.count == 0 && Level.count == 0 && Slot.count == 0
  # For "Productivity" Competency
  com1 = Competency.create(name: "Productivity")
    level1_com1 = Level.create(name: "Level 1", competency_id: com1.id)
      slot1a_level1_com1 = Slot.create(name: "Slot 1a", description: "Consistently perform well under supervision.", level_id: level1_com1.id, guideline: "Nếu được giao việc và được hướng dẫn cách làm thì hoàn tất tốt công việc được giao trong mức độ năng suất hợp lý, trong thời gian cho phép. Nếu có sai sót trong quá trình làm việc và đã được nhắc nhở về những lỗi cụ thể thì không lặp lại những lỗi này")
      slot1b_level1_com1 = Slot.create(name: "Slot 1b", description: "Recognized as a contributing member of the team.", level_id: level1_com1.id, guideline: "Là một thành viên đóng góp tích cực cho nhóm / dự án. Chủ động hỏi những vấn đề chưa hiểu, nêu rõ những khó khăn gặp phải, yêu cầu hỗ trợ. Ví dụ: bị quá tải thì phải kêu, hết việc thì phải báo ngay cho cấp quản lý; Những người khác không thấy nhân viên này là điểm yếu, là gánh nặng cho team trong productivity. Phản ví dụ: Khoảng 4:00 PM thấy ứng dụng cho khách hàng [bản production] deploy tại www.meperia.com bị down và không giải quyết được. 5:30 PM cứ thế đi về nhà mà không báo cho cấp trên để giải quyết triệt để")
      slot1d_level1_com1 = Slot.create(name: "Slot 1c", description: "Complete assigned tasks within scheduled completion dates. Communicate potential issues as soon as they are known.", level_id: level1_com1.id, guideline: "Hoàn tất công việc được giao một cách đúng hạn phù hợp với MTCL hàng năm của Công ty, với chất lượng đạt yêu cầu. Trao đổi, thông báo ngay về những vấn đề tiềm năng / những rủi ro [cả tích cực lẫn tiêu cực] khi phát hiện ra chúng")
      slot1c_level1_com1 = Slot.create(name: "Slot 1d", description: "Demonstrate a high level understanding of and compile with LARION standards, processes and procedures.", level_id: level1_com1.id, guideline: "Hiểu rõ và tuân thủ tốt các quy trình, quy định, thủ tục, chuẩn do LARION đang áp dụng. Báo cho cấp quản lý khi gặp khó khăn trong việc tuân thủ các quy trình, quy định, thủ tục, chuẩn do LARION đang áp dụng. Phát hiện ra các điểm không phù hợp / bất ổn trong quy trình và báo cho cấp quản lý. Đề xuất cải tiến cho cấp quản lý. Ví dụ về bằng chứng: kết quả các kỳ thi nội bộ liên quan đến quy trình / thủ tục do LARION đang áp dụng; mức độ NC gây ra trong quá trình làm việc")
      slot1e_level1_com1 = Slot.create(name: "Slot 1e", description: "Capable of locating and effectively using detailed information from the LARION Portal, SVN, Project Tool.", level_id: level1_com1.id, guideline: "Bằng chứng là kết quả training đối với nhân viên mới đã được xác nhận của cấp có thẩm quyền. Ví dụ: Nhân viên biết tìm tài liệu có liên quan đến công việc của mình trên SVN, biết làm đơn khi nghỉ phép, biết nơi truy xuất các thông tin general khác của công ty (contact, chính sách, quy định, quy trình ...). Phản ví dụ: Nhân viên thường đặt câu hỏi: Anh / chị ơi em phải làm sao để xin nghỉ phép? Làm sao để đưa được một file lên SVN? Phản ví dụ: Nhiều lần nghỉ không xin phép, nghỉ đột xuất mà ko có lý do chính đáng")
    level2_com1 = Level.create(name: "Level 2", competency_id: com1.id)
      slot2a_level2_com1 = Slot.create(name: "Slot 2a", description: "Recognized as a proactive member of the team.", level_id: level2_com1.id, guideline: "Là một thành viên đóng góp tích cực cho nhóm / dự án. Nằm trong số những người đóng góp hàng đầu cho dự án. Ví dụ: Nếu không có mình thì dự án sẽ bị ảnh hưởng về tiến độ. Ví dụ: Phải giải quyết được / hoàn tất tốt công việc của mình, hăng hái chủ động đề xuất quản lý giao task khi thấy mình đang rảnh / đã làm xong task. Phản ví dụ: Trong quá trình làm việc khi phát hiện ra Issue của mình / của đồng nghiệp mà không báo kịp thời cho người quản lý thì sẽ không pass Slot này.")
      slot2b_level2_com1 = Slot.create(name: "Slot 2b", description: "Complete critical tasks on time.", level_id: level2_com1.id, guideline: "Critical tasks: Những công việc quan trọng, chủ chốt, cốt lõi, độ phức tạp cao trong dự án, trong bộ phận mà nhân viên tham gia, ở góc độ vai trò tương ứng. Ví dụ: Nhân viên làm Business Analyst trong một dự án thì critical tasks là những công việc chủ chốt, cốt lõi, độ phức tạp cao liên quan đến phân tích yêu cầu khách hàng. Sắp tới release mà có 1 phần requirements chưa rõ do khách hàng bỏ trốn, chậm feedback, BA làm đủ các biện pháp từ email / Skype / call … để liên lạc và hối thúc KH để làm rõ requirements và support dev implement để có được ontime delivery. Nhân viên làm Developer trong một dự án thì critical tasks là những công việc liên quan đến thiết kế / tài liệu hóa / lập trình / sửa bugs của những thứ quan trọng, chủ chốt, cốt lõi, độ phức tạp cao. Nhân viên làm Tester trong một dự án thì thì critical tasks là những công việc liên quan đến việc phát triển test plan / test cases / tiến hành test execution của những thứ quan trọng, chủ chốt, cốt lõi, độ phức tạp cao trong dự án.")
      slot2c_level2_com1 = Slot.create(name: "Slot 2c", description: "Able to represent the skills and capabilities of your department/ practice unit/business unit.", level_id: level2_com1.id, guideline: "Represent: Đại diện. Có nhiều mức độ đại diện – ví dụ Đại diện cho dự án để training cho một nhân viên mới, training cho sinh viên thực tập về kiến thức, kỹ năng ở vai trò của mình; Đại diện cho dự án để làm việc với dự án khác; đại diện cho dự án làm việc với khách hàng; Có khả năng chịu trách nhiệm chính trong dự án về chuyên môn mà mình đang đảm nhận; Đại diện cho bộ phận chuyên môn của mình ở phạm vi công ty để làm việc với bất cứ đối tượng nào khi cần. Nhân viên sẽ được đánh giá pass slot này nếu có bằng chứng thuyết phục liên quan đến khả năng chịu trách nhiệm chính về chuyên môn trong dự án hiện tại và có khả năng đại diện cho bộ phận chuyên môn của mình ở phạm vi công ty để làm việc với bất cứ đối tượng nào khi cần. Ví dụ: Với BA thì những thứ sau được xem là bằng chứng: + Được assigned đi train BA Skills cho nhân viên mới ở tầm cty nhiều lần, hoặc + Đại diện dự án đi công tác nước ngoài, hoặc + Đại diện dự án đi gặp khách hàng tiềm năng")
    level3_com1 = Level.create(name: "Level 3", competency_id: com1.id)
      slot3a_level3_com1 = Slot.create(name: "Slot 3a", description: "Recognized internally as a solid knowledge resource.", level_id: level3_com1.id, guideline: "Cứ hễ có vấn đề gì về mảng kiến thức mà cần trợ giúp / câu trả lời là nghĩ ngay đến nhân viên này. Ví dụ: Có kiến thức rất cứng về domain knowledge. Ví dụ: Developer thì kiến thức chung phải rất cứng về công nghệ, cách thức design, design patterns, frameworks, fullstack capability")
      slot3b_level3_com1 = Slot.create(name: "Slot 3b", description: "Successfully complete tasks and assignments independently and supervise the work of others as requested.", level_id: level3_com1.id, guideline: "Nhân viên sẽ được đánh giá pass slot này nếu có bằng chứng thuyết phục: Khi được giao việc thì hoàn tất được công việc một cách độc lập, không cần có sự chỉ dẫn về cách làm, và Có thể hướng dẫn, hỗ trợ, giám sát người khác [vài người] hoàn tất công việc Supervision phải thể hiện ở mức độ giúp đỡ cái cần câu chứ không chỉ cho con cá, supervision phải tương đối dài hạn [6 months or more] và người được supervised phải tương đối thành công")
      slot3c_level3_com1 = Slot.create(name: "Slot 3c", description: "Regularly requested by Company or Business Unit leadership and clients for advice and guidance.", level_id: level3_com1.id, guideline: "Có khả năng tư vấn, định hướng, dẫn đường cho công ty và khách hàng về Chuyên môn kỹ thuật ở vai trò mình nắm giữ, hoặc Trong những vấn đề liên quan đến hoạt động chung của công ty Ví dụ: Ruby on Rails full stack capability developer – phải học những gì và làm thế nào thì tui định hướng, dẫn đường cho cả đội ngũ RoR của cty Ví dụ: CMMI Level 3 – cty chưa biết gì mà giờ có người tư vấn, định hướng, dẫn đường cho cty làm có hiệu quả cao để appraise thành công, áp dụng hiệu quả trong thực tế ==> đây là bằng chứng Ví dụ: Balanced Scorecard; ISO 27001:2005, ITIL; Hệ thống kiểm soát nội bộ; thị trường Nhật là những thứ tương tự") 

  # For "Problem Solving" Competency
  com2 = Competency.create(name: "Problem Solving")
    level1_com2 = Level.create(name: "Level 1", competency_id: com2.id)
      slot1a_level1_com2 = Slot.create(name: "Slot 1a", description: "Identify problems, think through potential solutions then communicate and/or escalate appropriately.", level_id: level1_com2.id, guideline: "Biết được thế nào là một Problem, khi sự việc diễn ra phải biết được có Problem trong đó hay không. Cố gắng tìm ra solution, sau đó thông báo cách giải quyết hoặc nếu không giải quyết được thì cũng vẫn phải thông báo để người khác giải quyết thay mình. Phản ví dụ: Khoảng 4:00 PM thấy ứng dụng cho khách hàng [bản production] deploy tại www.meperia.com  bị down và không giải quyết được. 5:30 PM cứ thế đi về nhà mà không báo cho cấp trên để giải quyết triệt để")
    level2_com2 = Level.create(name: "Level 2", competency_id: com2.id)
      slot2a_level2_com2 = Slot.create(name: "Slot 2a", description: "Identify and solve simple problems independently (for example: recognizing changes in scope and communicating them).", level_id: level2_com2.id, guideline: "Không cần hỏi người khác về giải pháp cho vấn đề [đơn giản] đang gặp phải. Simple problems là những vấn đề mà đa số những người khác đều tự giải quyết được. Phản ví dụ: Anh giải quyết được 50 vấn đề đơn giản trong thời gian qua nhưng trong đó có 1 vấn đề cực kỳ đơn giản ai cũng có thể giải quyết được, tại sao anh không giải quyết được")
      slot2b_level2_com2 = Slot.create(name: "Slot 2b", description: "Provide assistance in solving complex problems (complex – technically difficult, opposing viewpoints, risky, and/or sensitive).", level_id: level2_com2.id, guideline: "Đề xuất, hỗ trợ được trong việc giải quyết các vấn đề phức tạp")
      slot2c_level2_com2 = Slot.create(name: "Slot 2c", description: "Lead simple meetings for internal or external clients.  Peer and/or next level management are likely to attend these meetings. ", level_id: level2_com2.id, guideline: "Lead những buổi họp với clients với nội dung về problem tương ứng với vai trò của người đảm nhiệm, cuộc họp phải có kết quả tốt, hai bên phải thống nhất về vấn đề / cách giải quyết vấn đề / ra được Action Items và follow up những Action Items. Thời gian thực hiện liên tục trong 6 tháng. Chuẩn bị tài liệu trước buổi họp. Gửi email mời các thành viên liên quan tham gia. Chuẩn bị / kiểm tra cơ sở vật chất cho buổi họp [máy tính, máy chiếu, phòng ốc], dự kiến các tình huống có thể xảy ra trong buổi họp. Bám sát mục tiêu buổi họp, tránh lan man xa đề, lãng phí thời gian trong khi họp. Trả lời các thắc mắc trong buổi họp. Là người chịu trách nhiệm chính để làm rõ các action items cần làm sau buổi họp, làm rõ ai làm gì, khi nào cần xong. [có một số chi tiết liên quan ai làm gì, khi nào cần xong có thể phải tiếp tục làm rõ sau buổi họp]. Chịu trách nhiệm chính follow up / coordinate cho đến khi các action items xong mới thôi. Báo cáo cấp trên một cách phù hợp về các vấn đề liên quan đến nội dung / kết quả buổi họp.")
      slot2d_level2_com2 = Slot.create(name: "Slot 2d", description: "Possess and use good diagnosis/troubleshooting skills.", level_id: level2_com2.id, guideline: "Sở hữu những kỹ năng / công cụ (có thể là những chiêu trò) đặc biệt nằm ngoài những thứ Standard của dự án để tìm ra vấn đề / giải quyết vấn đề một cách nhanh chóng, hiệu quả. Ví dụ: Đối với Developer: sở hữu khả năng sử dụng debugging tools, commands, application / scripts để tìm / giải quyết công việc nhanh và hiệu quả. Có khả năng review code nhanh, tìm được những lỗi ẩn chứa nguy hiểm, lỗi khó phát hiện.")
    level3_com2 = Level.create(name: "Level 3", competency_id: com2.id)
      slot3a_level3_com2 = Slot.create(name: "Slot 3a", description: "Identifies and solves complex or sensitive problems (for example: associate performance, project scope issues, and priority changes or resolving multiple conflicting agendas).", level_id: level3_com2.id, guideline: "Không cần hỏi người khác về giải pháp cho vấn đề phức tạp đang gặp phải. Thế nào là vấn đề phức tạp hoặc nhạy cảm trong phát triển phần mềm? Yêu cầu của khách hàng phức tạp, logic xử lý phức tạp, giải thuật phức tạp và có đòi hỏi cao về performance, security; đòi hỏi hiểu biết cao để ứng dụng các frameworks sẵn có thay vì phải hiện thực từ đầu; phải xử lý các vấn đề phức tạp đồng thời Ví dụ: Đối với BA, biết nhiều business models và vận dụng để đề xuất hướng giải quyết những vấn đề phức tạp về requirements (conflict, inconsistency trên diện rộng, scalability, etc.) nhanh và hiệu quả – hoặc những vấn đề có thể ảnh hưởng rất lớn đến time, scope, cost, quality của dự án")
      slot3b_level3_com2 = Slot.create(name: "Slot 3b", description: "Breaks down major issues and problems into workable pieces; sees whole situation behind a problem or issue;understands the causes, effects, implications; sets priorities and takes right action for resolution.", level_id: level3_com2.id, guideline: "Có khả năng chia nhỏ vấn đề lớn, phức tạp thành những phần nhỏ hơn để xử lý; Nắm được bức tranh tổng thể của một vấn đề phức tạp; hiểu rõ nguyên nhân, hậu quả, những vấn đề có liên quan; thiết lập được độ ưu tiên, thứ tự và tiến hành các công việc phù hợp để giải quyết bài toán")
    level4_com2 = Level.create(name: "Level 4", competency_id: com2.id)
      slot4a_level4_com2 = Slot.create(name: "Slot 4a", description: "Identify and solve complex or sensitive problems at the strategic executive level.", level_id: level4_com2.id, guideline: "Ví dụ: Phát biểu bài toán 7 năm của công ty và giải quyết nó.   Phát biểu bài toán technical lead của công ty và giải quyết nó. Phát biểu bài toán quản lý chi phí / năng suất của công ty và giải quyết nó")
      slot4b_level4_com2 = Slot.create(name: "Slot 4b", description: "Anticipate project and/or assignment risks and provide potential solutions.", level_id: level4_com2.id, guideline: "Slot này có vẻ yếu hơn slot 4a quá. Risks liên quan đến dự án là gì, đề xuất giải pháp và thực thi các biện pháp này để đạt mục tiêu quản lý risks")

  # For "Knowledge and Skill" Competency
  com3 = Competency.create(name: "Knowledge and Skills")
    level1_com3 = Level.create(name: "Level 1", competency_id: com3.id)
      slot1a_level1_com3 = Slot.create(name: "Slot 1a", description: "Working knowledge of at least one development technology that matches the company’s business focus", level_id: level1_com3.id, guideline: "Có kiến thức của một công nghệ, kỹ thuật nào đó sử dụng trong công việc tại công ty. Kết quả thi chuyên môn có thể được xem là một loại bằng chứng. Ví dụ 1: tối thiểu 6 tháng kiến thức / kinh nghiệm làm việc full-time developer trong một dự án Ruby on Rails. Ví dụ 2: tối thiểu 6 tháng kiến thức / kinh nghiệm làm việc full-time BA cho 1 dự án [GUI, use cases]. Ví dụ 3: tối thiểu 6 tháng kiến thức / kinh nghiệm làm việc full-time tester cho 1 dự án [viết test cases, các kỹ thuật test].")
      slot1b_level1_com3 = Slot.create(name: "Slot 1b", description: "Able to apply development technology", level_id: level1_com3.id, guideline: "Áp dụng được công nghệ, kỹ thuật đó trong công việc. Ví dụ 1: tối thiểu 6 tháng kinh nghiệm làm việc full-time developer trong một dự án Ruby on Rails, thỏa MTCL của cty. Ví dụ 2: tối thiểu 6 tháng kinh nghiệm làm việc full-time BA cho 1 dự án, thỏa MTCL của cty. Ví dụ 3: tối thiểu 6 tháng kinh nghiệm làm việc full-time tester cho 1 dự án, thỏa MTCL của cty")
      slot1c_level1_com3 = Slot.create(name: "Slot 1c", description: "Follow best practices for development ", level_id: level1_com3.id, guideline: "Tuân thủ theo những cách thực hành tốt trong quá trình làm việc. Slot này rất khó, có vẻ quá sức của Level 1. Ví dụ về cách thực hành tốt: Trong từng mảng công việc đều có những cách thực hành tốt [BA, Developer, Tester]. Đối với BA thì đó là BA Working Process related stuff, GUI Design Principles, BA Skills. Đối với Developer thì đó là Working Process related stuff, Design best practices, Coding best practices, Unit Test best practices. Đối với Tester thì đó là Working Process related stuff, Test case design best practices, Testing execution best practices. Phản ví dụ: NC liên quan đến document control, quy ước đặt tên file, tên thư mục, không tuân thủ coding convention, không viết unit test, BA / PM không confirm understanding với khách hàng để lấy approval")
    level2_com3 = Level.create(name: "Level 2", competency_id: com3.id)
      slot2a_level2_com3 = Slot.create(name: "Slot 2a", description: "Able to understand information system design", level_id: level2_com3.id, guideline: "Hiểu được thiết kế của hệ thống thông tin trong dự án đang tham gia, ở vai trò của mình. Ví dụ: BA: Use case diagram. Ví dụ: Dev: DB design; SAD. Ví dụ: Tester: Đọc hiểu use cases, test cases, đếm được số test cases dựa vào use cases")
      slot2b_level2_com3 = Slot.create(name: "Slot 2b", description: "Able to do technical troubleshooting, problem solving", level_id: level2_com3.id, guideline: "Có khả năng tìm hiểu, chẩn đoán và giải quyết các vấn đề kỹ thuật. Sở hữu những kỹ năng / công cụ (có thể là những chiêu trò) đặc biệt nằm ngoài những thứ Standard của dự án để tìm ra vấn đề / giải quyết vấn đề một cách nhanh chóng, hiệu quả. Ví dụ: Đối với Developer: sở hữu khả năng sử dụng debugging tools, commands, application / scripts để tìm / giải quyết công việc nhanh và hiệu quả. Có khả năng review code nhanh, tìm được những lỗi ẩn chứa nguy hiểm, lỗi khó phát hiện.")
      slot2c_level2_com3 = Slot.create(name: "Slot 2c", description: "Able to conduct technical reviews.", level_id: level2_com3.id, guideline: "Có khả năng tiến hành technical reviews [nghĩa là đóng vai trò reviewer]. Reviewer phải đề xuất được, áp dụng được review checklist. Reviewer là người đóng vai trò phản biện để chỉ ra được các thiếu sót, khiếm khuyết của thứ được đem ra review. Bằng chứng phải được thể hiện thông qua Review Records có chất lượng, bằng chứng liên tục trong vòng 6 tháng trở lên. Bằng chứng còn cần phải thể hiện qua việc follow-up kết quả review để ra final output.")
      slot2d_level2_com3 = Slot.create(name: "Slot 2d", description: "Able to perform Task estimation", level_id: level2_com3.id, guideline: "Cần biết các kỹ thuật về estimate. Có khả năng ước lượng [ở mức độ khá chính xác, tối đa trong phạm vi sai lệch +/- 10%] nỗ lực cần để hoàn tất một công việc nào đó. Cần có bằng chứng liên tục trong vòng 6 tháng trở lên")
      slot2e_level2_com3 = Slot.create(name: "Slot 2e", description: "Display the ability to quickly absorb the core concepts of new technology in personal context and can effectively apply it to the project (Note: the technology and concepts must be in demand within our client base to be recognized here)", level_id: level2_com3.id, guideline: "Có khả năng tiếp thu nhanh chóng những khái niệm cốt lõi của một kỹ thuật, công nghệ mới ở vai trò của mình và áp dụng hiệu quả vào dự án. Hiệu quả công việc do áp dụng kiến thức vừa học là bằng chứng mạnh để đánh giá slot này. Tổng thời gian áp dụng kiến thức mới vừa học vào dự án ít nhất 6 tháng và có kết quả chứng minh được hiệu quả của việc áp dụng. Hoặc đã tìm hiểu và áp dụng được nhiều công nghệ mới vào dự án mà kết quả áp dụng các công nghệ đó được người  quản lý đánh giá cao. Tổng thời gian áp dụng những công nghệ mới là 6 tháng. Phản ví dụ: Đã tìm hiểu nhưng hiểu sai, hiểu không chính xác những khái niệm cốt lõi của một công nghệ, kỹ thuật nào đó. Phản ví dụ: Thi lần đầu bị failed. Kết quả thi là một bằng chứng để làm rõ thêm việc thấu hiểu các kiến thức đã học")
    level3_com3 = Level.create(name: "Level 3", competency_id: com3.id)
      slot3a_level3_com3 = Slot.create(name: "Slot 3a", description: "Have in depth knowledge of at least one development technology (Skilled Practitioner); or good knowledge of at least two development technologies (Broadly Developed Skill) that matching the company’s business focus", level_id: level3_com3.id, guideline: "In-depth: Hiểu sâu về một công nghệ nào đó. Đã từng chịu trách nhiệm chính về công nghệ này cho 1 hay nhiều dự án. Hiểu rõ bản chất phía sau của một công nghệ, những điểm mạnh / yếu của công nghệ, core của công nghệ, những lớp phía dưới của công nghệ, những lớp cấu thành công nghệ, áp dụng được công nghệ để tối ưu hóa solution. Good: Có kiến thức tốt về một công nghệ nào đó, ít khi phải hỏi ai về công nghệ này. Có thể chịu trách nhiệm chính về công nghệ này cho 1 hay nhiều dự án. Áp dụng / biết được khi nào sẽ áp dụng những kỹ thuật nào trong từng trường hợp cụ thể để giải quyết tốt vấn đề, không cần hỏi ai về những vấn đề kỹ thuật. ==> In-depth: Đây chính là solid resource về 1 công nghệ, hễ ai cần là nghĩ ngay đến người này. ==> Good: Đã có thể training cho người khác về công nghệ này")
      slot3b_level3_com3 = Slot.create(name: "Slot 3b", description: "Able to apply that technology to a medium size or larger application (effort of 30 man/months or higher)", level_id: level3_com3.id, guideline: "Thời áp dụng công nghệ liên tục trong 1 năm")
      slot3c_level3_com3 = Slot.create(name: "Slot 3c", description: "Have good understanding of non-functional requirements such as performance, scalability, security, extensibility, maintainability and create solutions meeting those requirements", level_id: level3_com3.id, guideline: "Nhận ra được vấn đề về non functional ngay trong giai đoạn phân tích, yêu cầu và hiện thực / design chứ không phải đến khi có vấn đề rồi mới đi giải quyết những vấn đề về non-functional. Thời gian áp dụng liên tục ít nhất 1 năm. Có hiểu biết tốt và tạo ra các giải pháp để đáp ứng các yêu cầu phi chức năng. Đã tạo ra giải pháp nào chưa? Nó giải bài toán phi chức năng nào?")
      slot3d_level3_com3 = Slot.create(name: "Slot 3d", description: "Understand the current standards and best practices of that technology and have knowledge of historical background and the technology roadmap for the next 1-2 years.", level_id: level3_com3.id, guideline: "Nắm rõ một công nghệ nào đó ở: Chuẩn mực hiện hành [bằng chứng: các bằng cấp đã đạt được chẳng hạn. Elance top 5% được xem là OK] và Những cách thực hành đúng [bằng chứng: đã áp dụng trong thực tế, có evidence] phù hợp với ngữ cảnh hiện tại và Lịch sử phát triển của công nghệ này [bằng chứng: đã từng nói / thuyết trình về history background của công nghệ này trong công ty cho nhiều người nghe] và Dự kiến phát triển sắp tới, hướng phát triển của công nghệ này, những vấn đề tồn tại mà công nghệ này gặp phải, những vướng mắc mà công nghệ này sẽ phải được phát triển nữa mới giải quyết được. Hiểu được điểm mạnh, hạn chế của công nghệ tại thời điểm hiện tại và mức ảnh hưởng của nó đối với những solution trong dự án. Hiểu được trong tương lai gần công nghệ phát triển sẽ có những cải tiến / thay đổi gì và ảnh hưởng của cải tiến / thay đổi đó đến dự án nếu áp dụng những cải tiến / thay đổi đó.")
      slot3e_level3_com3 = Slot.create(name: "Slot 3e", description: "Able to conduct technical interview in their area of focus", level_id: level3_com3.id, guideline: "Có khả năng phỏng vấn ứng viên cho công ty. Đã được training về việc phỏng vấn ứng viên cho công ty. Bằng chứng: Đã phỏng vấn, càng nhiều càng tốt, ít nhất 5 ứng viên")
      slot3f_level3_com3 = Slot.create(name: "Slot 3f", description: "Anticipate technical risks and can provide potential solutions", level_id: level3_com3.id, guideline: "Phát hiện và cung cấp những rủi ro khi áp dụng một công nghệ nào đó để giải quyết vấn đề trong dự án, mức độ ảnh hưởng của nó đến đâu và các phương pháp thay thế, hoặc làm giảm nhẹ, giải quyết rủi ro đó.")
      slot3g_level3_com3 = Slot.create(name: "Slot 3g", description: "Participate in development of new technology for business focus.", level_id: level3_com3.id, guideline: "Nếu công ty chưa có 1 công nghệ nào đó [mà công ty muốn tập trung vào] mà nhân viên này có tham gia vào quá trình tìm hiểu và áp dụng thì được xem là bằng chứng. Ví dụ CMMI Level 3: Công ty chưa có, cty muốn tập trung vào, người này có tham gia vào quá trình tìm hiểu, sau đó tham gia áp dụng thành công CMMI Level 3 trong công ty thì được xem là bằng chứng. Ví dụ Android application development: Giả sử công ty chưa có công nghệ này, bây giờ muốn tập trung vào, người này có tham gia vào quá trình tìm hiểu, sau đó áp dụng thành công vào quá trình làm trong các dự án về Android application development ==> bằng chứng. Ví dụ: Responsive website template / theme; Fullstack Ruby on Rails developer: Giả sử công ty chưa có công nghệ này, bây giờ muốn tập trung vào, người này có tham gia vào quá trình tìm hiểu, sau đó áp dụng thành công vào quá trình làm trong các dự án ==> bằng chứng. Ví dụ Portfolio Management: Công ty chưa áp dụng bài bản, bây giờ muốn tập trung vào, người này có tham gia vào quá trình tìm hiểu, sau đó áp dụng thành công vào quá trình quản lý các portfolios ==> bằng chứng. .Ví dụ quản lý năng suất: Công ty chưa áp dụng bài bản, bây giờ muốn tập trung vào, người này có tham gia vào quá trình tìm hiểu, sau đó áp dụng thành công vào quá trình quản lý năng suất ==> bằng chứng. Ví dụ quản lý dự toán [estimation methods]: Công ty chưa áp dụng bài bản, bây giờ muốn tập trung vào, người này có tham gia vào quá trình tìm hiểu, sau đó áp dụng thành công vào quá trình quản lý dự toán ==> bằng chứng")
    level4_com3 = Level.create(name: "Level 4", competency_id: com3.id)
      slot4a_level4_com3 = Slot.create(name: "Slot 4a", description: "Have in depth knowledge of at least one development technology and good knowledge of other technology (Advanced Skill Level); or in good knowledge of at least three development technologies (Advanced Generalist) that matching the company’s business focus.", level_id: level4_com3.id, guideline: "N/A")
      slot4b_level4_com3 = Slot.create(name: "Slot 4b", description: "Able to apply that technology to a large size or larger application (effort of 60 man/months or higher)", level_id: level4_com3.id, guideline: "N/A")
      slot4c_level4_com3 = Slot.create(name: "Slot 4c", description: "Research, learn, apply and distribute information regarding Software Development tools, techniques and market trends", level_id: level4_com3.id, guideline: "N/A")
      slot4d_level4_com3 = Slot.create(name: "Slot 4d", description: "Able to absorb new technologies quickly and can apply them immediately.", level_id: level4_com3.id, guideline: "N/A")


  # For "Communication" Competency
  com4 = Competency.create(name: "Communication")
    level1_com4 = Level.create(name: "Level 1", competency_id: com4.id)
      slot1a_level1_com4 = Slot.create(name: "Slot 1a", description: "Capable of internal interaction. This is evident in all core communications. Example: Writing: Weekly report, email, Bug tracker, update document, etc. Reading and understanding: Project documents, Company policy, Guideline(Bug tracker, SVN, HRM), etc. Communicating with team member: discuss and  raise issues as soon as they are known", level_id: level1_com4.id, guideline: "Báo cáo tuần / timesheet: đầy đủ, ngắn gọn, chính xác. Viết email: gửi đúng, đủ và không sai người nhận, đúng chính tả, ngữ pháp. Nội dung đầy đủ, rõ ràng, đúng trình tự [subject, đầu thư, giữa thư, cuối thư], chữ ký theo format của cty. Biết cách truy xuất các chính sách, quy định, thủ tục, quy trình, hướng dẫn của công ty. Đọc hiểu và áp dụng đúng các chính sách, quy định, thủ tục, quy trình, hướng dẫn của công ty. Đề xuất các cải tiến nếu có. Trong quá trình làm việc với các team members: phải trao đổi và nêu ra các issues ngay khi phát hiện ra. Tránh trường hợp “sao biết mà không nói”")
      slot1b_level1_com4 = Slot.create(name: "Slot 1b", description: "Effectively attend simple meetings", level_id: level1_com4.id, guideline: "Chuẩn bị / tìm hiểu tài liệu trước khi họp. Đi họp / đi học đúng giờ. Bám sát mục tiêu buổi họp, tránh lan man xa đề, lãng phí thời gian trong khi họp. Lắng nghe, thảo luận, đóng góp ý kiến tích cực, trên tinh thần xây dựng, tôn trọng ý kiến các thành viên khác. Tránh ngồi nghe thụ động chẳng có ý kiến đóng góp gì, chỉ tham gia như một quan sát viên. Thống nhất ý kiến, các action items cần làm sau buổi họp, làm rõ ai làm gì, khi nào cần xong. [có một số chi tiết liên quan ai làm gì, khi nào cần xong có thể phải tiếp tục làm rõ sau buổi họp]")
    level2_com4 = Level.create(name: "Level 2", competency_id: com4.id)
      slot2a_level2_com4 = Slot.create(name: "Slot 2a", description: "Lead simple internal meetings.  Peers and/or next level management are likely to attend these meetings", level_id: level2_com4.id, guideline: "Chuẩn bị tài liệu trước buổi họp. Gửi email mời các thành viên liên quan tham gia. Chuẩn bị / kiểm tra cơ sở vật chất cho buổi họp [máy tính, máy chiếu, phòng ốc], dự kiến các tình huống có thể xảy ra trong buổi họp. Bám sát mục tiêu buổi họp, tránh lan man xa đề, lãng phí thời gian trong khi họp. Trả lời các thắc mắc trong buổi họp. Là người chịu trách nhiệm chính để làm rõ các action items cần làm sau buổi họp, làm rõ ai làm gì, khi nào cần xong. [có một số chi tiết liên quan ai làm gì, khi nào cần xong có thể phải tiếp tục làm rõ sau buổi họp]. Chịu trách nhiệm chính follow up / coordinate cho đến khi các action items xong mới thôi. Báo cáo cấp trên một cách phù hợp về các vấn đề liên quan đến nội dung / kết quả buổi họp.")
      slot2b_level2_com4 = Slot.create(name: "Slot 2b", description: "Capable of client interaction with supervision or guidance from management or team leadership", level_id: level2_com4.id, guideline: "Có bằng chứng trao đổi với khách hàng thông qua nhiều hình thức khác nhau: Email, chat, call with the customers. Đối với người làm việc với khách hàng nước ngoài: Cần có bằng chứng liên tục trong 6 tháng. English chat in working environment là một hình thức rèn luyện khả năng đọc / viết và được xem là một loại bằng chứng. Phải viết đúng chính tả, đúng ngữ pháp. Nội dung phải được trình bày rõ ràng, ngắn gọn, theo phong cách formal business writing. English speaking hour là một hình thức rèn luyện khả năng nghe / nói và được xem là một loại bằng chứng; Phải nói to, rõ, phát âm đúng; sử dụng  phong cách formal business speaking.")
      slot2c_level2_com4 = Slot.create(name: "Slot 2c", description: "Exhibit developed good written and verbal communications. This is evident in complete, accurate and timely status reports and project deliverables as well as clear and concise direct communication.", level_id: level2_com4.id, guideline: "Good: Có khả năng tốt về written & verbal communications, ít khi phải hỏi ai về written & verbal communications. Có thể chịu trách nhiệm chính về written & verbal communications cho 1 hay nhiều dự án [giới hạn ở vai trò của mình]. Good Writen: - Các tài liệu viết đạt chất lượng theo MTCL của cty. - Nội dung rõ ràng, dễ hiểu, cô đọng, đúng trọng tâm. - Nếu nội dung phức tạp, nhiều chữ nên có sơ đồ, hình vẽ. - Tần suất thể hiện tốt là thường xuyên. Good Verbal communication: - Phát biểu vấn đề rõ ràng, nội dung súc tích. - Đảm bảo người nghe phải hiểu bằng cách confirm lại “Do you understand?”. - Làm việc được với khách hàng trong nước, nước ngoài. - Nếu nói tiếng Anh thì phát âm đúng. - Biết sử dụng ngôn ngữ cơ thể để thể hiện. => Các ví dụ: - Làm các tài liệu quan trọng trong dự án như specs, plan, design document,... - Viết các formal email quan trọng - Review và giúp người khác chỉnh sửa các tài liệu, chat, mail quan trọng - Không có vấn đề gì trong giao tiếp với các thành viên dự án, công ty. - Không sử dụng các từ gây khó chịu, phản cảm. - Không có thái độ khó chịu khi được report lỗi, discuss với thái độ xây dựng ")
      slot2d_level2_com4 = Slot.create(name: "Slot 2d", description: "Demonstrated ability to transfer knowledge to junior associates and thus serve as a mentor.", level_id: level2_com4.id, guideline: "Khả năng transfer knowledge cho người level thấp hơn gồm ít ra là 2 phần: - On job training - Làm trainer cho khóa học nào đó [có quy mô tối thiểu: gồm 05 học viên trở lên, kéo dài ít nhất 12 hours]. Muốn được đi transfer knowledge để làm bằng chứng cho slot này thì phải được sự chấp thuận của người quản lý. Muốn pass slot này, phải có bằng chứng tối thiểu: Tiến hành on job training cho tối thiểu 03 team members; tối thiểu số giờ các trainees được training theo plan là 3 x 320 hours. Các trainees sau khi được training phải làm việc tốt. Việc làm trainer cho các khóa học là bằng chứng mạnh bổ sung, nhưng không bắt buộc phải có.")
    level3_com4 = Level.create(name: "Level 3", competency_id: com4.id)
      slot3a_level3_com4 = Slot.create(name: "Slot 3a", description: "Effectively deliver unpopular and/or difficult messages with an understanding of the receiver’s viewpoint.", level_id: level3_com4.id, guideline: "Một key member [Senior Software Engineer hoặc tương ứng trở lên] muốn rời khỏi công ty, thậm chí đã gửi đơn xin nghỉ việc. Thuyết phục người này ở lại bằng cách nào? Khách hàng không có ngân sách thuê ngoài dịch vụ training về quản lý dự án trong khi LARION lại .... làm sao để thuyết phục khách hàng? Tìm hiểu được thông tin từ khách hàng xem mức chi phí mà khách hàng chấp nhận cho 1 dự án fixed cost là bao nhiêu, hourly rate khách hàng chấp nhận được là bao nhiêu, có xét tới lợi ích của công ty. Ví dụ cụ thể: Ước lượng chúng ta cần charge khách hàng 530 working hours thì mới có mức lãi như kỳ vọng, nhưng chúng ta không biết mức độ chấp nhận của khách hàng thế nào, cần tìm hiểu thông tin từ khách hàng trước khi gửi bản đề xuất chính thức. 2 Business Analysts A và B có ý kiến trái ngược nhau về một vấn đề quan trọng nào đó. Làm sao đưa ra các lý lẽ rất thuyết phục rằng A đúng cho B hiểu. 1 contractor deploy an application in 6 hours. Tuy nhiên mức độ hợp lý chỉ 4 hours. Làm sao trao đổi về vấn đề này để contractor hiểu và đồng ý?")  
      slot3b_level3_com4 = Slot.create(name: "Slot 3b", description: "Demonstrate strong written and verbal communication skills. (Example: formal documents, client/peer or conference presentations).", level_id: level3_com4.id, guideline: "Strong: written & verbal communications là sở trường, lợi thế, sở thích. Được khách hàng, đồng nghiệp, cấp trên khen ngợi, bái phục. Được mọi người tham khảo ý kiến khi cần communicate cho tốt hơn. Strong written communication: Viết mail / tài liệu hiếm khi có các lỗi general (typing, grammar, spelling). Tài liệu viết ra phải dễ đọc / hiểu và giúp người đọc áp dụng nhanh / đúng vào công việc. Được đối tác / đồng nghiệp khen ngợi hoặc thích thú với văn phong của mình. Strong verbal communication: Trình bày lưu loát, rõ ràng, thuyết phục và khiến người nghe phải chú ý đến trong lúc mình trình bày. Người nghe hiểu được tất cả các ý mà mình trình bày. Thường xuyên đi đến kết quả mong muốn [đã set up từ trước] sau một buổi communication. Ví dụ: Tìm hiểu được thông tin từ khách hàng xem mức chi phí mà khách hàng chấp nhận cho 1 dự án fixed cost là bao nhiêu, hourly rate khách hàng chấp nhận được là bao nhiêu, có xét tới lợi ích của công ty. Ví dụ cụ thể: Ước lượng chúng ta cần charge khách hàng 530 working hours thì mới có mức lãi như kỳ vọng, nhưng chúng ta không biết mức độ chấp nhận của khách hàng thế nào, cần tìm hiểu thông tin từ khách hàng trước khi gửi bản đề xuất chính thức. Phản ví dụ: Khoảng 4:00 PM thấy ứng dụng cho khách hàng [bản production] deploy tại www.meperia.com bị down và không giải quyết được. 5:30 PM cứ thế đi về nhà mà không báo cho cấp trên để giải quyết triệt để. Phản ví dụ: Không chủ động trao đổi với các stakeholders có liên quan tới các vấn đề cần communicate. Phản ví dụ: Có vấn đề không thuộc thẩm quyền nhưng lại đi communicate / hứa hẹn với các stakeholders.")
      slot3c_level3_com4 = Slot.create(name: "Slot 3c", description: "Lead or facilitate complex meetings for either internal or external clients. The next level of management likely attends these meetings. (Example: formal reviews, workshops, requirements sessions).", level_id: level3_com4.id, guideline: "Thế nào là complex meetings? Có mâu thuẫn nghiêm trọng giữa các bên; hoặc liên quan đến sự phức tạp về chuyên môn")
    level4_com4 = Level.create(name: "Level 4", competency_id: com4.id)
      slot4a_level4_com4 = Slot.create(name: "Slot 4a", description: "Display good negotiating skills. (Example: setting scope and time-lines with client, vendor discussions, and technical strategies.)", level_id: level4_com4.id, guideline: "Ví dụ 1 về good negotiating skills: Khách hàng nói: Dự án phải được hoàn tất trong phạm vi dưới 300 triệu đồng. Khi dự toán thì thấy do phải mua một số components nên tổng dự toán của dự án là 340 triệu [280 + 60]. Nếu thương lượng được để khách hàng đồng ý trả chúng ta 280 triệu còn 60 triệu chi phí mua components khách hàng thanh toán riêng ==> good negotiating skills. Ví dụ 2 về good negotiating skills: Khách hàng muốn tiến hành dự án với 3 billable per month in 12 months. Tuy nhiên khách hàng lại muốn trả giá hourly rate thật là thấp, giả sử US$ 8.00. Nếu thương lượng được để khách hàng đồng ý trả chúng ta hourly rate US$ 12.00 với cam kết rằng khối lượng công việc chúng ta hoàn tất được là xứng đáng với hourly rate US$ 12.00 ==> good negotiating skills. Ví dụ 3 về good negotiating skills: Một key member muốn rời khỏi công ty, thậm chí đã gửi đơn xin nghỉ việc. Thuyết phục người này ở lại bằng cách nào? Ví dụ 4 về good negotiating skills: Một key member đã rời công ty và đi làm ở công ty khác. Công ty cần người này làm part time vào các thứ bảy, chủ nhật, buổi tối trong một khoảng thời gian. Vậy khoảng thời gian này có tính là overtime với hệ số 1,5 hay không? ==> thương lượng là nó chỉ hệ số 1")
      slot4b_level4_com4 = Slot.create(name: "Slot 4b", description: "Exhibit the appropriate interpersonal skills required to establish effective working relationships with clients and/or business partners.", level_id: level4_com4.id, guideline: "Thế nào là interpersonal skills? http://en.wikipedia.org/wiki/Interpersonal nói về Interpersonal Relationship, dựa vào đó sẽ cần có các skills để Flourishing Relationships. Hãy chứng minh bạn có Appropriate Interpersonal Skills! Bằng chứng nằm ở kết quả cuối cùng là “establish effective working relationships with clients and/or business partners.”. Khách hàng / đối tác là đồng minh của bạn! Ví dụ: Bạn có biết ngày sinh của khách hàng không? Có chúc mừng sinh nhật khách hàng không? Khách hàng có sở thích / mối quan tâm gì giống bạn vậy? Có bao giờ khách hàng chia sẻ gì về vấn đề cá nhân với bạn không? Bạn có biết thông tin ABC liên quan đến khách hàng không? Khách hàng có biết thông tin XYZ liên quan đến bạn không?")
      slot4c_level4_com4 = Slot.create(name: "Slot 4c", description: "Demonstrate excellent written and verbal communication skills as well as facilitation skills.", level_id: level4_com4.id, guideline: "Không chỉ strong, mà còn phải biết hát. Là một người cực kỳ xuất sắc về communications. Rất hiếm người đạt được slot này. Nếu làm việc với khách hàng nước ngoài bằng tiếng Anh thì một điều kiện cần là TOEIC 900?")
      slot4d_level4_com4 = Slot.create(name: "Slot 4d", description: "Effectively communicate LARION’s capabilities to clients.", level_id: level4_com4.id, guideline: "Phải có bằng chứng làm việc với khách hàng bên ngoài – chịu trách nhiệm chính, nhất là trong các dự án mới với khách hàng bên ngoài. Việc chịu trách nhiệm chính và biến dự án tiềm năng thành dự án thực tế cho công ty là bằng chứng rõ ràng.")
      slot4e_level4_com4 = Slot.create(name: "Slot 4e", description: "Lead or facilitate complex, multi-session, politically charged meetings for clients. The most senior members of the client (internal or external) team are likely to attend these meetings representing their own group’s interest.", level_id: level4_com4.id, guideline: "Chịu trách nhiệm chính từ phía LARION trong các buổi họp phức tạp, khó khăn, gồm nhiều buổi, có yếu tố political [ví dụ tại sao lại outsource thay vì tự làm; tại sao lại outsource sang VN mà không phải là ở India, etc] liên quan đến khách hàng. Các buổi họp này có đại diện cấp cao nhất của khách hàng tham gia.")
      slot4f_level4_com4 = Slot.create(name: "Slot 4f", description: "Independently interact with clients and provide guidance and supervision to others in this area ", level_id: level4_com4.id, guideline: "Giao tiếp độc lập với khách hàng và hướng dẫn, giám sát, trợ giúp người khác giao tiếp với khách hàng")
    level5_com4 = Level.create(name: "Level 5", competency_id: com4.id)
      slot5a_level5_com4 = Slot.create(name: "Slot 5a", description: "Recognized as possessing excellent communication and facilitation skills as well as negotiation skills.", level_id: level5_com4.id, guideline: "Không chỉ excellent về communications mà còn là excellent về negotiation. Có thể thương lượng những vấn đề mà người khác không thể thương lượng nổi")
      slot5b_level5_com4 = Slot.create(name: "Slot 5b", description: "Demonstrate effective skills in influencing Firm culture.", level_id: level5_com4.id, guideline: "Trong quá trình làm việc ở công ty: Có kỹ năng và ảnh hưởng ở mức độ văn hóa của tổ chức")
      slot5c_level5_com4 = Slot.create(name: "Slot 5c", description: "Demonstrate appropriate interpersonal skills required to serve as Executive Sponsor in key client relationships and/or represents LARION in strategic business partnerships.", level_id: level5_com4.id, guideline: "Là người đại diện công ty để thiết lập và duy trì mối quan hệ với những khách hàng chủ chốt, quan trọng của công ty. Đại diện công ty trong các mối quan hệ kinh doanh chiến lược. 'Không có tôi thì không xong'")

  # For "Planning and Organizing" Competency
  com5 = Competency.create(name: "Planning and Organizing")
    level1_com5 = Level.create(name: "Level 1", competency_id: com5.id)
      slot1a_level1_com5 = Slot.create(name: "Slot 1a", description: "Able to improve skill knowledge to adapt yourself to new requirements", level_id: level1_com5.id, guideline: "Bằng chứng [bao gồm, không chỉ gồm]: Đơn giản nhất là hoàn tất training plan cho newcomer và được đánh giá tốt [đúng hạn, kết quả kiểm tra tốt]. Tham gia các khóa huấn luyện của công ty và thi lần đầu là pass ngay. Nâng cao trình độ Anh văn đúng thời điểm như đã cam kết với công ty. Tìm hiểu vấn đề mới để giải quyết công việc trong dự án đạt đúng ước lượng hợp lý đã đề ra")
      slot1b_level1_com5 = Slot.create(name: "Slot 1b", description: "Able to write report if having any request", level_id: level1_com5.id, guideline: "Good meeting minutes, các báo cáo về một vấn đề nào đó khi được yêu cầu")
      slot1c_level1_com5 = Slot.create(name: "Slot 1c", description: "Estimate how much time one has, to allocate it effectively, and to stay within time limits and deadlines.", level_id: level1_com5.id, guideline: "Thể hiện ở 2 khía cạnh: Với chừng đó thời gian có được thì cần hoàn tất khối lượng công việc tương xứng ==> đây là thứ cần được hỏi và trả lời hàng ngày: Do I finish a reasonable amount of tasks today? Does the peer / direct manager / customer happy with my achievement? Nếu thời gian đang được sử dụng không hiệu quả do yếu tố khách quan thì cần có phản hồi với những người có liên quan một cách kịp thời [ví dụ: suốt ngày đi họp mà lại sử dụng thời gian họp kém hiệu quả …]. Với chừng đó thời gian có được thì không over-commit để rồi không đạt được commitment. + Có công việc được giao thì có thể estimate được khi nào xong")
      slot1d_level1_com5 = Slot.create(name: "Slot 1d", description: "Arrange and finish tasks creatively ", level_id: level1_com5.id, guideline: "Có thể đánh độ ưu tiên cho công việc được giao. Sẵn sàng OT khi cảm thấy không đủ thời gian giải quyết công việc. Tìm được các phương cách giải quyết được công việc sớm hơn dự tính ")
      slot1e_level1_com5 = Slot.create(name: "Slot 1e", description: "Complete assigned tasks within scheduled completion dates. Communicate potential issues as soon as they are known.", level_id: level1_com5.id, guideline: "Hoàn thành công việc được giao đúng hạn. Nói ngay với những người liên quan các vấn đề tiềm năng khi phát hiện ra chúng")
      slot1f_level1_com5 = Slot.create(name: "Slot 1f", description: "Prioritize duties in a manner consistent with project objectives/ goal", level_id: level1_com5.id, guideline: "Biết đánh đúng độ ưu tiên các công việc được giao. Linh động trong xử lý công việc, có thể thay đổi phù hợp khi độ ưu tiên của công việc có thay đổi. Ví dụ: đã được giao công việc rồi, nhưng khi khách hàng có công việc khác với độ ưu tiên cao hơn thì có thể sắp xếp được để hoàn thành công việc ưu tiên đúng hạn để đạt được mục tiêu của dự án.")
    level2_com5 = Level.create(name: "Level 2", competency_id: com5.id)
      slot2a_level2_com5 = Slot.create(name: "Slot 2a", description: "Organize tasks and make an effective plan for own task", level_id: level2_com5.id, guideline: "Hoàn tất tasks đúng hạn như ước lượng hợp lý đã đề ra")
      slot2b_level2_com5 = Slot.create(name: "Slot 2b", description: "Complete critical tasks on time.", level_id: level2_com5.id, guideline: "Hoàn tất critical tasks đúng hạn.")
      slot2c_level2_com5 = Slot.create(name: "Slot 2c", description: "Demonstrate exceptional time management and prioritization skills", level_id: level2_com5.id, guideline: "Khả năng quản lý thời gian mà mình có; khả năng đặt độ ưu tiên các tasks. Bằng chứng: Hoàn tất tốt công việc khi cùng lúc tham gia nhiều dự án / nhiều việc xen kẽ nhau")
      slot2d_level2_com5 = Slot.create(name: "Slot 2d", description: "Consistently deliver quality, on-time task assignment outcomes as a result of good planning and organizational skills.", level_id: level2_com5.id, guideline: "Nếu có bằng chứng consistently; không có phản ví dụ trong vòng ??? tháng [cả về chất lượng lẫn thời hạn]. Nếu hoàn tất task trong 3 hours nhưng lại tốn thêm 2 hours trở lên để đi sửa ==> chắc đây là phản ví dụ rồi")
      slot2e_level2_com5 = Slot.create(name: "Slot 2e", description: "Assistant to develop project plans and then tracks tasks, manage scope and risk, accurately reports status to client/project manager/delivery manager.", level_id: level2_com5.id, guideline: "Hỗ trợ làm các loại project plans, kiểm soát phạm vi và rủi ro, báo cáo tình trạng dự án cho khách hàng / trưởng dự án / … Ít nhất cũng phải hỗ trợ trong khoảng 3 tháng trở lên")
      slot2f_level2_com5 = Slot.create(name: "Slot 2f", description: "Successfully complete tasks and assignments independently and supervise the work of others as requested.", level_id: level2_com5.id, guideline: "Hoàn tất tasks một cách độc lập [không cần hỏi người khác về cách giải quyết] và có thể kiểm tra, theo dõi, hướng dẫn, hỗ trợ người khác. Bằng chứng có khả năng là phải hoàn tất được tasks một cách độc lập trong khoảng 3 tháng trở lên; hỗ trợ được người khác ít nhất tương ứng 6 billable man-month trở lên")
    level3_com5 = Level.create(name: "Level 3", competency_id: com5.id)
      slot3a_level3_com5 = Slot.create(name: "Slot 3a", description: "Develop project plans and then track tasks, manage scope and risk, accurately report status to client/project manager/delivery manager.", level_id: level3_com5.id, guideline: "Ít nhất 3 tháng trở lên?")
      slot3b_level3_com5 = Slot.create(name: "Slot 3b", description: "Develop estimates and schedules for potential follow on opportunities.", level_id: level3_com5.id, guideline: "Follow on opportunities: Cho khách hàng tiềm năng. Ít nhất cho 3 khách hàng tiềm năng với tổng số estimated effort ít nhất khoảng 6 billable man-months")
      slot3c_level3_com5 = Slot.create(name: "Slot 3c", description: "Successfully manage scope and client expectations to deliver Task deliverables  that meet and exceed client expectations", level_id: level3_com5.id, guideline: "Ít nhất 3 tháng trở lên? Phải có bằng chứng về việc quản lý client expectations và meet / exceed client expectations;")
      slot3d_level3_com5 = Slot.create(name: "Slot 3d", description: "Accountable for accurate and timely feedback to project associates through Task/ Documents reviews and/or other forms of formal feedback", level_id: level3_com5.id, guideline: "Có phản hồi chính xác và đúng hạn cho các đồng nghiệp / khách hàng hay không?")
    level4_com5 = Level.create(name: "Level 4", competency_id: com5.id)
      slot4a_level4_com5 = Slot.create(name: "Slot 4a", description: "Successfully handle and organize strategy task", level_id: level4_com5.id, guideline: "Một số ví dụ: Handle & Organize CMMI Level 3 project. Handle & Organize Portfolio Management. Handle & Organize: Quản lý năng suất tại công ty. Handle & Organize: Quản lý nhân sự tại công ty – bài toán giữ người, bài toán lương thưởng / phúc lợi")
      slot4b_level4_com5 = Slot.create(name: "Slot 4b", description: "Successfully manage and organize multiple tasks at the company level", level_id: level4_com5.id, guideline: "Vừa manage & organize CMMI Level 3 project, vừa quản lý phòng tổng hợp, vừa quản lý D2 một cách thành công trong tối thiểu 3 tháng chẳng hạn. Người đồng thời tham gia nhiều dự án [ví dụ 3 dự án phần mềm] nhưng không phải ở vị trí manager thì sao? Không được tính, chỉ được tính vào slot 2c. Người đồng thời làm manager ở vài dự án khác nhau thì sao?")
      slot4c_level4_com5 = Slot.create(name: "Slot 4c", description: "Accountable for developing his/ her own management skill set to meet the company expectation.", level_id: level4_com5.id, guideline: "PMP, MBA là điều kiện cần. Cần có bằng chứng về việc áp dụng management skill set thành công")
end

if TitleGroup.count == 0
  title_group = TitleGroup.new({
    name: "Titles for SDC",
    description: "This is the group of titles for software developement"
  })
  title_group.save
end

if CdsTemplate.count == 0
  cds_template = CdsTemplate.create(name: "Template for SDC", status: "Active", title_group_id: title_group.id, scoring_scale_id: scoring_scale_for_template.id)
  array = []
  Competency.all.each do |c|
    array.push(c.id)
  end
  cds_template.competency_ids = array
end

if Title.count == 0
  title1 = Title.create(name: "Associate Software Engineer", short_name: "ASE", value: 1, title_group_id: title_group.id)
    rank1_title1 = Rank.create(number_competencies_next_level: 0, title_id: title1.id)
    rank2_title1 = Rank.create(number_competencies_next_level: 3, title_id: title1.id)
      title1_competency1 = TitlesCompetency.create(title_id: title1.id, competency_id: com1.id, cds_template_id: cds_template.id, level_ranking: "0-1", value: 0.5)
      title1_competency2 = TitlesCompetency.create(title_id: title1.id, competency_id: com2.id, cds_template_id: cds_template.id, level_ranking: "0-1", value: 0.5)
      title1_competency3 = TitlesCompetency.create(title_id: title1.id, competency_id: com3.id, cds_template_id: cds_template.id, level_ranking: "0-1", value: 0.5)
      title1_competency4 = TitlesCompetency.create(title_id: title1.id, competency_id: com4.id, cds_template_id: cds_template.id, level_ranking: "0-1", value: 0.5)
      title1_competency5 = TitlesCompetency.create(title_id: title1.id, competency_id: com5.id, cds_template_id: cds_template.id, level_ranking: "0-1", value: 0.5)

      title1_other_subject1 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_english.id, cds_template_id: cds_template.id, title_id: title1.id, scoring: "1")
      title1_other_subject2 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_working_exp.id, cds_template_id: cds_template.id, title_id: title1.id, scoring: "1")
      title1_other_subject3 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_ba.id, cds_template_id: cds_template.id, title_id: title1.id, scoring: "1")
      title1_other_subject4 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_testing.id, cds_template_id: cds_template.id, title_id: title1.id, scoring: "1")
      title1_other_subject5 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_technique.id, cds_template_id: cds_template.id, title_id: title1.id, scoring: "1")

  title2 = Title.create(name: "Software Engineer", short_name: "SE", value: 2, title_group_id: title_group.id)

    rank1_title2 = Rank.create(number_competencies_next_level: 0, title_id: title2.id)
    rank2_title2 = Rank.create(number_competencies_next_level: 1, title_id: title2.id)
    rank3_title2 = Rank.create(number_competencies_next_level: 2, title_id: title2.id)
    rank4_title2 = Rank.create(number_competencies_next_level: 3, title_id: title2.id)
    rank5_title2 = Rank.create(number_competencies_next_level: 4, title_id: title2.id)
      title2_competency1 = TitlesCompetency.create(title_id: title2.id, competency_id: com1.id, cds_template_id: cds_template.id, level_ranking: "1", value: 1)
      title2_competency2 = TitlesCompetency.create(title_id: title2.id, competency_id: com2.id, cds_template_id: cds_template.id, level_ranking: "1-2", value: 1.5)
      title2_competency3 = TitlesCompetency.create(title_id: title2.id, competency_id: com3.id, cds_template_id: cds_template.id, level_ranking: "1-2", value: 1.5)
      title2_competency4 = TitlesCompetency.create(title_id: title2.id, competency_id: com4.id, cds_template_id: cds_template.id, level_ranking: "1-2", value: 1.5)
      title2_competency5 = TitlesCompetency.create(title_id: title2.id, competency_id: com5.id, cds_template_id: cds_template.id, level_ranking: "1", value: 1)

      title2_other_subject1 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_english.id, cds_template_id: cds_template.id, title_id: title2.id, scoring: "2")
      title2_other_subject2 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_working_exp.id, cds_template_id: cds_template.id, title_id: title2.id, scoring: "2")
      title2_other_subject3 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_ba.id, cds_template_id: cds_template.id, title_id: title2.id, scoring: "1")
      title2_other_subject4 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_testing.id, cds_template_id: cds_template.id, title_id: title2.id, scoring: "2")
      title2_other_subject5 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_technique.id, cds_template_id: cds_template.id, title_id: title2.id, scoring: "1")

  title3 = Title.create(name: "Senior Software Engineer", short_name: "SSE", value: 3, title_group_id: title_group.id)
    rank1_title3 = Rank.create(number_competencies_next_level: 0, title_id: title3.id)
    rank2_title3 = Rank.create(number_competencies_next_level: 1, title_id: title3.id)
    rank3_title3 = Rank.create(number_competencies_next_level: 2, title_id: title3.id)
    rank4_title3 = Rank.create(number_competencies_next_level: 3, title_id: title3.id)
    rank5_title3 = Rank.create(number_competencies_next_level: 4, title_id: title3.id)
      title3_competency1 = TitlesCompetency.create(title_id: title3.id, competency_id: com1.id, cds_template_id: cds_template.id, level_ranking: "++2", value: 1.8)
      title3_competency2 = TitlesCompetency.create(title_id: title3.id, competency_id: com2.id, cds_template_id: cds_template.id, level_ranking: "++2", value: 1.8)
      title3_competency3 = TitlesCompetency.create(title_id: title3.id, competency_id: com3.id, cds_template_id: cds_template.id, level_ranking: "++2", value: 1.8)
      title3_competency4 = TitlesCompetency.create(title_id: title3.id, competency_id: com4.id, cds_template_id: cds_template.id, level_ranking: "2-3", value: 2.5)
      title3_competency5 = TitlesCompetency.create(title_id: title3.id, competency_id: com5.id, cds_template_id: cds_template.id, level_ranking: "++2", value: 1.8)

      title3_other_subject1 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_english.id, cds_template_id: cds_template.id, title_id: title3.id, scoring: "3")
      title3_other_subject2 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_working_exp.id, cds_template_id: cds_template.id, title_id: title3.id, scoring: "3")
      title3_other_subject3 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_ba.id, cds_template_id: cds_template.id, title_id: title3.id, scoring: "2")
      title3_other_subject4 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_testing.id, cds_template_id: cds_template.id, title_id: title3.id, scoring: "2")
      title3_other_subject5 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_technique.id, cds_template_id: cds_template.id, title_id: title3.id, scoring: "2")

  title4a = Title.create(name: "Associate Technique Architect", short_name: "ATA", value: 4, career_path: "technique", title_group_id: title_group.id)
    rank1_title4a = Rank.create(number_competencies_next_level: 0, title_id: title4a.id)
    rank2_title4a = Rank.create(number_competencies_next_level: 2, title_id: title4a.id)
    rank3_title4a = Rank.create(number_competencies_next_level: 4, title_id: title4a.id)
      title4a_competency1 = TitlesCompetency.create(title_id: title4a.id, competency_id: com1.id, cds_template_id: cds_template.id, level_ranking: "2", value: 2, career_path: "technique")
      title4a_competency2 = TitlesCompetency.create(title_id: title4a.id, competency_id: com2.id, cds_template_id: cds_template.id, level_ranking: "2", value: 2, career_path: "technique")
      title4a_competency3 = TitlesCompetency.create(title_id: title4a.id, competency_id: com3.id, cds_template_id: cds_template.id, level_ranking: "2-3", value: 2.5, career_path: "technique")
      title4a_competency4 = TitlesCompetency.create(title_id: title4a.id, competency_id: com4.id, cds_template_id: cds_template.id, level_ranking: "3", value: 3, career_path: "technique")
      title4a_competency5 = TitlesCompetency.create(title_id: title4a.id, competency_id: com5.id, cds_template_id: cds_template.id, level_ranking: "2-3", value: 2.5, career_path: "technique")

      title4a_other_subject1 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_english.id, cds_template_id: cds_template.id, title_id: title4a.id, scoring: "3")
      title4a_other_subject2 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_working_exp.id, cds_template_id: cds_template.id, title_id: title4a.id, scoring: "4")
      title4a_other_subject3 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_ba.id, cds_template_id: cds_template.id, title_id: title4a.id, scoring: "2")
      title4a_other_subject4 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_testing.id, cds_template_id: cds_template.id, title_id: title4a.id, scoring: "2")
      title4a_other_subject5 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_technique.id, cds_template_id: cds_template.id, title_id: title4a.id, scoring: "3")

  title4b = Title.create(name: "Associate Engineering Manager", short_name: "AEM", value: 4, career_path: "management", title_group_id: title_group.id)
    rank1_title4b = Rank.create(number_competencies_next_level: 0, title_id: title4b.id)
    rank2_title4b = Rank.create(number_competencies_next_level: 2, title_id: title4b.id)
    rank3_title4b = Rank.create(number_competencies_next_level: 4, title_id: title4b.id)
      title4b_competency1 = TitlesCompetency.create(title_id: title4b.id, competency_id: com1.id, cds_template_id: cds_template.id, level_ranking: "2", value: 2, career_path: "management")
      title4b_competency2 = TitlesCompetency.create(title_id: title4b.id, competency_id: com2.id, cds_template_id: cds_template.id, level_ranking: "2", value: 2, career_path: "management")
      title4b_competency3 = TitlesCompetency.create(title_id: title4b.id, competency_id: com3.id, cds_template_id: cds_template.id, level_ranking: "2", value: 2, career_path: "management")
      title4b_competency4 = TitlesCompetency.create(title_id: title4b.id, competency_id: com4.id, cds_template_id: cds_template.id, level_ranking: "3-4", value: 3.5, career_path: "management")
      title4b_competency5 = TitlesCompetency.create(title_id: title4b.id, competency_id: com5.id, cds_template_id: cds_template.id, level_ranking: "++3", value: 2.8, career_path: "management")

      title4b_other_subject1 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_english.id, cds_template_id: cds_template.id, title_id: title4b.id, scoring: "3")
      title4b_other_subject2 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_working_exp.id, cds_template_id: cds_template.id, title_id: title4b.id, scoring: "7")
      title4b_other_subject3 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_ba.id, cds_template_id: cds_template.id, title_id: title4b.id, scoring: "2")
      title4b_other_subject4 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_testing.id, cds_template_id: cds_template.id, title_id: title4b.id, scoring: "2")
      title4b_other_subject5 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_technique.id, cds_template_id: cds_template.id, title_id: title4b.id, scoring: "1")

  title5a = Title.create(name: "Technique Architect", short_name: "TA", value: 5, career_path: "technique", title_group_id: title_group.id)
    rank1_title5a = Rank.create(number_competencies_next_level: 0, title_id: title5a.id)
    rank2_title5a = Rank.create(number_competencies_next_level: 2, title_id: title5a.id)
    rank3_title5a = Rank.create(number_competencies_next_level: 4, title_id: title5a.id)
      title5a_competency1 = TitlesCompetency.create(title_id: title5a.id, competency_id: com1.id, cds_template_id: cds_template.id, level_ranking: "2-3", value: 2.5, career_path: "technique")
      title5a_competency2 = TitlesCompetency.create(title_id: title5a.id, competency_id: com2.id, cds_template_id: cds_template.id, level_ranking: "3", value: 3, career_path: "technique")
      title5a_competency3 = TitlesCompetency.create(title_id: title5a.id, competency_id: com3.id, cds_template_id: cds_template.id, level_ranking: "3", value: 3, career_path: "technique")
      title5a_competency4 = TitlesCompetency.create(title_id: title5a.id, competency_id: com4.id, cds_template_id: cds_template.id, level_ranking: "3-4", value: 3.5, career_path: "technique")
      title5a_competency5 = TitlesCompetency.create(title_id: title5a.id, competency_id: com5.id, cds_template_id: cds_template.id, level_ranking: "++3", value: 2.8, career_path: "technique")
    
      title5a_other_subject1 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_english.id, cds_template_id: cds_template.id, title_id: title5a.id, scoring: "3")
      title5a_other_subject2 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_working_exp.id, cds_template_id: cds_template.id, title_id: title5a.id, scoring: "5")
      title5a_other_subject3 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_ba.id, cds_template_id: cds_template.id, title_id: title5a.id, scoring: "2")
      title5a_other_subject4 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_testing.id, cds_template_id: cds_template.id, title_id: title5a.id, scoring: "2")
      title5a_other_subject5 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_technique.id, cds_template_id: cds_template.id, title_id: title5a.id, scoring: "3")

  title5b = Title.create(name: "Engieering Manager", short_name: "EM", value: 5, career_path: "management", title_group_id: title_group.id)
    rank1_title5b = Rank.create(number_competencies_next_level: 0, title_id: title5b.id)
    rank2_title5b = Rank.create(number_competencies_next_level: 2, title_id: title5b.id)
    rank3_title5b = Rank.create(number_competencies_next_level: 4, title_id: title5b.id)
      title5b_competency1 = TitlesCompetency.create(title_id: title5b.id, competency_id: com1.id, cds_template_id: cds_template.id, level_ranking: "2-3", value: 2.5, career_path: "management")
      title5b_competency2 = TitlesCompetency.create(title_id: title5b.id, competency_id: com2.id, cds_template_id: cds_template.id, level_ranking: "3", value: 3, career_path: "management")
      title5b_competency3 = TitlesCompetency.create(title_id: title5b.id, competency_id: com3.id, cds_template_id: cds_template.id, level_ranking: "++3", value: 2.8, career_path: "management")
      title5b_competency4 = TitlesCompetency.create(title_id: title5b.id, competency_id: com4.id, cds_template_id: cds_template.id, level_ranking: "++4", value: 3.8, career_path: "management")
      title5b_competency5 = TitlesCompetency.create(title_id: title5b.id, competency_id: com5.id, cds_template_id: cds_template.id, level_ranking: "3-4", value: 3.5, career_path: "management")
  
      title5b_other_subject1 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_english.id, cds_template_id: cds_template.id, title_id: title5b.id, scoring: "4")
      title5b_other_subject2 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_working_exp.id, cds_template_id: cds_template.id, title_id: title5b.id, scoring: "8")
      title5b_other_subject3 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_ba.id, cds_template_id: cds_template.id, title_id: title5b.id, scoring: "2")
      title5b_other_subject4 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_testing.id, cds_template_id: cds_template.id, title_id: title5b.id, scoring: "2")
      title5b_other_subject5 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_technique.id, cds_template_id: cds_template.id, title_id: title5b.id, scoring: "3")

  title6a = Title.create(name: "Senior Technique Architect", short_name: "STA", value: 6, career_path: "technique", title_group_id: title_group.id)
    rank1_title6a = Rank.create(number_competencies_next_level: 0, title_id: title6a.id)
    rank2_title6a = Rank.create(number_competencies_next_level: 2, title_id: title6a.id)
    rank3_title6a = Rank.create(number_competencies_next_level: 4, title_id: title6a.id)
      title6a_competency1 = TitlesCompetency.create(title_id: title6a.id, competency_id: com1.id, cds_template_id: cds_template.id, level_ranking: "++3", value: 3.8, career_path: "technique")
      title6a_competency2 = TitlesCompetency.create(title_id: title6a.id, competency_id: com2.id, cds_template_id: cds_template.id, level_ranking: "3-4", value: 3.5, career_path: "technique")
      title6a_competency3 = TitlesCompetency.create(title_id: title6a.id, competency_id: com3.id, cds_template_id: cds_template.id, level_ranking: "++4", value: 3.8, career_path: "technique")
      title6a_competency4 = TitlesCompetency.create(title_id: title6a.id, competency_id: com4.id, cds_template_id: cds_template.id, level_ranking: "++4", value: 3.8, career_path: "technique")
      title6a_competency5 = TitlesCompetency.create(title_id: title6a.id, competency_id: com5.id, cds_template_id: cds_template.id, level_ranking: "3-4", value: 3.5, career_path: "technique")

      title6a_other_subject1 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_english.id, cds_template_id: cds_template.id, title_id: title6a.id, scoring: "4")
      title6a_other_subject2 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_working_exp.id, cds_template_id: cds_template.id, title_id: title6a.id, scoring: "6")
      title6a_other_subject3 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_ba.id, cds_template_id: cds_template.id, title_id: title6a.id, scoring: "2")
      title6a_other_subject4 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_testing.id, cds_template_id: cds_template.id, title_id: title6a.id, scoring: "2")
      title6a_other_subject5 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_technique.id, cds_template_id: cds_template.id, title_id: title6a.id, scoring: "3")

  title6b = Title.create(name: "Senior Engieering Manager", short_name: "SEM", value: 6, career_path: "management", title_group_id: title_group.id)
    rank1_title6b = Rank.create(number_competencies_next_level: 0, title_id: title6b.id)
    rank2_title6b = Rank.create(number_competencies_next_level: 2, title_id: title6b.id)
    rank3_title6b = Rank.create(number_competencies_next_level: 4, title_id: title6b.id)
      title6b_competency1 = TitlesCompetency.create(title_id: title6b.id, competency_id: com1.id, cds_template_id: cds_template.id, level_ranking: "3", value: 3, career_path: "management")
      title6b_competency2 = TitlesCompetency.create(title_id: title6b.id, competency_id: com2.id, cds_template_id: cds_template.id, level_ranking: "3-4", value: 3.5, career_path: "management")
      title6b_competency3 = TitlesCompetency.create(title_id: title6b.id, competency_id: com3.id, cds_template_id: cds_template.id, level_ranking: "++4", value: 3.8, career_path: "management")
      title6b_competency4 = TitlesCompetency.create(title_id: title6b.id, competency_id: com4.id, cds_template_id: cds_template.id, level_ranking: "4-5", value: 4.5, career_path: "management")
      title6b_competency5 = TitlesCompetency.create(title_id: title6b.id, competency_id: com5.id, cds_template_id: cds_template.id, level_ranking: "++4", value: 3.8, career_path: "management")    

      title6b_other_subject1 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_english.id, cds_template_id: cds_template.id, title_id: title6b.id, scoring: "5")
      title6b_other_subject2 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_working_exp.id, cds_template_id: cds_template.id, title_id: title6b.id, scoring: "9")
      title6b_other_subject3 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_ba.id, cds_template_id: cds_template.id, title_id: title6b.id, scoring: "2")
      title6b_other_subject4 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_testing.id, cds_template_id: cds_template.id, title_id: title6b.id, scoring: "2")
      title6b_other_subject5 = TitleGroupsOtherSubject.create(title_group_id: title_group.id, other_subject_id: other_subject_technique.id, cds_template_id: cds_template.id, title_id: title6b.id, scoring: "4")

  title7a = Title.create(name: "Director of Technology", short_name: "DoT", value: 7, career_path: "technique", title_group_id: title_group.id)
    rank1_title7a = Rank.create(number_competencies_next_level: 0, title_id: title7a.id)
    rank2_title7a = Rank.create(number_competencies_next_level: 0, title_id: title7a.id)
    rank3_title7a = Rank.create(number_competencies_next_level: 0, title_id: title7a.id)

  title7b = Title.create(name: "Director of Delivery", short_name: "DoD", value: 7, career_path: "management", title_group_id: title_group.id)
    rank1_title7b = Rank.create(number_competencies_next_level: 0, title_id: title7b.id)
    rank2_title7b = Rank.create(number_competencies_next_level: 0, title_id: title7b.id)
    rank3_title7b = Rank.create(number_competencies_next_level: 0, title_id: title7b.id)
end

# For test data
if User.count == 1
  # term = Term.create(name: "Term for 2014", start_date: "1/1/2014", end_date: "30/6/2014", status: "Active")
  

  manage_user = User.create(full_name: "Ngo Tu Minh", email: "minhnt@elarion.com", password: "123456", password_confirmation: "123456", user_groups: [group_staff], staff_number: "01", is_manager: true, career_path: "management", organization_id: 1)
  
  department = Department.create(name: "Ruby Space", description: "ABC DEF GH JKL MNO", manager_id: manage_user.id, cds_template_id: cds_template.id, status: true)
  UsersDepartment.create(user_id: manage_user.id, department_id: department.id)
  
  test_user = User.create(full_name: "Nguyen Hai Dang", email: "dangnh@elarion.com", password: "123456", password_confirmation: "123456", user_groups: [group_staff], staff_number: "02", career_path: "technical", organization_id: 1, team_leader_id: manage_user.id)
  UsersDepartment.create(user_id: test_user.id, department_id: department.id)
  # UsersDepartment.where(user_id: test_user.id, department_id: department.id).first.update_attributes(is_actived: true)

  test_user1 = User.create(full_name: "Le Thi Ngoc Anh", email: "anhltn@elarion.com", password: "123456", password_confirmation: "123456", user_groups: [group_staff], staff_number: "03", career_path: "management", organization_id: 1, team_leader_id: manage_user.id)
  UsersDepartment.create(user_id: test_user1.id, department_id: department.id)

  # UsersDepartment.where(user_id: test_user1.id, department_id: department.id).first.update_attributes(is_actived: true)
  
  # UsersDepartment.where(user_id: manage_user.id, department_id: department.id).first.update_attributes(is_actived: true)
  
  # department.user_ids = [manage_user.id, test_user.id, test_user1.id]
  
  current_title = CurrentTitle.create(user_id: test_user.id)
  # instance = Instance.create(cds_template_id: cds_template.id, user_id: test_user.id ,status: "Active")
  # instance_term = InstancesTerm.create(term_id: term.id, instance_id: instance.id, attitude: "Good")

  # instance_competency1 = InstanceCompetency.create(level_ranking: "1-2", competency_id: com1.id, instances_term_id: instance_term.id )
  # instance_competency2 = InstanceCompetency.create(level_ranking: "1-2", competency_id: com2.id, instances_term_id: instance_term.id )
  # instance_competency3 = InstanceCompetency.create(level_ranking: "1-2", competency_id: com3.id, instances_term_id: instance_term.id )
  # instance_competency4 = InstanceCompetency.create(level_ranking: "1-2", competency_id: com4.id, instances_term_id: instance_term.id )
  # instance_competency5 = InstanceCompetency.create(level_ranking: "1-2", competency_id: com5.id, instances_term_id: instance_term.id )
  # instance_other_sub_eng = InstancesTermsOtherSubject.create(other_subject_id: scoring_scale_for_english.id, instances_term_id: instance_term.id, score: "3")
  # instance_other_sub_exp = InstancesTermsOtherSubject.create(other_subject_id: scoring_scale_for_working_exp.id, instances_term_id: instance_term.id, score: "3")
  # instance_other_sub_ba = InstancesTermsOtherSubject.create(other_subject_id: scoring_scale_for_ba.id, instances_term_id: instance_term.id, score: "2")
  # instance_other_sub_test = InstancesTermsOtherSubject.create(other_subject_id: scoring_scale_for_testing.id, instances_term_id: instance_term.id, score: "3")
  # instance_other_sub_tech = InstancesTermsOtherSubject.create(other_subject_id: other_subject_technique.id, instances_term_id: instance_term.id, score: "3")

  # slot_assess_1 = SlotAssess.create(value: "3", slot_id: slot1a_level1_com1.id, status: "Not Assessed Yet", user_id: test_user.id)
  #   evidence_1 = Evidence.create(content: "Work well under supervisor", slot_assess_id: slot_assess_1.id)
  #     comment_1 = Comment.create(comment: "I believe I can fly", user_id: test_user.id, evidence_id: evidence_1.id )
  #     comment_2 = Comment.create(comment: "I believe I can roar", user_id: test_user.id, evidence_id: evidence_1.id )
  #     comment_3 = Comment.create(comment: "I believe I can swim", user_id: test_user.id, evidence_id: evidence_1.id )

  #   evidence_2 = Evidence.create(content: "Work not well under supervisor", slot_assess_id: slot_assess_1.id )
  #     comment_4 = Comment.create(comment: "I believe I can fly", user_id: test_user.id, evidence_id: evidence_2.id )
  #     comment_5 = Comment.create(comment: "I believe I can roar", user_id: test_user.id, evidence_id: evidence_2.id )
  #     comment_6 = Comment.create(comment: "I believe I can swim", user_id: test_user.id, evidence_id: evidence_2.id )

  # slot_assess_2 = SlotAssess.create(value: "3", slot_id: slot1a_level1_com5.id, status: "Not Assessed Yet", user_id: test_user.id)
  #   evidence_3 = Evidence.create(content: "Music", slot_assess_id: slot_assess_2.id )
  #     comment_7 = Comment.create(comment: "Pop", user_id: test_user.id, evidence_id: evidence_3.id )
  #     comment_8 = Comment.create(comment: "Rap", user_id: test_user.id, evidence_id: evidence_3.id )
  #     comment_9 = Comment.create(comment: "Dance", user_id: test_user.id, evidence_id: evidence_3.id )

  # slot_assess_3 = SlotAssess.create(value: "4", slot_id: slot2a_level2_com3.id, status: "Not Assessed Yet", user_id: test_user.id)
  #   evidence_4 = Evidence.create(content: "Game", slot_assess_id: slot_assess_3.id )
  #     comment_10 = Comment.create(comment: "COD", user_id: test_user.id, evidence_id: evidence_4.id )
  #     comment_11 = Comment.create(comment: "LOL", user_id: test_user.id, evidence_id: evidence_4.id )
  #     comment_12 = Comment.create(comment: "Mario", user_id: test_user.id, evidence_id: evidence_4.id )

  # slot_assess_4 = SlotAssess.create(value: "5", slot_id: slot2a_level2_com1.id, status: "Not Assessed Yet", user_id: test_user.id)
  #   evidence_5 = Evidence.create(content: "Human", slot_assess_id: slot_assess_4.id )
  #     comment_13 = Comment.create(comment: "Man", user_id: test_user.id, evidence_id: evidence_5.id )
  #     comment_14 = Comment.create(comment: "Woman", user_id: test_user.id, evidence_id: evidence_5.id )
  #     comment_15 = Comment.create(comment: "Child", user_id: test_user.id, evidence_id: evidence_5.id )

  # slot_assess_5 = SlotAssess.create(value: "1", slot_id: slot4a_level4_com4.id, status: "Not Assessed Yet", user_id: test_user.id)
  #   evidence_6 = Evidence.create(content: "Music", slot_assess_id: slot_assess_5.id )
  #     comment_16 = Comment.create(comment: "Pop", user_id: test_user.id, evidence_id: evidence_6.id )
  #     comment_17 = Comment.create(comment: "Rap", user_id: test_user.id, evidence_id: evidence_6.id )
  #     comment_18 = Comment.create(comment: "Dance", user_id: test_user.id, evidence_id: evidence_6.id )

end


if ENV['RAILS_ENV'] == "test"
  user_mgt_group = UserGroup.create({
    name: "Manage User",
    permissions: [Permission.find_by_code("user_management")]
  })

  group_mgt_group = UserGroup.create({
    name: "Manage Group",
    permissions: [Permission.find_by_code("group_management")]
  })

  none_group = UserGroup.create({
    name: "None Group"
  })

  users = [{
    first_name: 'Test',
    last_name: 'Test',
    # username: 'mgt_user',
    password: '1qazxsw2',
    password_confirmation: "1qazxsw2",
    user_groups: [user_mgt_group]
  },{
    first_name: 'Test',
    last_name: 'Test',
    # username: 'mgt_group',
    password: '1qazxsw2',
    password_confirmation: "1qazxsw2",
    user_groups: [group_mgt_group]
  },{
    first_name: 'Test',
    last_name: 'Test',
    # username: 'mgt_none',
    password: '1qazxsw2',
    password_confirmation: "1qazxsw2",
    user_groups: [none_group]
  }]

  User.create(users)
end