def populate
  project = Project.create(name: 'Dentist')
  log_item(item: project, label: :name, prefix: '')

  sheet_patient = Sheet.create!(title: 'Patient', position: 1, project: project)
  log_item(item: sheet_patient, label: :title, prefix: '↳ ')

  group_main = Group.create!(title: 'Main', position: 1, sheet: patient_sheet, project: project)
  log_item(item: group_main, label: :title, prefix: '  ↳ ')
  column_cpf = Column.create!(title: 'CPF', type: :string, position: 1, sheet: sheet_patient, group: group_main, project: project)
  log_item(item: column_cpf, label: :title, prefix: '    ↳ ')
  column_name = Column.create!(title: 'Name', type: :string, position: 2, sheet: sheet_patient, group: group_main, project: project)
  log_item(item: column_name, label: :title, prefix: '    ↳ ')
  column_age = Column.create!(title: 'Age', type: :integer, position: 3, sheet: sheet_patient, group: group_main, project: project)
  log_item(item: column_age, label: :title, prefix: '    ↳ ')
  genders = ['male', 'female', 'other']
  column_gender = Column.create!(title: 'Gender', type: :drop, options: genders, position: 4, sheet: sheet_patient, group: group_main, project: project)
  log_item(item: column_gender, label: :title, prefix: '    ↳ ')
  statuses = ['new', 'returning', 'active', 'inactive', 'scheduled', 'emergency', 'treatment-completed', 'pending treatment', 'consultation', 'insurance verification']
  column_status = Column.create!(title: 'Status', type: :status, options: statuses, position: 5, sheet: sheet_patient, group: group_main, project: project)
  log_item(item: column_status, label: :title, prefix: '    ↳ ')

  group_extra = Group.create!(title: 'Extra', position: 2, sheet: patient_sheet, project: project)
  log_item(item: group_extra, label: :title, prefix: '  ↳ ')
  ethnicities = ['african', 'asian', 'european', 'indigenous', 'middle eastern', 'latinx', 'hispanic', 'pacific islander', 'multiracial']
  column_ethnicity = Column.create!(title: 'Ethnicity', type: :drop, options: ethnicities, position: 6, sheet: sheet_patient, group: group_extra, project: project)
  log_item(item: column_ethnicity, label: :title, prefix: '    ↳ ')
  social_classes = ['upper class', 'upper middle class', 'middle class', 'lower middle class', 'working class', 'lower class', 'underclass']
  column_social_class = Column.create!(title: 'Social Class', type: :drop, options: social_classes, position: 7, sheet: sheet_patient, group: group_extra, project: project)
  log_item(item: column_social_class, label: :title, prefix: '    ↳ ')
  column_profession = Column.create!(title: 'Profession', type: :string, position: 8, sheet: sheet_patient, group: group_extra, project: project)
  log_item(item: column_profession, label: :title, prefix: '    ↳ ')
  column_situation = Column.create!(title: 'Situation', type: :text, position: 9, sheet: sheet_patient, group: group_extra, project: project)
  log_item(item: column_situation, label: :title, prefix: '    ↳ ')

  edimar = Record.create!({
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
  log_item(item: edimar, label: :name, prefix: ' 🐣 ')
  maria = Record.create!({
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
  log_item(item: maria, label: :name, prefix: ' 🐣 ')
end

def log_item(item:, label: :title, prefix: '')
  name = item.send(label)
  puts "#{prefix}#{item.class} ID (#{name.green}#{"):".blueish} #{item.id.to_s.blue}".blueish
end
