class BlacklistedEmailValidator < ActiveModel::EachValidator #

  FORBIDDEN_EMAILS = ['nguser@example.com']

  def validate_each(record, attribute, value) #
    record.errors[attribute] << 'is forbidden' if forbidden?(value) #
  end

  private

  def forbidden?(email)
    FORBIDDEN_EMAILS.include?(email)
  end
end
