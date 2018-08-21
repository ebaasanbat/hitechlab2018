ActiveAdmin.register Note do
index do
  selectable_column
  column "名前", :user
  column "作成日", :created_at
  column "タイトル", :title
  column "本文", :content do |object|
  	object.content.slice(0,50)
  end
  actions
end


filter :created_at
end

