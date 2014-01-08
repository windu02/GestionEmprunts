class AddCdateAndBeginhourAndEndhourAndPrecisehourToComplexdates < ActiveRecord::Migration
  def change
    add_column :complexdates, :cdate, :date
    add_column :complexdates, :beginhour, :time
    add_column :complexdates, :endhour, :time
    add_column :complexdates, :precisehour, :time
  end
end
