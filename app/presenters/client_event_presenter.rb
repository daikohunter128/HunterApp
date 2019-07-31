class ClientEventPresenter < ModelPresenter
  delegate :member, :description, :occurred_at, to: :object
  
  def table_raw
    markup(:tr) do |m|
      unless view_context.instance_variable_get(:@client)
        m.td do
          m << link_to(member.company_name,
            [ :admin, member, :client_events ])
        end
      end
      m.td description
      m.td(:class => 'date') do
        m.text occurred_at.strftime('%Y/%m/%d %H:%M:%S')
      end
    end
  end
end