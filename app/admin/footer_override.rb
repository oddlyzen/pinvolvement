class MyFooter < ActiveAdmin::Component
  def build(namespace)
    super(id: "footer")
    para "- Copyright #{Date.today.year} - HW Lochner -"
  end
end

ActiveAdmin.setup do |config|
  config.view_factory.footer = MyFooter
end