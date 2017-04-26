class Task < ApplicationRecord
  validates :content, presence: true, length: { maximum: 10 }
  validates :status, presence: true, length: { maximum: 10 }
def task_params
params.require(:task).permit(:content, :status)
end
end
