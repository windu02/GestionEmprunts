class AddMaterialtypeAndOsAndNameAndVersionAndMemoryAndRamAndProcessorfrequencyAndSerialnumberAndGuaranteeendAndAnomalyAndWhoboughtToMaterials < ActiveRecord::Migration
  def change
    add_column :materials, :materialtype, :string
    add_column :materials, :os, :string
    add_column :materials, :name, :string
    add_column :materials, :version, :string
    add_column :materials, :memory, :integer
    add_column :materials, :ram, :integer
    add_column :materials, :processorfrequency, :float
    add_column :materials, :serialnumber, :string
    add_column :materials, :guaranteeend, :date
    add_column :materials, :anomaly, :string
    add_column :materials, :whobought, :string
  end
end
