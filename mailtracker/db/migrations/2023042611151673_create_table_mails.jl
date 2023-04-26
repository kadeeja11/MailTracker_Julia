module CreateTableMails

import SearchLight.Migrations: create_table, column, columns, pk, add_index, drop_table, add_indices

function up()
  create_table(:mails) do
    [
      pk()
      # column(:column_name, :column_type)
      columns([
        :mailid => :string
        :name => :string
        :organization => :string
        :count => :int
      ])
    ]
  end

end

function down()
  drop_table(:mails)
end

end
