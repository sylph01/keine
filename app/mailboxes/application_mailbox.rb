class ApplicationMailbox < ActionMailbox::Base
  routing /^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}@/i => :registration
  routing /^sylph01@/i => :greet
end
