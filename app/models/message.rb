class Task < ApplicationRecord
    validates :content, presence: true, length: { maximum: 10 }
     validates :status presence: true, length: { maximum: 255 }
 def message_params
    params.require(:task).permit(:content, :status)
end
