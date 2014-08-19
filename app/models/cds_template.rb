class CdsTemplate < ActiveRecord::Base
	attr_accessible :name, :status, :title_group_id, :scoring_scale_id, :competency_ids

  belongs_to :title_group
  belongs_to :scoring_scale
  
  has_many :titles_competencies
  has_many :competencies, through: :titles_competencies
  has_many :titles, through: :titles_competencies

  has_many :titles_other_subjects
  has_many :other_subjects, through: :titles_other_subjects
  has_many :titles, through: :titles_other_subjects

  has_many :cds_templates_competencies
  has_many :competencies, through: :cds_templates_competencies

  has_many :departments


  scope :search_name, lambda { |search| where("lower(name) like ?", "%" + search + "%") }

  def self.get_all_cds_template(page, per_page, search, sort = nil)
    sort ||= "id"
    search = search.downcase || ""
    cds_templates = CdsTemplate.order(sort).search_name(search).paginate(:page => page, :per_page => per_page)

    return_data = {
      "aaData" => [],
      "iTotalDisplayRecords" => cds_templates.length
    }

    no = per_page.to_i * (page.to_i-1) + 1
    cds_templates.each do |cds_template|
        a = {}
        a[:no] = no
        a[:name] = cds_template.name
        a[:date_created] = cds_template.created_at.strftime("%d-%m-%Y")
        a[:status] = cds_template.status
        a[:id] = cds_template.id
        no += 1

        return_data["aaData"] << a
    end

    return return_data
  end
end
