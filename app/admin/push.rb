ActiveAdmin.register Push do
  permit_params :title, :message, :ptype

  form do |f|
    f.inputs do
      f.input :title
      f.input :message
      f.input :ptype, collection: [['Buy', 'buy'], ['Sell', 'sell']]
    end
    f.actions
  end
end
