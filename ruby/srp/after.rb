def populate
  project = Project.create(name: 'Dentist')

  sheet_patient = Sheet.create!(title: 'Patient', position: 1, project: project)

  group_main = Group.create!(title: 'Main', position: 1, sheet: patient_sheet, project: project)
  Column.create!(title: 'CPF', type: :string, position: 1, sheet: sheet_patient, group: group_main, project: project)
  Column.create!(title: 'Name', type: :string, position: 2, sheet: sheet_patient, group: group_main, project: project)
  Column.create!(title: 'Age', type: :integer, position: 3, sheet: sheet_patient, group: group_main, project: project)
  genders = ['male', 'female', 'other']
  Column.create!(title: 'Gender', type: :drop, options: genders, position: 4, sheet: sheet_patient, group: group_main, project: project)
  statuses = ['new', 'returning', 'active', 'inactive', 'scheduled', 'emergency', 'treatment-completed', 'pending treatment', 'consultation', 'insurance verification']
  Column.create!(title: 'Status', type: :status, options: statuses, position: 5, sheet: sheet_patient, group: group_main, project: project)

  group_extra = Group.create!(title: 'Extra', position: 2, sheet: patient_sheet, project: project)
  ethnicities = ['african', 'asian', 'european', 'indigenous', 'middle eastern', 'latinx', 'hispanic', 'pacific islander', 'multiracial']
  Column.create!(title: 'Ethnicity', type: :drop, options: ethnicities, position: 6, sheet: sheet_patient, group: group_extra, project: project)
  social_classes = ['upper class', 'upper middle class', 'middle class', 'lower middle class', 'working class', 'lower class', 'underclass']
  Column.create!(title: 'Social Class', type: :drop, options: social_classes, position: 7, sheet: sheet_patient, group: group_extra, project: project)
  Column.create!(title: 'Profession', type: :string, position: 8, sheet: sheet_patient, group: group_extra, project: project)
  Column.create!(title: 'Situation', type: :text, position: 9, sheet: sheet_patient, group: group_extra, project: project)

  Record.create!({
    cpf: '12345678900',
    name: 'Edimar',
    age: 36,
    gender: 'male',
    status: 'new',
    ethnicity: 'hispanic',
    social_class: 'upper class',
    profession: 'God',
    situation: %(Omnipotence, omniscience, and omnipresence, which have been explored
      across various philosophical and theological perspectives),
    sheet: sheet_patient,
    project: project
  })
  Record.create!({
    cpf: '98765432100',
    name: 'Maria',
    age: 50,
    gender: 'female',
    status: 'emergency',
    ethnicity: 'indigenous',
    social_class: 'working class',
    profession: 'Retired',
    situation: %(Maria has had a longstanding relationship with the doctors at the
      dentist company for the past 10 years, establishing a rapport built
      on trust and familiarity. Over this period, Maria has likely experienced consistent care,
      developing a close bond with the dental professionals who have attended to her needs.
      Whether as a loyal patient or in another capacity, her decade-long connection
      suggests that she values the expertise and personalized attention
      she receives from the doctors.),
    sheet: sheet_patient,
    project: project
  })
end

def setup_log(project:, record_label: :name)
  log_item(item: project, label: :name, prefix: '')
  project.sheets.each do |sheet|
    log_item(item: sheet, label: :title, prefix: '↳ ')
    sheet.groups.each do |group|
      log_item(item: group, label: :title, prefix: '  ↳ ')
      group.columns.each do |column|
        log_item(item: column, label: :title, prefix: '    ↳ ')
      end
    end
    sheet.records.each do |record|
      log_item(item: record, label: :name, prefix: ' 🐣 ')
    end
  end
end

def log_item(item:, label: :title, prefix: '')
  name = item.send(label)
  puts "#{prefix}#{item.class} ID (#{name.green}#{"):".blueish} #{item.id.to_s.blue}".blueish
end

# SRP (Single Responsibility Principle)
#  ↳ 1. Method `populate` → Populate responsibility
#  ↳ 2. Method `setup_log` → Log responsibility
