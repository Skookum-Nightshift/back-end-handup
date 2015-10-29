ActiveAdmin.register PaymentMethod do

permit_params :cardnumber, :ccv, :expdate, :cardmembername


form do |f|
    f.inputs "Payment Method" do
      f.input :cardnumber
      f.input :ccv
      f.input :expdate
      f.input :cardmembername
    end
    f.actions
  end

end
