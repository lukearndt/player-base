call rails g model EmergencyContact first_name last_name phone_number email_address member:belongs_to ended_on:datetime

call rails g model EquipmentItem condition equipment_type:belongs_to ended_on:datetime

call rails g model EquipmentLoan participation:belongs_to equipment_item:belongs_to ended_on:datetime

call rails g model EquipmentType name description manufacturer:belongs_to ended_on:datetime

call rails g model Game game_type:belongs_to location:belongs_to ended_on:datetime

call rails g model GameType name description ended_on:datetime

call rails g model Location name description street_address ended_on:datetime

call rails g model Manufacturer name description phone_number email_address website ended_on:datetime

call rails g model Member first_name last_name phone_number email_address balance:decimal ended_on:datetime

call rails g model Participation game:belongs_to role:belongs_to team:belongs_to ended_on:datetime

call rails g model Role member:belongs_to role_type:belongs_to ended_on:datetime

call rails g model RoleType name description ended_on:datetime

call rails g model Team name description ended_on:datetime

call rails g model TeamMembership team:belongs_to role:belongs_to ended_on:datetime

call rails g model Wage amount:decimal game_type:belongs_to role_type:belongs_to ended_on:datetime