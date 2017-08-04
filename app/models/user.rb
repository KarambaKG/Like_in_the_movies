class User < ApplicationRecord
  belongs_to :role
  belongs_to :command, optional: true

  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" },
                    default_url: "/images/missing/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def active_for_authentication?
    super && status == 'active'
  end

  def inactive_message
    if status == 'not_active'
      :not_approved
    else
      super # Use whatever other message
    end
  end

  after_update :send_email_if_status_active

  private

  def send_email_if_status_active
    if self.status_was == 'not_active' && status == 'active'
      ToAdminMailer.confirm_alert(self).deliver_now
    end
  end

end
